import 'package:equatable/equatable.dart';
import '../../../../core/models/page_state/bloc_status.dart';
import '../../domain/model/video.dart';

class VideoState extends Equatable {
  final BlocStatus status;
  final List<Video> videos;
  final VideoPaginationInfo? pagination;
  final String? error;
  final String currentSort;
  final int currentPage;
  final bool hasReachedMax;
  final String? playingVideoId;
  final String? playingVideoUrl;
  
  // Video Player States
  final bool isPlayerReady;
  final bool isPlaying;
  final String? currentVideoId;
  final String? currentVideoUrl;

  const VideoState({
    this.status = const BlocStatus.initial(),
    this.videos = const [],
    this.pagination,
    this.error,
    this.currentSort = '-video_priority',
    this.currentPage = 1,
    this.hasReachedMax = false,
    this.playingVideoId,
    this.playingVideoUrl,
    this.isPlayerReady = false,
    this.isPlaying = false,
    this.currentVideoId,
    this.currentVideoUrl,
  });

  VideoState copyWith({
    BlocStatus? status,
    List<Video>? videos,
    VideoPaginationInfo? pagination,
    String? error,
    String? currentSort,
    int? currentPage,
    bool? hasReachedMax,
    String? playingVideoId,
    String? playingVideoUrl,
    bool? isPlayerReady,
    bool? isPlaying,
    String? currentVideoId,
    String? currentVideoUrl,
  }) {
    return VideoState(
      status: status ?? this.status,
      videos: videos ?? this.videos,
      pagination: pagination ?? this.pagination,
      error: error ?? this.error,
      currentSort: currentSort ?? this.currentSort,
      currentPage: currentPage ?? this.currentPage,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      playingVideoId: playingVideoId ?? this.playingVideoId,
      playingVideoUrl: playingVideoUrl ?? this.playingVideoUrl,
      isPlayerReady: isPlayerReady ?? this.isPlayerReady,
      isPlaying: isPlaying ?? this.isPlaying,
      currentVideoId: currentVideoId ?? this.currentVideoId,
      currentVideoUrl: currentVideoUrl ?? this.currentVideoUrl,
    );
  }

  @override
  List<Object?> get props => [
        status,
        videos,
        pagination,
        error,
        currentSort,
        currentPage,
        hasReachedMax,
        playingVideoId,
        playingVideoUrl,
        isPlayerReady,
        isPlaying,
        currentVideoId,
        currentVideoUrl,
      ];
}
