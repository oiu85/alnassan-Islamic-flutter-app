import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import '../bloc/sound_library_bloc.dart';
import '../bloc/sound_library_state.dart';
import '../bloc/sound_library_event.dart';
import '../../data/services/sound_file_type_util.dart';

/// Global audio player widget that displays a floating circular button
/// when audio is playing. The button persists across navigation and allows
/// play/pause control from anywhere in the app.
class GlobalAudioPlayer extends StatelessWidget {
  final Widget child;

  const GlobalAudioPlayer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SoundLibraryBloc, SoundLibraryState>(
      builder: (context, state) {
        // Find if there's any audio currently playing or paused
        final playingEntry = _findActiveAudioEntry(state);
        
        // If no active audio, just show the child
        if (playingEntry == null) {
          return child;
        }

        final soundId = playingEntry.key;
        final audioState = playingEntry.value;

        return Stack(
          children: [
            child,
            // Floating circular button positioned at bottom right
            Positioned(
              left: 16.w,
              bottom: 80.h,
              child: _buildFloatingAudioButton(
                context,
                soundId,
                audioState,
              ),
            ),
          ],
        );
      },
    );
  }

  /// Find the first audio entry that has meaningful state
  /// (playing, paused, or has duration loaded)
  MapEntry<String, AudioPlayerState>? _findActiveAudioEntry(SoundLibraryState state) {
    for (var entry in state.audioPlayerStates.entries) {
      final audioState = entry.value;
      // Consider audio active if it's playing, has been loaded, or has duration
      if (audioState.isPlaying || 
          audioState.duration > Duration.zero ||
          (audioState.currentUrl != null && audioState.currentUrl!.isNotEmpty)) {
        return entry;
      }
    }
    return null;
  }

  /// Builds the floating circular audio control button
  Widget _buildFloatingAudioButton(
    BuildContext context,
    String soundId,
    AudioPlayerState audioState,
  ) {
    final bloc = context.read<SoundLibraryBloc>();
    
    // Determine file type
    final fileType = audioState.soundFile != null 
        ? SoundFileTypeUtil.getFileType(audioState.soundFile)
        : SoundFileType.audio;
    
    // For non-audio files, show appropriate icon/message
    if (fileType == SoundFileType.compressed) {
      return _buildFileTypeIndicator(
        context,
        'ملف مضغوط',
        Icons.archive,
        Colors.orange,
      );
    }
    
    if (fileType == SoundFileType.realMedia) {
      return _buildFileTypeIndicator(
        context,
        'ريل ميديا',
        Icons.video_library,
        Colors.purple,
      );
    }
    
    // For regular audio files, show play/pause button
    return GestureDetector(
      onTap: () => _handleButtonTap(context, soundId, audioState, bloc),
      child: Container(
        width: 60.w,
        height: 60.h,
        decoration: BoxDecoration(
          color: AppColors.primary,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.3),
              blurRadius: 8.r,
              offset: Offset(0, 4.h),
            ),
          ],
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Loading indicator
            if (audioState.isLoading || audioState.isDownloading)
              SizedBox(
                width: 40.w,
                height: 40.h,
                child: CircularProgressIndicator(
                  strokeWidth: 3.w,
                  valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              ),
            
            // Play/Pause icon
            if (!audioState.isLoading && !audioState.isDownloading)
              Icon(
                audioState.isPlaying ? Icons.pause : Icons.play_arrow,
                size: 32.f,
                color: Colors.white,
              ),
            
            // Small progress indicator around the button
            if (audioState.duration > Duration.zero)
              Positioned.fill(
                child: CircularProgressIndicator(
                  value: audioState.duration.inMilliseconds > 0
                      ? audioState.position.inMilliseconds / 
                        audioState.duration.inMilliseconds
                      : 0.0,
                  strokeWidth: 3.w,
                  valueColor: const AlwaysStoppedAnimation<Color>(Colors.white70),
                  backgroundColor: Colors.white24,
                ),
              ),
          ],
        ),
      ),
    );
  }

  /// Builds a file type indicator for non-playable files
  Widget _buildFileTypeIndicator(
    BuildContext context,
    String label,
    IconData icon,
    Color color,
  ) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.3),
            blurRadius: 8.r,
            offset: Offset(0, 4.h),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            size: 24.f,
            color: Colors.white,
          ),
          SizedBox(width: 8.w),
          Text(
            label,
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: 14.f,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  /// Handles tap on the floating button
  void _handleButtonTap(
    BuildContext context,
    String soundId,
    AudioPlayerState audioState,
    SoundLibraryBloc bloc,
  ) {
    if (audioState.isLoading || audioState.isDownloading) {
      return; // Don't do anything while loading
    }

    // Toggle play/pause
    if (audioState.isPlaying) {
      bloc.add(PauseAudioEvent(soundId: soundId));
    } else {
      bloc.add(PlayAudioEvent(soundId: soundId));
    }
  }
}

/// Extended version with sound info display
class GlobalAudioPlayerExtended extends StatelessWidget {
  final Widget child;

