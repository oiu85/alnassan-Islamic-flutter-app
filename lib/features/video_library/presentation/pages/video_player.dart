import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
  @override
  void initState() {
    super.initState();
    _initializePlayer();
    _loadVideos();
  }

  void _initializePlayer() {
    // Extract video ID from YouTube URL or use videoYoutubeId
    final videoId = YoutubePlayer.convertUrlToId(widget.video.videoSourceUrl) ?? 
                   widget.video.videoYoutubeId;
    
    // Initialize player in BLoC
    context.read<VideoBloc>().add(InitializePlayerEvent(
      videoId: videoId,
      videoUrl: widget.video.videoSourceUrl,
    ));
  }

  void _loadVideos() {
    // Load videos for suggestions
    context.read<VideoBloc>().add(const FetchVideosEvent());
  }

  @override
  void dispose() {
    // Dispose player in BLoC
    context.read<VideoBloc>().add(const DisposePlayerEvent());
    super.dispose();
  }

  void _shareVideo() {
    final shareText = '''
🎥 ${widget.video.videoTitle}

📺 شاهد هذا الفيديو:
${widget.video.videoSourceUrl}

📱 من تطبيق الشيخ احمد النعسان
''';
    
    Share.share(
      shareText,
      subject: 'فيديو من تطبيق الشيخ احمد النعسان - ${widget.video.videoTitle}',
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
        child: Padding(
          padding: EdgeInsets.all(16.sp),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               // YouTube Player Area
               Container(
                 width: double.infinity,
                 height: 250.sp,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(12),
                   color: AppColors.primary.withValues(alpha: 0.1),
                 ),
                 child: ClipRRect(
                   borderRadius: BorderRadius.circular(12),
                   child: context.read<VideoBloc>().youtubeController != null
                     ? YoutubePlayerBuilder(
                         player: YoutubePlayer(
                           controller: context.read<VideoBloc>().youtubeController!,
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
                             context.read<VideoBloc>().add(const PlayerReadyEvent());
                           },
                           onEnded: (data) {
                             context.read<VideoBloc>().add(const VideoEndedEvent());
                             ScaffoldMessenger.of(context).showSnackBar(
                               SnackBar(
                                 content: Text(
                                   'انتهى الفيديو',
                                   style: TextStyle(fontFamily: FontFamily.tajawal),
                                 ),
                                 backgroundColor: AppColors.primary,
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
                           borderRadius: BorderRadius.circular(12),
                         ),
                         child: Center(
                           child: Column(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               CircularProgressIndicator(
                                 color: AppColors.primary,
                               ),
                               SizedBox(height: 16),
                               Text(
                                 'جاري تحميل الفيديو...',
                                 style: TextStyle(
                                   fontFamily: FontFamily.tajawal,
                                   color: AppColors.primary,
                                 ),
                               ),
                             ],
                           ),
                         ),
                       ),
                 ),
               ),
              SizedBox(height: 10),
              Row(
                children: [
                   Expanded(
                     child: Text(
                       widget.video.videoTitle,
                       style: TextStyle(
                         fontFamily: FontFamily.tajawal,
                         fontSize: 12.sp,
                         fontWeight: FontWeight.bold,
                         color: AppColors.black,
                       ),
                       textAlign: TextAlign.start,
                       maxLines: 2,
                       overflow: TextOverflow.ellipsis,
                     ),
                   ),
                   Spacer(),
                   // Share button
                   InkWell(
                     onTap: _shareVideo,
                     child: Row(
                       mainAxisSize: MainAxisSize.min,
                       children: [
                         Icon(
                           Icons.share,
                           size: 25,
                           color: AppColors.primary,
                         ),
                       ],
                     ),
                   ),
                   SizedBox(width: 8),
                   // View count
                   Row(
                     children: [
                       Icon(
                         Icons.remove_red_eye_outlined,
                         size: 16,
                         color: AppColors.grey,
                       ),
                       SizedBox(width: 2),
                       Text(
                         widget.video.videoVisitor,
                         style: TextStyle(
                           fontSize: 12,
                           fontFamily: FontFamily.tajawal,
                           color: AppColors.grey,
                         ),
                       ),
                     ],
                   ),
                ],
              ),
              Spacer(),
              // Suggested Videos Section
              _buildSuggestedVideos(context, state),
              
              Spacer(),
            ],
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
      context.read<VideoBloc>().add(const FetchVideosEvent());
      
      return Container(
        padding: EdgeInsets.all(16.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'مواضيع مقترحة',
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.black,
              ),
            ),
            SizedBox(height: 8.sp),
            Row(
              children: [
                SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: AppColors.primary,
                  ),
                ),
                SizedBox(width: 8),
                Text(
                  'جاري تحميل الفيديوهات المقترحة...',
                  style: TextStyle(
                    fontFamily: FontFamily.tajawal,
                    fontSize: 14.sp,
                    color: AppColors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }
    
    // If still loading, show loading state
    if (state.status.isLoading()) {
      return Container(
        padding: EdgeInsets.all(16.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'مواضيع مقترحة',
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.black,
              ),
            ),
            SizedBox(height: 8.sp),
            Row(
              children: [
                SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    color: AppColors.primary,
                  ),
                ),
                SizedBox(width: 8),
                Text(
                  'جاري تحميل الفيديوهات...',
                  style: TextStyle(
                    fontFamily: FontFamily.tajawal,
                    fontSize: 14.sp,
                    color: AppColors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }
    
    // If there's an error, show error state
    if (state.status.isFail()) {
      return Container(
        padding: EdgeInsets.all(16.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'مواضيع مقترحة',
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: AppColors.black,
              ),
            ),
            SizedBox(height: 8.sp),
            Row(
              children: [
                Icon(
                  Icons.error_outline,
                  color: AppColors.grey,
                  size: 16,
                ),
                SizedBox(width: 8),
                Expanded(
                  child: Text(
                    'فشل في تحميل الفيديوهات المقترحة',
                    style: TextStyle(
                      fontFamily: FontFamily.tajawal,
                      fontSize: 14.sp,
                      color: AppColors.grey,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    context.read<VideoBloc>().add(const FetchVideosEvent());
                  },
                  child: Text(
                    'إعادة المحاولة',
                    style: TextStyle(
                      fontFamily: FontFamily.tajawal,
                      fontSize: 12.sp,
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }
    
    // Get 3 random videos excluding the current one
    final allVideos = state.videos.where((video) => video.videoId != widget.video.videoId).toList();
    final randomVideos = _getRandomVideos(allVideos, 3);
    
    if (randomVideos.isEmpty) {
      return const SizedBox.shrink();
    }
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Section Title
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.sp, vertical: 8.sp),
          child: Text(
            'مواضيع مقترحة',
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.black,
            ),
          ),
        ),
        
        // Videos List
        Container(
          height: 200.sp,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 16.sp),
              itemCount: randomVideos.length,
              itemBuilder: (context, index) {
                final video = randomVideos[index];
                return _buildSuggestedVideoCard(context, video);
              },
            ),
        ),
      ],
    );
  }

  Widget _buildSuggestedVideoCard(BuildContext context, Video video) {
    return Container(
      width: 200.sp,
      margin: EdgeInsets.only(left: 8.sp),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
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
          elevation: 4,
          shadowColor: AppColors.primary.withOpacity(0.2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Thumbnail
              Expanded(
                flex: 2,
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        Assets.images.nassanImage2.path,
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Gradient overlay
                    Positioned.fill(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.black.withOpacity(0.1),
                              Colors.black.withOpacity(0.4),
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
                          color: Colors.white.withOpacity(0.7),
                          shape: BoxShape.circle,
                        ),
                        padding: EdgeInsets.all(6.sp),
                        child: Icon(
                          Icons.play_arrow_rounded,
                          size: 24.sp,
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Video Info
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(8.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        video.videoTitle,
                        style: TextStyle(
                          fontFamily: FontFamily.tajawal,
                          fontSize: 11.sp,
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
                            size: 14,
                            color: AppColors.grey,
                          ),
                          SizedBox(width: 4),
                          Text(
                            video.videoVisitor,
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontFamily: FontFamily.tajawal,
                              color: AppColors.grey,
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
