import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../../../core/models/page_state/bloc_status.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../../../../core/shared/wdigets/filter_button.dart';
import '../../domain/repository/video_repository.dart';
import '../../domain/model/video.dart';
import 'video_event.dart';
import 'video_state.dart';

@injectable
class VideoBloc extends Bloc<VideoEvent, VideoState> {
  final VideoRepository _videoRepository;
  YoutubePlayerController? _youtubeController;

  VideoBloc(this._videoRepository) : super(const VideoState()) {
    on<FetchVideosEvent>(_onFetchVideos);
    on<LoadMoreVideosEvent>(_onLoadMoreVideos);
    on<RefreshVideosEvent>(_onRefreshVideos);
    on<ChangeSortEvent>(_onChangeSort);
    on<PlayVideoEvent>(_onPlayVideo);
    on<StopVideoEvent>(_onStopVideo);
    
    // Video Player Events
    on<InitializePlayerEvent>(_onInitializePlayer);
    on<PlayerReadyEvent>(_onPlayerReady);
    on<TogglePlayPauseEvent>(_onTogglePlayPause);
    on<VideoEndedEvent>(_onVideoEnded);
    on<DisposePlayerEvent>(_onDisposePlayer);
  }

  // ===== FILTER BUTTON LOGIC =====
  /// Returns filter button options for pagination
  List<Map<String, dynamic>> getFilterButtonOptions() {
    final List<Map<String, dynamic>> options = [];
    
    // Add page options if there are multiple pages
    if (state.pagination != null && state.pagination!.lastPage > 1) {
      for (int i = 1; i <= state.pagination!.lastPage; i++) {
        options.add({
          'value': 'page_$i',
          'label': '$i',
        });
      }
    } else {
      // For debugging - add some test options
      for (int i = 1; i <= 3; i++) {
        options.add({
          'value': 'page_$i',
          'label': '$i',
        });
      }
    }
    
    return options;
  }

  /// Returns whether filter button should be shown
  bool shouldShowFilterButton() {
    return state.pagination != null && state.pagination!.lastPage > 1;
  }

  /// Returns the current selected page value for filter button
  String getCurrentPageValue() {
    return 'page_${state.currentPage}';
  }

  /// Returns the hint text for filter button
  String getFilterButtonHintText() {
    return '${state.currentPage}';
  }

  /// Builds the complete filter button widget
  Widget buildFilterButton({
    required BuildContext context,
    required String sort,
    required int perPage,
  }) {
    if (!shouldShowFilterButton()) {
      return const SizedBox.shrink();
    }
    
    final options = getFilterButtonOptions().map((option) => 
      FilterOption<String>(
        value: option['value'] as String,
        label: option['label'] as String,
      )
    ).toList();
    
    // Don't show filter button if no options available
    if (options.isEmpty) {
      return const SizedBox.shrink();
    }
    
    return FilterButton<String>(
      options: options,
      selectedValue: getCurrentPageValue(),
      label: 'اختر الصفحة',
      onChanged: state.status.isLoading() ? null : (value) {
        if (value != null && value.startsWith('page_')) {
          try {
            final page = int.parse(value.split('_')[1]);
            add(FetchVideosEvent(
              sort: sort,
              page: page,
              perpage: perPage,
            ));
          } catch (e) {
            AppLogger.error('Invalid page value in filter button: $value', e);
          }
        }
      },
      width: 60,
      hintText: getFilterButtonHintText(),
    );
  }

  Future<void> _onFetchVideos(
    FetchVideosEvent event,
    Emitter<VideoState> emit,
  ) async {
    AppLogger.business('Initiating video fetch', {
      'sort': event.sort,
      'page': event.page,
      'perpage': event.perpage,
    });

    emit(state.copyWith(
      status: const BlocStatus.loading(),
      error: null,
    ));

    final result = await _videoRepository.getVideos(
      sort: event.sort,
      page: event.page,
      perpage: event.perpage,
    );

    if (result.isLeft()) {
      // Error case
      final error = result.fold((l) => l, (r) => '');
      AppLogger.error('Video fetch error: $error');
      emit(state.copyWith(
        status: BlocStatus.fail(error: error),
        error: error,
      ));
      return;
    }

    // Success case
    final videos = result.fold((l) => <Video>[], (r) => r);
    AppLogger.business('Video fetch successful', {
      'count': videos.length,
    });

    // Get pagination info
    final paginationResult = await _videoRepository.getVideoPagination(
      sort: event.sort,
      page: event.page,
      perpage: event.perpage,
    );

    VideoPaginationInfo? pagination;
    if (paginationResult.isRight()) {
      pagination = paginationResult.fold((l) => null, (r) => r);
    } else {
      AppLogger.warning('Failed to fetch pagination info');
    }


    emit(state.copyWith(
      status: const BlocStatus.success(),
      videos: videos,
      pagination: pagination,
      currentSort: event.sort,
      currentPage: event.page,
      hasReachedMax: videos.length < event.perpage,
    ));
  }

