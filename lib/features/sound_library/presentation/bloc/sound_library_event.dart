import 'package:equatable/equatable.dart';
import '../../data/model.dart';

abstract class SoundLibraryEvent extends Equatable {
  const SoundLibraryEvent();

  @override
  List<Object?> get props => [];
}

class FetchHierarchicalCategoriesEvent extends SoundLibraryEvent {
  const FetchHierarchicalCategoriesEvent();
}

class SelectLevel1CategoryEvent extends SoundLibraryEvent {
  final Level1RootCategory category;

  const SelectLevel1CategoryEvent({required this.category});

  @override
  List<Object?> get props => [category];
}

class NavigateToLevel2CategoryEvent extends SoundLibraryEvent {
  final Level2Category category;

  const NavigateToLevel2CategoryEvent({required this.category});

  @override
  List<Object?> get props => [category];
}

class NavigateToLevel3CategoryEvent extends SoundLibraryEvent {
  final Level3Category category;

  const NavigateToLevel3CategoryEvent({required this.category});

  @override
  List<Object?> get props => [category];
}

class NavigateToLevel4CategoryEvent extends SoundLibraryEvent {
  final Level4Category category;

  const NavigateToLevel4CategoryEvent({required this.category});

  @override
  List<Object?> get props => [category];
}

class ToggleDirectSoundsViewEvent extends SoundLibraryEvent {
  const ToggleDirectSoundsViewEvent();
}

class ResetSoundLibraryEvent extends SoundLibraryEvent {
  const ResetSoundLibraryEvent();
}

class RefreshSoundLibraryEvent extends SoundLibraryEvent {
  const RefreshSoundLibraryEvent();
}

class ShowAllSubcategorySoundsEvent extends SoundLibraryEvent {
  final dynamic subcategory; // Can be Level2Category, Level3Category, or Level4Category

  const ShowAllSubcategorySoundsEvent({required this.subcategory});

  @override
  List<Object?> get props => [subcategory];
}

// Audio player events
class LoadAudioEvent extends SoundLibraryEvent {
  final String soundId;
  final String audioUrl;
  final List<String>? alternativeUrls;

  const LoadAudioEvent({
    required this.soundId,
    required this.audioUrl,
    this.alternativeUrls,
  });

  @override
  List<Object?> get props => [soundId, audioUrl, alternativeUrls];
}

class PlayAudioEvent extends SoundLibraryEvent {
  final String soundId;

  const PlayAudioEvent({required this.soundId});

  @override
  List<Object?> get props => [soundId];
}

class PauseAudioEvent extends SoundLibraryEvent {
  final String soundId;

  const PauseAudioEvent({required this.soundId});

  @override
  List<Object?> get props => [soundId];
}

class StopAudioEvent extends SoundLibraryEvent {
  final String soundId;

  const StopAudioEvent({required this.soundId});

  @override
  List<Object?> get props => [soundId];
}

class UpdateAudioPositionEvent extends SoundLibraryEvent {
  final String soundId;
  final Duration position;

  const UpdateAudioPositionEvent({
    required this.soundId,
    required this.position,
  });

  @override
  List<Object?> get props => [soundId, position];
}

class SeekAudioEvent extends SoundLibraryEvent {
  final String soundId;
  final Duration position;

  const SeekAudioEvent({
    required this.soundId,
    required this.position,
  });

  @override
  List<Object?> get props => [soundId, position];
}

class UpdateAudioDurationEvent extends SoundLibraryEvent {
  final String soundId;
  final Duration duration;

  const UpdateAudioDurationEvent({
    required this.soundId,
    required this.duration,
  });

  @override
  List<Object?> get props => [soundId, duration];
}

class AudioErrorEvent extends SoundLibraryEvent {
  final String soundId;
  final String error;

  const AudioErrorEvent({
    required this.soundId,
    required this.error,
  });

  @override
  List<Object?> get props => [soundId, error];
}

class ResetAudioStateEvent extends SoundLibraryEvent {
  final String soundId;

  const ResetAudioStateEvent({required this.soundId});

  @override
  List<Object?> get props => [soundId];
}

class UpdateAudioPlayerStateEvent extends SoundLibraryEvent {
  final String soundId;
  final bool isPlaying;

  const UpdateAudioPlayerStateEvent({
    required this.soundId,
    required this.isPlaying,
  });

  @override
  List<Object?> get props => [soundId, isPlaying];
}

class DownloadAudioEvent extends SoundLibraryEvent {
  final String soundId;
  final String audioUrl;
  final String fileName;
  final String soundTitle;

  const DownloadAudioEvent({
    required this.soundId,
    required this.audioUrl,
    required this.fileName,
    required this.soundTitle,
  });

  @override
  List<Object?> get props => [soundId, audioUrl, fileName, soundTitle];
}

class ShowDownloadMessageEvent extends SoundLibraryEvent {
  final String message;
  final bool isSuccess;

  const ShowDownloadMessageEvent({
    required this.message,
    this.isSuccess = true,
  });

  @override
  List<Object?> get props => [message, isSuccess];
}

class UpdateDownloadProgressEvent extends SoundLibraryEvent {
  final String soundId;
  final double progress;
  final int downloadedBytes;
  final int totalBytes;

  const UpdateDownloadProgressEvent({
    required this.soundId,
    required this.progress,
    required this.downloadedBytes,
    required this.totalBytes,
  });

  @override
  List<Object?> get props => [soundId, progress, downloadedBytes, totalBytes];
}

// MusicPlayer specific events
class InitializeMusicPlayerEvent extends SoundLibraryEvent {
  final SoundData sound;

  const InitializeMusicPlayerEvent({required this.sound});

  @override
  List<Object?> get props => [sound];
}

class MusicPlayerTogglePlayPauseEvent extends SoundLibraryEvent {
  final String soundId;
  final SoundData sound;

  const MusicPlayerTogglePlayPauseEvent({
    required this.soundId,
    required this.sound,
  });

  @override
  List<Object?> get props => [soundId, sound];
}

class MusicPlayerSeekEvent extends SoundLibraryEvent {
  final String soundId;
  final double progress;

  const MusicPlayerSeekEvent({
    required this.soundId,
    required this.progress,
  });

  @override
  List<Object?> get props => [soundId, progress];
}

class MusicPlayerDownloadEvent extends SoundLibraryEvent {
  final SoundData sound;

  const MusicPlayerDownloadEvent({required this.sound});

  @override
  List<Object?> get props => [sound];
}
