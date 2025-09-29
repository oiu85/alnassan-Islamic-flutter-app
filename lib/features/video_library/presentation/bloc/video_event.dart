import 'package:equatable/equatable.dart';

abstract class VideoEvent extends Equatable {
  const VideoEvent();

  @override
  List<Object?> get props => [];
}

/// Event to fetch videos with pagination
class FetchVideosEvent extends VideoEvent {
  final String sort;
  final int page;
  final int perpage;

  const FetchVideosEvent({
    this.sort = '-video_priority',
    this.page = 1,
    this.perpage = 8,
  });

  @override
  List<Object?> get props => [sort, page, perpage];
}

/// Event to load more videos (pagination)
class LoadMoreVideosEvent extends VideoEvent {
  const LoadMoreVideosEvent();
}

/// Event to refresh videos (reset to first page)
class RefreshVideosEvent extends VideoEvent {
  const RefreshVideosEvent();
}

/// Event to change sort order
class ChangeSortEvent extends VideoEvent {
  final String sort;

  const ChangeSortEvent({required this.sort});

  @override
  List<Object?> get props => [sort];
}

/// Event to play a video
class PlayVideoEvent extends VideoEvent {
  final String videoId;
  final String videoUrl;

  const PlayVideoEvent({
    required this.videoId,
    required this.videoUrl,
  });

  @override
  List<Object?> get props => [videoId, videoUrl];
}

/// Event to stop video playback
class StopVideoEvent extends VideoEvent {
  const StopVideoEvent();
}

// Video Player Events
class InitializePlayerEvent extends VideoEvent {
  const InitializePlayerEvent({
    required this.videoId,
    required this.videoUrl,
  });

  final String videoId;
  final String videoUrl;

  @override
  List<Object?> get props => [videoId, videoUrl];
}

class PlayerReadyEvent extends VideoEvent {
  const PlayerReadyEvent();
}

class TogglePlayPauseEvent extends VideoEvent {
  const TogglePlayPauseEvent();
}

class VideoEndedEvent extends VideoEvent {
  const VideoEndedEvent();
}

class DisposePlayerEvent extends VideoEvent {
  const DisposePlayerEvent();
}
