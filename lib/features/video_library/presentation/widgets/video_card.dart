import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
import '../../../../config/appconfig/app_colors.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../../core/di/app_dependencies.dart';
import '../../domain/model/video.dart';
import '../pages/video_player.dart';
import '../bloc/video_bloc.dart';

class VideoCard extends StatelessWidget {
  final Video video;

  const VideoCard({
    super.key,
    required this.video,
  });

  // Static RegExp patterns for better performance (compiled once)
  static final List<RegExp> _youtubePatterns = [
    RegExp(r'(?:youtube\.com\/watch\?v=|youtu\.be\/|youtube\.com\/embed\/)([^&\n?#]+)'),
    RegExp(r'youtube\.com\/v\/([^&\n?#]+)'),
  ];

  /// Gets YouTube thumbnail URL for the video
  String? _getYouTubeThumbnailUrl() {
    // Try to get YouTube ID from videoYoutubeId first
    String youtubeId = video.videoYoutubeId;
    
    // If videoYoutubeId is empty, try to extract from videoSourceUrl
    if (youtubeId.isEmpty) {
      youtubeId = _extractYouTubeIdFromUrl(video.videoSourceUrl) ?? '';
    }
    
    if (youtubeId.isNotEmpty) {
      // Return high quality thumbnail URL
      return 'https://img.youtube.com/vi/$youtubeId/hqdefault.jpg';
    }
    
    return null;
  }

  /// Extracts YouTube ID from YouTube URL
  String? _extractYouTubeIdFromUrl(String url) {
    if (url.isEmpty) return null;
    
    // Use static patterns for better performance
    for (final pattern in _youtubePatterns) {
      final match = pattern.firstMatch(url);
      if (match != null && match.groupCount > 0) {
        return match.group(1);
      }
    }
    
    return null;
  }

  /// Builds the thumbnail image with YouTube thumbnail or fallback
  Widget _buildThumbnailImage() {
    final youtubeThumbnailUrl = _getYouTubeThumbnailUrl();
    
    if (youtubeThumbnailUrl != null) {
      return CachedNetworkImage(
        imageUrl: youtubeThumbnailUrl,
        cacheKey: 'video_${video.videoId}', // Unique cache key for better cache management
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
        memCacheHeight: 400, // Limit memory cache size for better performance
        memCacheWidth: 400,
        maxHeightDiskCache: 600, // Limit disk cache size
        maxWidthDiskCache: 600,
        placeholder: (context, url) => Container(
          color: AppColors.primary.withValues(alpha: 0.1),
          child: const Center(
            child: CircularProgressIndicator(
              color: AppColors.primary,
              strokeWidth: 2,
            ),
          ),
        ),
        errorWidget: (context, url, error) => _buildDefaultImage(),
        fadeInDuration: const Duration(milliseconds: 200),
        fadeOutDuration: const Duration(milliseconds: 100),
      );
    }
    
    return _buildDefaultImage();
  }

  /// Builds the default image fallback
  Widget _buildDefaultImage() {
    return Image.asset(
      Assets.images.nassanImage.path,
      width: double.infinity,
      height: double.infinity,
      fit: BoxFit.cover,
    );
  }

  @override
  Widget build(BuildContext context) {
    return RepaintBoundary(
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.r),
                    topRight: Radius.circular(12.r),
                  ),
                  color: AppColors.primary.withValues(alpha: 0.1),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12.r),
                    topRight: Radius.circular(12.r),
                  ),
                  child: _buildThumbnailImage(),
                ),
              ),
            ),
          // Video info area
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.all(8.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: Text(
                          "عنوان الدرس:",
                          style: TextStyle(
                            fontSize: 12.f,
                            fontFamily: FontFamily.tajawal,
                            fontWeight: FontWeight.bold,
                            color: AppColors.black,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(width: 4.w),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.remove_red_eye_outlined,
                            size: 14.f,
                            color: AppColors.grey,
                          ),
                          SizedBox(width: 2.w),
                          Text(
                            video.videoVisitor,
                            style: TextStyle(
                              fontSize: 10.f,
                              fontFamily: FontFamily.tajawal,
                              color: AppColors.grey,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    video.videoTitle,
                    style: TextStyle(
                      fontSize: 12.f,
                      fontFamily: FontFamily.tajawal,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Spacer(),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        // Navigate to video player page with VideoBloc provider
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BlocProvider(
                              create: (context) => getIt<VideoBloc>(),
                              child: VideoPlayerPage(video: video),
                            ),
                          ),
                        );
                      },
                      borderRadius: BorderRadius.circular(40.r),
                      child: Ink(
                        height: 30.h,
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(vertical: 4.h),
                        decoration: BoxDecoration(
                          color: AppColors.secondary,
                          borderRadius: BorderRadius.circular(40.r),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.play_arrow, color: Colors.white, size: 16.f),
                            SizedBox(width: 4.w),
                            Text(
                              "تشغيل",
                              style: TextStyle(
                                fontFamily: FontFamily.tajawal,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 10.f,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      ),
    );
  }
}