  const GlobalAudioPlayerExtended({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SoundLibraryBloc, SoundLibraryState>(
      builder: (context, state) {
        // Find if there's any audio currently playing or paused
        final playingEntry = _findActiveAudioEntry(state);
        
        // If no active audio, just show the child
        if (playingEntry == null) {
          return child;
        }

        final soundId = playingEntry.key;
        final audioState = playingEntry.value;

        return Stack(
          children: [
            child,
            // Floating audio player bar at bottom
            Positioned(
              left: 16.w,
              right: 16.w,
              bottom: 80.h,
              child: _buildFloatingAudioBar(
                context,
                soundId,
                audioState,
              ),
            ),
          ],
        );
      },
    );
  }

  /// Find the first audio entry that has meaningful state
  MapEntry<String, AudioPlayerState>? _findActiveAudioEntry(SoundLibraryState state) {
    for (var entry in state.audioPlayerStates.entries) {
      final audioState = entry.value;
      if (audioState.isPlaying || 
          audioState.duration > Duration.zero ||
          (audioState.currentUrl != null && audioState.currentUrl!.isNotEmpty)) {
        return entry;
      }
    }
    return null;
  }

  /// Builds a floating audio player bar with info and controls
  Widget _buildFloatingAudioBar(
    BuildContext context,
    String soundId,
    AudioPlayerState audioState,
  ) {
    final bloc = context.read<SoundLibraryBloc>();
    
    // Determine file type
    final fileType = audioState.soundFile != null 
        ? SoundFileTypeUtil.getFileType(audioState.soundFile)
        : SoundFileType.audio;
    
    // Different UI for different file types
    Color backgroundColor = Colors.white;
    String statusText = 'جاري التشغيل';
    IconData? typeIcon;
    
    if (fileType == SoundFileType.compressed) {
      backgroundColor = Colors.orange.shade50;
      statusText = 'ملف مضغوط - للتحميل فقط';
      typeIcon = Icons.archive;
    } else if (fileType == SoundFileType.realMedia) {
      backgroundColor = Colors.purple.shade50;
      statusText = 'ملف ريل ميديا';
      typeIcon = Icons.video_library;
    }
    
    return Material(
      elevation: 8,
      borderRadius: BorderRadius.circular(30.r),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(30.r),
          border: Border.all(
            color: AppColors.primary.withValues(alpha: 0.3),
            width: 2.w,
          ),
        ),
        child: Row(
          children: [
            // Play/Pause button or file type icon
            GestureDetector(
              onTap: fileType == SoundFileType.audio 
                  ? () => _handleButtonTap(context, soundId, audioState, bloc)
                  : null,
              child: Container(
                width: 48.w,
                height: 48.h,
                decoration: BoxDecoration(
                  color: fileType == SoundFileType.audio 
                      ? AppColors.primary
                      : (fileType == SoundFileType.compressed 
                          ? Colors.orange 
                          : Colors.purple),
                  shape: BoxShape.circle,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    if (audioState.isLoading || audioState.isDownloading)
                      SizedBox(
                        width: 30.w,
                        height: 30.h,
                        child: CircularProgressIndicator(
                          strokeWidth: 2.w,
                          valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                        ),
                      ),
                    if (!audioState.isLoading && !audioState.isDownloading)
                      Icon(
                        typeIcon ?? (audioState.isPlaying ? Icons.pause : Icons.play_arrow),
                        size: 28.f,
                        color: Colors.white,
                      ),
                  ],
                ),
              ),
            ),
            
            SizedBox(width: 12.w),
            
            // Audio info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    audioState.soundTitle ?? statusText,
                    style: TextStyle(
                      fontFamily: FontFamily.tajawal,
                      fontSize: 12.f,
                      color: AppColors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                    textDirection: TextDirection.rtl,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 2.h),
                  if (fileType == SoundFileType.audio && audioState.duration > Duration.zero)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          _formatDuration(audioState.position),
                          style: TextStyle(
                            fontFamily: FontFamily.tajawal,
                            fontSize: 10.f,
                            color: AppColors.grey,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8.w),
                            child: LinearProgressIndicator(
                              value: audioState.duration.inMilliseconds > 0
                                  ? audioState.position.inMilliseconds / 
                                    audioState.duration.inMilliseconds
                                  : 0.0,
                              backgroundColor: AppColors.grey.withValues(alpha: 0.2),
                              valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
                              minHeight: 3.h,
                            ),
                          ),
                        ),
                        Text(
                          _formatDuration(audioState.duration),
                          style: TextStyle(
                            fontFamily: FontFamily.tajawal,
                            fontSize: 10.f,
                            color: AppColors.grey,
                          ),
                        ),
                      ],
                    ),
                  if (fileType != SoundFileType.audio)
                    Text(
                      statusText,
                      style: TextStyle(
                        fontFamily: FontFamily.tajawal,
                        fontSize: 10.f,
                        color: AppColors.grey,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Handles tap on the floating button
  void _handleButtonTap(
    BuildContext context,
    String soundId,
    AudioPlayerState audioState,
    SoundLibraryBloc bloc,
  ) {
    if (audioState.isLoading || audioState.isDownloading) {
      return;
    }

    if (audioState.isPlaying) {
      bloc.add(PauseAudioEvent(soundId: soundId));
    } else {
      bloc.add(PlayAudioEvent(soundId: soundId));
    }
  }

  /// Formats duration to mm:ss
  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return '$minutes:$seconds';
  }
}

