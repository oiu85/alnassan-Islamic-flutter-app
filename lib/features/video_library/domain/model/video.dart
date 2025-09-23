import 'package:equatable/equatable.dart';

/// Domain model for Video entity
class Video extends Equatable {
  final int videoId;
  final String videoTitle;
  final String videoSummary;
  final String videoDes;
  final String videoCatId;
  final String videoPic;
  final String videoVisitor;
  final String videoPriority;
  final String videoDate;
  final String videoActive;
  final String videoYoutubeId;
  final String videoFile;
  final String videoSource;
  final String videoSourceUrl;
  final String videoType;
  final String videoEmbedUrl;

  const Video({
    required this.videoId,
    required this.videoTitle,
    required this.videoSummary,
    required this.videoDes,
    required this.videoCatId,
    required this.videoPic,
    required this.videoVisitor,
    required this.videoPriority,
    required this.videoDate,
    required this.videoActive,
    required this.videoYoutubeId,
    required this.videoFile,
    required this.videoSource,
    required this.videoSourceUrl,
    required this.videoType,
    required this.videoEmbedUrl,
  });

  @override
  List<Object> get props => [
        videoId,
        videoTitle,
        videoSummary,
        videoDes,
        videoCatId,
        videoPic,
        videoVisitor,
        videoPriority,
        videoDate,
        videoActive,
        videoYoutubeId,
        videoFile,
        videoSource,
        videoSourceUrl,
        videoType,
        videoEmbedUrl,
      ];

  Video copyWith({
    int? videoId,
    String? videoTitle,
    String? videoSummary,
    String? videoDes,
    String? videoCatId,
    String? videoPic,
    String? videoVisitor,
    String? videoPriority,
    String? videoDate,
    String? videoActive,
    String? videoYoutubeId,
    String? videoFile,
    String? videoSource,
    String? videoSourceUrl,
    String? videoType,
    String? videoEmbedUrl,
  }) {
    return Video(
      videoId: videoId ?? this.videoId,
      videoTitle: videoTitle ?? this.videoTitle,
      videoSummary: videoSummary ?? this.videoSummary,
      videoDes: videoDes ?? this.videoDes,
      videoCatId: videoCatId ?? this.videoCatId,
      videoPic: videoPic ?? this.videoPic,
      videoVisitor: videoVisitor ?? this.videoVisitor,
      videoPriority: videoPriority ?? this.videoPriority,
      videoDate: videoDate ?? this.videoDate,
      videoActive: videoActive ?? this.videoActive,
      videoYoutubeId: videoYoutubeId ?? this.videoYoutubeId,
      videoFile: videoFile ?? this.videoFile,
      videoSource: videoSource ?? this.videoSource,
      videoSourceUrl: videoSourceUrl ?? this.videoSourceUrl,
      videoType: videoType ?? this.videoType,
      videoEmbedUrl: videoEmbedUrl ?? this.videoEmbedUrl,
    );
  }
}

/// Domain model for Video Pagination
class VideoPaginationInfo extends Equatable {
  final int total;
  final int count;
  final int perPage;
  final int currentPage;
  final int lastPage;
  final int from;
  final int to;

  const VideoPaginationInfo({
    required this.total,
    required this.count,
    required this.perPage,
    required this.currentPage,
    required this.lastPage,
    required this.from,
    required this.to,
  });

  @override
  List<Object> get props => [
        total,
        count,
        perPage,
        currentPage,
        lastPage,
        from,
        to,
      ];

  VideoPaginationInfo copyWith({
    int? total,
    int? count,
    int? perPage,
    int? currentPage,
    int? lastPage,
    int? from,
    int? to,
  }) {
    return VideoPaginationInfo(
      total: total ?? this.total,
      count: count ?? this.count,
      perPage: perPage ?? this.perPage,
      currentPage: currentPage ?? this.currentPage,
      lastPage: lastPage ?? this.lastPage,
      from: from ?? this.from,
      to: to ?? this.to,
    );
  }
}