  Future<void> _onLoadMoreVideos(
    LoadMoreVideosEvent event,
    Emitter<VideoState> emit,
  ) async {
    if (state.hasReachedMax || state.status.isLoading()) {
      return;
    }

    AppLogger.business('Loading more videos', {
      'currentPage': state.currentPage,
      'nextPage': state.currentPage + 1,
    });

    emit(state.copyWith(status: const BlocStatus.loadingMore()));

    final nextPage = state.currentPage + 1;
    final result = await _videoRepository.getVideos(
      sort: state.currentSort,
      page: nextPage,
      perpage: 8,
    );

    result.fold(
      // Left side - Error case
      (error) {
        AppLogger.error('Load more videos error: $error');
        emit(state.copyWith(
          status: BlocStatus.fail(error: error),
          error: error,
        ));
      },
      // Right side - Success case
      (newVideos) {
        AppLogger.business('Load more videos successful', {
          'newCount': newVideos.length,
          'totalCount': state.videos.length + newVideos.length,
        });

        final allVideos = [...state.videos, ...newVideos];
        emit(state.copyWith(
          status: const BlocStatus.success(),
          videos: allVideos,
          currentPage: nextPage,
          hasReachedMax: newVideos.length < 8,
        ));
      },
    );
  }

  Future<void> _onRefreshVideos(
    RefreshVideosEvent event,
    Emitter<VideoState> emit,
  ) async {
    AppLogger.business('Refreshing videos');
    
    add(FetchVideosEvent(
      sort: state.currentSort,
      page: 1,
      perpage: 8,
    ));
  }

  Future<void> _onChangeSort(
    ChangeSortEvent event,
    Emitter<VideoState> emit,
  ) async {
    AppLogger.business('Changing sort order', {
      'newSort': event.sort,
      'oldSort': state.currentSort,
    });

    add(FetchVideosEvent(
      sort: event.sort,
      page: 1,
      perpage: 8,
    ));
  }

  void _onPlayVideo(
    PlayVideoEvent event,
    Emitter<VideoState> emit,
  ) {
    AppLogger.business('Playing video', {
      'videoId': event.videoId,
      'videoUrl': event.videoUrl,
    });

    emit(state.copyWith(
      playingVideoId: event.videoId,
      playingVideoUrl: event.videoUrl,
    ));
  }

  void _onStopVideo(
    StopVideoEvent event,
    Emitter<VideoState> emit,
  ) {
    AppLogger.business('Stopping video');

    emit(state.copyWith(
      playingVideoId: null,
      playingVideoUrl: null,
    ));
  }

  // ===== VIDEO PLAYER EVENT HANDLERS =====
  
  void _onInitializePlayer(
    InitializePlayerEvent event,
    Emitter<VideoState> emit,
  ) {
    AppLogger.business('Initializing YouTube player', {
      'videoId': event.videoId,
      'videoUrl': event.videoUrl,
    });

    // Dispose existing controller if any
    _youtubeController?.dispose();

    // Create new controller
    _youtubeController = YoutubePlayerController(
      initialVideoId: event.videoId,
      flags: const YoutubePlayerFlags(
        autoPlay: false,
        mute: false,
        isLive: false,
        forceHD: true,
        enableCaption: true,
        hideControls: false,
        controlsVisibleAtStart: true,
        useHybridComposition: true,
      ),
    );

    // Add listener for player state changes
    _youtubeController!.addListener(() {
      if (_youtubeController!.value.playerState == PlayerState.ended) {
        add(const VideoEndedEvent());
      }
    });

    emit(state.copyWith(
      currentVideoId: event.videoId,
      currentVideoUrl: event.videoUrl,
      isPlayerReady: false,
      isPlaying: false,
    ));
  }

  void _onPlayerReady(
    PlayerReadyEvent event,
    Emitter<VideoState> emit,
  ) {
    AppLogger.business('YouTube player ready');
    emit(state.copyWith(isPlayerReady: true));
  }

  void _onTogglePlayPause(
    TogglePlayPauseEvent event,
    Emitter<VideoState> emit,
  ) {
    if (_youtubeController != null && state.isPlayerReady) {
      if (state.isPlaying) {
        _youtubeController!.pause();
        emit(state.copyWith(isPlaying: false));
        AppLogger.business('Video paused');
      } else {
        _youtubeController!.play();
        emit(state.copyWith(isPlaying: true));
        AppLogger.business('Video playing');
      }
    } else {
      AppLogger.warning('Cannot toggle play/pause - player not ready');
    }
  }

  void _onVideoEnded(
    VideoEndedEvent event,
    Emitter<VideoState> emit,
  ) {
    AppLogger.business('Video ended');
    emit(state.copyWith(isPlaying: false));
  }

  void _onDisposePlayer(
    DisposePlayerEvent event,
    Emitter<VideoState> emit,
  ) {
    AppLogger.business('Disposing YouTube player');
    _youtubeController?.dispose();
    _youtubeController = null;
    
    emit(state.copyWith(
      isPlayerReady: false,
      isPlaying: false,
      currentVideoId: null,
      currentVideoUrl: null,
    ));
  }

  // ===== GETTERS FOR UI =====
  
  /// Get YouTube player controller
  YoutubePlayerController? get youtubeController => _youtubeController;
  
  /// Check if player is ready
  bool get isPlayerReady => state.isPlayerReady;
  
  /// Check if video is playing
  bool get isPlaying => state.isPlaying;
}
