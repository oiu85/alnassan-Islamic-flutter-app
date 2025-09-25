import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:nassan_app/core/shared/wdigets/AppScaffold.dart';
import 'package:share_plus/share_plus.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '../../../../config/appconfig/app_colors.dart';
import '../../../../core/di/app_dependencies.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../domain/model/video.dart';
import '../bloc/video_bloc.dart';
import '../bloc/video_event.dart';
import '../bloc/video_state.dart';

class VideoPlayerPage extends StatefulWidget {
  final Video video;

  const VideoPlayerPage({super.key, required this.video});

  @override
  State<VideoPlayerPage> createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  late VideoBloc _videoBloc;

  @override
  void initState() {
    super.initState();
    _videoBloc = context.read<VideoBloc>();
    _initializePlayer();
    _loadVideos();
  }

  void _initializePlayer() {
    // Extract video ID from YouTube URL or use videoYoutubeId
    final videoId = YoutubePlayer.convertUrlToId(widget.video.videoSourceUrl) ?? 
                   widget.video.videoYoutubeId;
    
    // Initialize player in BLoC
    _videoBloc.add(InitializePlayerEvent(
      videoId: videoId,
      videoUrl: widget.video.videoSourceUrl,
    ));
  }

  void _loadVideos() {
    // Load videos for suggestions
    _videoBloc.add(const FetchVideosEvent());
  }

  @override
  void dispose() {
    // Dispose player in BLoC
    _videoBloc.add(const DisposePlayerEvent());
    super.dispose();
  }

  void _shareVideo() {
    final String videoUrl = 'https://www.naasan.net/video.php?id=${widget.video.videoId}';
    final String title = widget.video.videoTitle;
    
    Share.share(
      videoUrl,
      subject: title,
    );
  }

  /// Gets YouTube thumbnail URL for the video
  String? _getYouTubeThumbnailUrl(Video video) {
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
    
    // Handle different YouTube URL formats
    final patterns = [
      RegExp(r'(?:youtube\.com\/watch\?v=|youtu\.be\/|youtube\.com\/embed\/)([^&\n?#]+)'),
      RegExp(r'youtube\.com\/v\/([^&\n?#]+)'),
    ];
    
    for (final pattern in patterns) {
      final match = pattern.firstMatch(url);
      if (match != null && match.groupCount > 0) {
        return match.group(1);
      }
    }
    
    return null;
  }

  /// Builds the thumbnail image for suggested videos with YouTube thumbnail or fallback
  Widget _buildSuggestedVideoThumbnail(Video video) {
    final youtubeThumbnailUrl = _getYouTubeThumbnailUrl(video);
    
    if (youtubeThumbnailUrl != null) {
      return CachedNetworkImage(
        imageUrl: youtubeThumbnailUrl,
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
        placeholder: (context, url) => Container(
          color: AppColors.primary.withValues(alpha: 0.1),
          child: Center(
            child: CircularProgressIndicator(
              color: AppColors.primary,
              strokeWidth: 2,
            ),
          ),
        ),
        errorWidget: (context, url, error) => _buildDefaultSuggestedImage(),
        fadeInDuration: Duration(milliseconds: 300),
        fadeOutDuration: Duration(milliseconds: 100),
      );
    }
    
    return _buildDefaultSuggestedImage();
  }

