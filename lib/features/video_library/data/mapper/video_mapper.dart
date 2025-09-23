import '../model/video_model.dart';
import '../../domain/model/video.dart';

/// Mapper for converting between VideoData and Video domain models
class VideoMapper {
  /// Convert VideoData to Video domain model
  static Video mapFromModel(VideoData data) {
    return Video(
      videoId: data.videoId,
      videoTitle: data.videoTitle,
      videoSummary: data.videoSummary,
      videoDes: data.videoDes,
      videoCatId: data.videoCatId,
      videoPic: data.videoPic,
      videoVisitor: data.videoVisitor,
      videoPriority: data.videoPriority,
      videoDate: data.videoDate,
      videoActive: data.videoActive,
      videoYoutubeId: data.videoYoutubeId,
      videoFile: data.videoFile,
      videoSource: data.videoSource,
      videoSourceUrl: data.videoSourceUrl,
      videoType: data.videoType,
      videoEmbedUrl: data.videoEmbedUrl,
    );
  }

  /// Convert Video domain model to VideoData
  static VideoData mapFromDomain(Video video) {
    return VideoData(
      videoId: video.videoId,
      videoTitle: video.videoTitle,
      videoSummary: video.videoSummary,
      videoDes: video.videoDes,
      videoCatId: video.videoCatId,
      videoPic: video.videoPic,
      videoVisitor: video.videoVisitor,
      videoPriority: video.videoPriority,
      videoDate: video.videoDate,
      videoActive: video.videoActive,
      videoYoutubeId: video.videoYoutubeId,
      videoFile: video.videoFile,
      videoSource: video.videoSource,
      videoSourceUrl: video.videoSourceUrl,
      videoType: video.videoType,
      videoEmbedUrl: video.videoEmbedUrl,
    );
  }

  /// Convert list of VideoData to list of Video domain models
  static List<Video> mapFromListModel(List<VideoData> dataList) {
    return dataList.map((data) => mapFromModel(data)).toList();
  }

  /// Convert list of Video domain models to list of VideoData
  static List<VideoData> mapFromListDomain(List<Video> videoList) {
    return videoList.map((video) => mapFromDomain(video)).toList();
  }

  /// Convert VideoPagination to VideoPaginationInfo domain model
  static VideoPaginationInfo mapPaginationFromModel(VideoPagination pagination) {
    return VideoPaginationInfo(
      total: pagination.total,
      count: pagination.count,
      perPage: pagination.perPage,
      currentPage: pagination.currentPage,
      lastPage: pagination.lastPage,
      from: pagination.from,
      to: pagination.to,
    );
  }
}
