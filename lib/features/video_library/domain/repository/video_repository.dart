import 'package:dartz/dartz.dart';
import '../model/video.dart';

/// Repository interface for video operations
abstract class VideoRepository {
  /// Get videos with pagination
  /// Returns Either<String, List<Video>> where Right contains the list of videos
  Future<Either<String, List<Video>>> getVideos({
    String sort = '-video_priority',
    int page = 1,
    int perpage = 8,
  });

  /// Get video pagination information
  /// Returns Either<String, VideoPaginationInfo> where Right contains pagination info
  Future<Either<String, VideoPaginationInfo>> getVideoPagination({
    String sort = '-video_priority',
    int page = 1,
    int perpage = 8,
  });
}