  /// Builds the default image fallback for suggested videos
  Widget _buildDefaultSuggestedImage() {
    return Image.asset(
      Assets.images.nassanImage2.path,
      fit: BoxFit.cover,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VideoBloc, VideoState>(
      builder: (context, state) {
        return AppScaffold.custom(
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.images.viewerBackground.path),
                fit: BoxFit.cover,
              ),
            ),
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(20.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Video Player Card
                    Card(
                      elevation: 8,
                      shadowColor: AppColors.primary.withValues(alpha: 0.3),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.r),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.white,
                              AppColors.primary.withValues(alpha: 0.05),
                            ],
                          ),
                        ),
                        child: Column(
                          children: [
                            // YouTube Player Area
                            Container(
                              width: double.infinity,
                              height: 280.sp,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.r),
                                  topRight: Radius.circular(20.r),
                                ),
                                color: AppColors.primary.withValues(alpha: 0.1),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20.r),
                                  topRight: Radius.circular(20.r),
                                ),
                                child: _videoBloc.youtubeController != null
                                  ? YoutubePlayerBuilder(
                                      player: YoutubePlayer(
                                        controller: _videoBloc.youtubeController!,
                                        showVideoProgressIndicator: true,
                                        progressIndicatorColor: AppColors.primary,
                                        progressColors: const ProgressBarColors(
                                          playedColor: AppColors.primary,
                                          handleColor: AppColors.secondary,
                                        ),
                                        topActions: const [],
                                        bottomActions: [
                                          CurrentPosition(),
                                          ProgressBar(isExpanded: true),
                                          RemainingDuration(),
                                        ],
                                        onReady: () {
                                          _videoBloc.add(const PlayerReadyEvent());
                                        },
                                        onEnded: (data) {
                                          _videoBloc.add(const VideoEndedEvent());
                                          ScaffoldMessenger.of(context).showSnackBar(
                                            SnackBar(
                                              content: Text(
                                                'انتهى الفيديو',
                                                style: TextStyle(fontFamily: FontFamily.tajawal),
                                              ),
                                              backgroundColor: AppColors.primary,
                                              behavior: SnackBarBehavior.floating,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10.r),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                      builder: (context, player) {
                                        return player;
                                      },
                                    )
                                  : Container(
                                      decoration: BoxDecoration(
                                        color: AppColors.primary.withValues(alpha: 0.1),
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(20.r),
                                          topRight: Radius.circular(20.r),
                                        ),
                                      ),
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            CircularProgressIndicator(
                                              color: AppColors.primary,
                                              strokeWidth: 3.w,
                                            ),
                                            SizedBox(height: 20.h),
                                            Text(
                                              'جاري تحميل الفيديو...',
                                              style: TextStyle(
                                                fontFamily: FontFamily.tajawal,
                                                color: AppColors.primary,
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                              ),
                            ),
                            
                            // Video Info Section
                            Padding(
                              padding: EdgeInsets.all(20.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Title and Actions Row
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          widget.video.videoTitle,
                                          style: TextStyle(
                                            fontFamily: FontFamily.tajawal,
                                            fontSize: 18.sp,
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.black,
                                            height: 1.4,
                                          ),
                                          textAlign: TextAlign.start,
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      SizedBox(width: 16.w),
                                      // Share button
                                      Container(
                                        decoration: BoxDecoration(
                                          color: AppColors.primary,
                                          borderRadius: BorderRadius.circular(12.r),
                                          boxShadow: [
                                            BoxShadow(
                                              color: AppColors.primary.withValues(alpha: 0.3),
                                              blurRadius: 8,
                                              offset: Offset(0, 4),
                                            ),
                                          ],
                                        ),
                                        child: Material(
                                          color: Colors.transparent,
                                          child: InkWell(
                                            onTap: _shareVideo,
                                            borderRadius: BorderRadius.circular(12.r),
                                            child: Padding(
                                              padding: EdgeInsets.all(12.w),
                                              child: Icon(
                                                Icons.share,
                                                size: 24.w,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  
                                  SizedBox(height: 16.h),
                                  
                                  // View count and metadata
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 12.w,
                                          vertical: 6.h,
                                        ),
                                        decoration: BoxDecoration(
                                          color: AppColors.grey.withValues(alpha: 0.1),
                                          borderRadius: BorderRadius.circular(20.r),
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(
                                              Icons.remove_red_eye_outlined,
                                              size: 16.w,
                                              color: AppColors.grey,
                                            ),
                                            SizedBox(width: 6.w),
                                            Text(
                                              widget.video.videoVisitor,
                                              style: TextStyle(
                                                fontSize: 14.sp,
                                                fontFamily: FontFamily.tajawal,
                                                color: AppColors.grey,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 12.w),
                                      Container(
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 12.w,
                                          vertical: 6.h,
                                        ),
                                        decoration: BoxDecoration(
                                          color: AppColors.primary.withValues(alpha: 0.1),
                                          borderRadius: BorderRadius.circular(20.r),
                                        ),
                                        child: Text(
                                          'فيديو',
                                          style: TextStyle(
                                            fontSize: 14.sp,
                                            fontFamily: FontFamily.tajawal,
                                            color: AppColors.primary,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    
                    SizedBox(height: 24.h),
                    
                    // Suggested Videos Section
                    _buildSuggestedVideos(context, state),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildSuggestedVideos(BuildContext context, VideoState state) {
    // If no videos in state, fetch them first
    if (state.videos.isEmpty) {
      // Trigger video fetch
      _videoBloc.add(const FetchVideosEvent());
      
      return Card(
        elevation: 4,
        shadowColor: AppColors.primary.withValues(alpha: 0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Container(
          padding: EdgeInsets.all(20.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white,
                AppColors.primary.withValues(alpha: 0.03),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8.w),
                    decoration: BoxDecoration(
                      color: AppColors.primary.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Icon(
                      Icons.play_circle_outline,
                      color: AppColors.primary,
                      size: 20.w,
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Text(
                    'مواضيع مقترحة',
                    style: TextStyle(
                      fontFamily: FontFamily.tajawal,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                    height: 20.h,
                    child: CircularProgressIndicator(
                      strokeWidth: 2.5,
                      color: AppColors.primary,
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Text(
                    'جاري تحميل الفيديوهات المقترحة...',
                    style: TextStyle(
                      fontFamily: FontFamily.tajawal,
                      fontSize: 16.sp,
                      color: AppColors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }
    
    // If still loading, show loading state
    if (state.status.isLoading()) {
      return Card(
        elevation: 4,
        shadowColor: AppColors.primary.withValues(alpha: 0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Container(
          padding: EdgeInsets.all(20.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white,
                AppColors.primary.withValues(alpha: 0.03),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8.w),
                    decoration: BoxDecoration(
                      color: AppColors.primary.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Icon(
                      Icons.play_circle_outline,
                      color: AppColors.primary,
                      size: 20.w,
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Text(
                    'مواضيع مقترحة',
                    style: TextStyle(
                      fontFamily: FontFamily.tajawal,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                    height: 20.h,
                    child: CircularProgressIndicator(
                      strokeWidth: 2.5,
                      color: AppColors.primary,
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Text(
                    'جاري تحميل الفيديوهات...',
                    style: TextStyle(
                      fontFamily: FontFamily.tajawal,
                      fontSize: 16.sp,
                      color: AppColors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }
    
    // If there's an error, show error state
    if (state.status.isFail()) {
      return Card(
        elevation: 4,
        shadowColor: AppColors.primary.withValues(alpha: 0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Container(
          padding: EdgeInsets.all(20.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.r),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.white,
                AppColors.primary.withValues(alpha: 0.03),
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8.w),
                    decoration: BoxDecoration(
                      color: AppColors.primary.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Icon(
                      Icons.play_circle_outline,
                      color: AppColors.primary,
                      size: 20.w,
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Text(
                    'مواضيع مقترحة',
                    style: TextStyle(
                      fontFamily: FontFamily.tajawal,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8.w),
                    decoration: BoxDecoration(
                      color: Colors.red.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Icon(
                      Icons.error_outline,
                      color: Colors.red,
                      size: 20.w,
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Expanded(
                    child: Text(
                      'فشل في تحميل الفيديوهات المقترحة',
                      style: TextStyle(
                        fontFamily: FontFamily.tajawal,
                        fontSize: 16.sp,
                        color: AppColors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.h),
              Center(
                child: ElevatedButton.icon(
                  onPressed: () {
                    _videoBloc.add(const FetchVideosEvent());
                  },
                  icon: Icon(Icons.refresh, size: 18.w),
                  label: Text(
                    'إعادة المحاولة',
                    style: TextStyle(
                      fontFamily: FontFamily.tajawal,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 12.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.r),
                    ),
                    elevation: 2,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
    
    // Get 3 random videos excluding the current one
    final allVideos = state.videos.where((video) => video.videoId != widget.video.videoId).toList();
    final randomVideos = _getRandomVideos(allVideos, 3);
    
    if (randomVideos.isEmpty) {
      return const SizedBox.shrink();
    }
    
    return Card(
      elevation: 4,
      shadowColor: AppColors.primary.withValues(alpha: 0.2),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.white,
              AppColors.primary.withValues(alpha: 0.03),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Section Header
            Padding(
              padding: EdgeInsets.all(20.w),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8.w),
                    decoration: BoxDecoration(
                      color: AppColors.primary.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                    child: Icon(
                      Icons.play_circle_outline,
                      color: AppColors.primary,
                      size: 20.w,
                    ),
                  ),
                  SizedBox(width: 12.w),
                  Text(
                    'مواضيع مقترحة',
                    style: TextStyle(
                      fontFamily: FontFamily.tajawal,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      color: AppColors.black,
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                    decoration: BoxDecoration(
                      color: AppColors.primary.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(20.r),
                    ),
                    child: Text(
                      '${randomVideos.length}',
                      style: TextStyle(
                        fontFamily: FontFamily.tajawal,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            // Videos List
            Container(
              height: 220.sp,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.h),
                itemCount: randomVideos.length,
                itemBuilder: (context, index) {
                  final video = randomVideos[index];
                  return _buildSuggestedVideoCard(context, video);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSuggestedVideoCard(BuildContext context, Video video) {
    return Container(
      width: 200.sp,
      margin: EdgeInsets.only(left: 12.sp),
      child: InkWell(
        borderRadius: BorderRadius.circular(20.r),
        onTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => BlocProvider(
                create: (context) => getIt<VideoBloc>(),
                child: VideoPlayerPage(video: video),
              ),
            ),
          );
        },
        child: Card(
          elevation: 6,
          shadowColor: AppColors.primary.withValues(alpha: 0.3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
          clipBehavior: Clip.antiAlias,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.white,
                  AppColors.primary.withValues(alpha: 0.02),
                ],
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Thumbnail
                Expanded(
                  flex: 3,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: _buildSuggestedVideoThumbnail(video),
                      ),
                      // Gradient overlay
                      Positioned.fill(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.black.withValues(alpha: 0.1),
                                Colors.black.withValues(alpha: 0.5),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                        ),
                      ),
                      // Play icon
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.9),
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: AppColors.primary.withValues(alpha: 0.3),
                                blurRadius: 8,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          padding: EdgeInsets.all(8.sp),
                          child: Icon(
                            Icons.play_arrow_rounded,
                            size: 28.sp,
                            color: AppColors.primary,
                          ),
                        ),
                      ),
                      // Duration badge (if available)
                      Positioned(
                        top: 8.h,
                        right: 8.w,
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                          decoration: BoxDecoration(
                            color: Colors.black.withValues(alpha: 0.7),
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Text(
                            'فيديو',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10.sp,
                              fontFamily: FontFamily.tajawal,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Video Info
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.all(12.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          video.videoTitle,
                          style: TextStyle(
                            fontFamily: FontFamily.tajawal,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.black,
                            height: 1.3,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Spacer(),
                        Row(
                          children: [
                            Icon(
                              Icons.remove_red_eye_outlined,
                              size: 14.w,
                              color: AppColors.grey,
                            ),
                            SizedBox(width: 6.w),
                            Text(
                              video.videoVisitor,
                              style: TextStyle(
                                fontSize: 12.sp,
                                fontFamily: FontFamily.tajawal,
                                color: AppColors.grey,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Spacer(),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 2.h),
                              decoration: BoxDecoration(
                                color: AppColors.primary.withValues(alpha: 0.1),
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                              child: Text(
                                'مشاهدة',
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  fontFamily: FontFamily.tajawal,
                                  color: AppColors.primary,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  List<Video> _getRandomVideos(List<Video> videos, int count) {
    if (videos.length <= count) {
      return videos;
    }
    
    final shuffled = List<Video>.from(videos)..shuffle();
    return shuffled.take(count).toList();
  }

}
