import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nassan_app/core/responsive/device_type.dart';
import 'package:nassan_app/core/shared/wdigets/AppScaffold.dart';
import 'package:nassan_app/core/shared/wdigets/ui_status_handling.dart';
import 'package:nassan_app/core/di/app_dependencies.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../bloc/video_bloc.dart';
import '../bloc/video_event.dart';
import '../bloc/video_state.dart';
import '../widgets/video_card.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<VideoBloc>()..add(const FetchVideosEvent()),
      child: BlocBuilder<VideoBloc, VideoState>(
        builder: (context, state) {
          return SimpleLottieHandler(
            blocStatus: state.status,
            successWidget: _buildVideoContent(context, state),
            isEmpty: state.status.isSuccess() && state.videos.isEmpty,
            emptyMessage: 'لا توجد فيديوهات متاحة',
            loadingMessage: 'جاري تحميل الفيديوهات...',
            onRetry: () => context.read<VideoBloc>().add(const RefreshVideosEvent()),
            animationSize: 200,
          );
        },
      ),
    );
  }

  Widget _buildVideoContent(BuildContext context, VideoState state) {
    return AppScaffold.custom(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.viewerBackground.path),
            fit: BoxFit.cover,
          ),
        ),
        child: CustomScrollView(
          slivers: [
            // Main Content
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.only(right: 10.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title with Filter Button
                    Padding(
                      padding: EdgeInsets.only(right: 15.0.sp, left: 15.sp, bottom: 30.sp),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "المكتبة المرئية",
                            style: TextStyle(
                              fontFamily: FontFamily.tajawal,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          // Filter button for pagination
                          BlocBuilder<VideoBloc, VideoState>(
                            builder: (context, state) {
                              return context.read<VideoBloc>().buildFilterButton(
                                context: context,
                                sort: state.currentSort,
                                perPage: 8,
                              );
                            },
                          ),
                        ],
                      ),
                    ),

                    // Video Grid
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.sp),
                      child: GridView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: context.deviceValue(
                            mobile: 2,
                            tablet: 3,
                            desktop: 4,
                          ),
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 14,
                          childAspectRatio: 0.7,
                        ),
                        itemCount: state.videos.length,
                        itemBuilder: (context, index) {
                          return VideoCard(video: state.videos[index]);
                        },
                      ),
                    ),
                    SizedBox(height: 20.sp),
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
