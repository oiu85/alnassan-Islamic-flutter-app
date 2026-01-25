import 'dart:async';
import 'package:audio_service/audio_service.dart';
import 'package:audioplayers/audioplayers.dart';
import '../model.dart';
import 'sound_file_type_util.dart';

/// Audio handler for sound library that integrates with audio_service
/// to enable background audio playback with system notifications
class SoundLibraryAudioHandler extends BaseAudioHandler with SeekHandler {
  final AudioPlayer _audioPlayer = AudioPlayer();
  MediaItem? _currentMediaItem;
  StreamSubscription<Duration>? _positionSubscription;
  StreamSubscription<Duration>? _durationSubscription;
  StreamSubscription<PlayerState>? _playerStateSubscription;
  
  bool _isInitialized = false;

  SoundLibraryAudioHandler() {
    // Initialize playback state
    playbackState.add(PlaybackState(
      controls: [],
      systemActions: const {
        MediaAction.seek,
      },
      androidCompactActionIndices: const [],
      processingState: AudioProcessingState.idle,
      playing: false,
      updatePosition: Duration.zero,
      speed: 1.0,
    ));
    
    _initializePlayer();
  }

  /// Initialize the audio player with proper configuration
  void _initializePlayer() {
    if (_isInitialized) return;
    
    _audioPlayer.setPlayerMode(PlayerMode.mediaPlayer);
    _audioPlayer.setAudioContext(AudioContext(
      android: AudioContextAndroid(
        isSpeakerphoneOn: true,
        stayAwake: true,
        contentType: AndroidContentType.music,
        usageType: AndroidUsageType.media,
        audioFocus: AndroidAudioFocus.gain,
      ),
    ));

    // Listen to position changes
    _positionSubscription = _audioPlayer.onPositionChanged.listen((position) {
      playbackState.add(playbackState.value.copyWith(
        updatePosition: position,
      ));
    });

    // Listen to duration changes
    _durationSubscription = _audioPlayer.onDurationChanged.listen((duration) {
      if (_currentMediaItem != null) {
        this.mediaItem.add(_currentMediaItem!.copyWith(duration: duration));
      }
      playbackState.add(playbackState.value.copyWith(
        updatePosition: playbackState.value.updatePosition,
      ));
    });

    // Listen to player state changes
    _playerStateSubscription = _audioPlayer.onPlayerStateChanged.listen((state) {
      final isPlaying = state == PlayerState.playing;
      final processingState = _getProcessingState(state);
      
      playbackState.add(playbackState.value.copyWith(
        playing: isPlaying,
        processingState: processingState,
        controls: _getControls(isPlaying),
      ));
    });

    _isInitialized = true;
  }

  /// Get processing state from player state
  AudioProcessingState _getProcessingState(PlayerState state) {
    switch (state) {
      case PlayerState.playing:
        return AudioProcessingState.ready;
      case PlayerState.paused:
        return AudioProcessingState.ready;
      case PlayerState.stopped:
        return AudioProcessingState.idle;
      case PlayerState.completed:
        return AudioProcessingState.completed;
      default:
        return AudioProcessingState.idle;
    }
  }

  /// Get media controls based on playing state
  List<MediaControl> _getControls(bool isPlaying) {
    return [
      MediaControl.stop,
      if (isPlaying) MediaControl.pause else MediaControl.play,
    ];
  }

  /// Build sound URL from SoundData
  String _buildSoundUrl(SoundData sound) {
    if (sound.soundFile == null) return "";
    final fileName = sound.soundFile!;
    final fileType = SoundFileTypeUtil.getFileType(fileName);
    
    if (fileType == SoundFileType.audio || fileType == SoundFileType.realMedia) {
      return "https://www.naasan.net/files/sound/$fileName";
    }
    return "";
  }

  /// Create MediaItem from SoundData
  MediaItem _createMediaItem(SoundData sound, String audioUrl) {
    return MediaItem(
      id: sound.soundId.toString(),
      title: sound.soundTitle,
      artist: sound.category?.catTitle ?? 'الشيخ احمد النعسان',
      duration: null, // Will be updated when audio loads
      artUri: sound.soundPicUrl != null 
          ? Uri.parse(sound.soundPicUrl!) 
          : null,
      extras: {
        'soundData': sound,
        'audioUrl': audioUrl,
      },
    );
  }

  @override
  Future<void> play() async {
    try {
      await _audioPlayer.resume();
      playbackState.add(playbackState.value.copyWith(
        playing: true,
        processingState: AudioProcessingState.ready,
        controls: _getControls(true),
      ));
    } catch (e) {
      print('Error in play(): $e');
      playbackState.add(playbackState.value.copyWith(
        processingState: AudioProcessingState.error,
      ));
    }
  }

  @override
  Future<void> pause() async {
    try {
      await _audioPlayer.pause();
      playbackState.add(playbackState.value.copyWith(
        playing: false,
        controls: _getControls(false),
      ));
    } catch (e) {
      print('Error in pause(): $e');
      playbackState.add(playbackState.value.copyWith(
        processingState: AudioProcessingState.error,
      ));
    }
  }

  @override
  Future<void> stop() async {
    try {
      await _audioPlayer.stop();
      _currentMediaItem = null;
      this.mediaItem.add(null);
      playbackState.add(playbackState.value.copyWith(
        playing: false,
        processingState: AudioProcessingState.idle,
        updatePosition: Duration.zero,
      ));
    } catch (e) {
      print('Error in stop(): $e');
    }
  }

  @override
  Future<void> seek(Duration position) async {
    try {
      await _audioPlayer.seek(position);
      playbackState.add(playbackState.value.copyWith(
        updatePosition: position,
      ));
    } catch (e) {
      print('Error in seek(): $e');
    }
  }

  @override
  Future<void> playMediaItem(MediaItem mediaItem) async {
    try {
      // Stop any currently playing audio
      await stop();
      
      // Get audio URL from extras or media item
      final audioUrl = mediaItem.extras?['audioUrl'] as String?;
      if (audioUrl == null || audioUrl.isEmpty) {
        throw Exception('No audio URL provided in MediaItem');
      }

      _currentMediaItem = mediaItem;
      
      // Update media item
      this.mediaItem.add(mediaItem);
      
      // Update playback state to loading
      playbackState.add(PlaybackState(
        controls: [MediaControl.stop],
        systemActions: const {
          MediaAction.seek,
        },
        androidCompactActionIndices: const [0],
        processingState: AudioProcessingState.loading,
        playing: false,
        updatePosition: Duration.zero,
      ));

      // Load the audio
      await _audioPlayer.setSourceUrl(audioUrl);
      
      // Update to buffering state
      playbackState.add(playbackState.value.copyWith(
        processingState: AudioProcessingState.buffering,
      ));
      
      // Get duration
      final duration = await _audioPlayer.getDuration();
      if (duration != null && _currentMediaItem != null) {
        this.mediaItem.add(_currentMediaItem!.copyWith(duration: duration));
      }

      // Start playing
      await _audioPlayer.resume();

      // Update playback state to ready
      playbackState.add(PlaybackState(
        controls: _getControls(true),
        systemActions: const {
          MediaAction.seek,
        },
        androidCompactActionIndices: const [0, 1],
        processingState: AudioProcessingState.ready,
        playing: true,
        updatePosition: Duration.zero,
        speed: 1.0,
      ));
    } catch (e) {
      print('Error in playMediaItem(): $e');
      _currentMediaItem = null;
      this.mediaItem.add(null);
      playbackState.add(PlaybackState(
        controls: [MediaControl.stop],
        systemActions: const {
          MediaAction.seek,
        },
        androidCompactActionIndices: const [0],
        processingState: AudioProcessingState.error,
        playing: false,
        updatePosition: Duration.zero,
      ));
      rethrow;
    }
  }

  /// Play sound from SoundData
  Future<void> playSound(SoundData sound, {List<String>? alternativeUrls}) async {
    final audioUrl = _buildSoundUrl(sound);
    if (audioUrl.isEmpty) {
      throw Exception('Invalid sound file: ${sound.soundFile}');
    }

    final mediaItem = _createMediaItem(sound, audioUrl);
    await playMediaItem(mediaItem);
  }

  /// Dispose resources
  @override
  Future<void> onTaskRemoved() async {
    await stop();
    await _cleanup();
    return super.onTaskRemoved();
  }

  /// Cleanup all subscriptions and resources
  Future<void> _cleanup() async {
    await _positionSubscription?.cancel();
    await _durationSubscription?.cancel();
    await _playerStateSubscription?.cancel();
    await _audioPlayer.dispose();
  }
}
