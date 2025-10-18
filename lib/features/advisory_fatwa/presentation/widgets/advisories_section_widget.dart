import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:nassan_app/core/responsive/device_type.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import '../../../../gen/assets.gen.dart';
import '../../data/model/advisory_categories_model.dart';
import '../bloc/advisory_bloc.dart';
import '../bloc/advisory_states.dart';
import '../pages/advisory_viewer_page.dart';
import '../widgets/advisory_fatwa_card_widget.dart';

class AdvisoriesSectionWidget extends StatelessWidget {
  final String title;
  final bool isRecent;

  const AdvisoriesSectionWidget({
    super.key,
    required this.title,
    this.isRecent = true,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdvisoryBloc, AdvisoryState>(
      builder: (context, state) {
        return _buildAdvisoriesSection(context, state);
      },
    );
  }

  Widget _buildAdvisoriesSection(BuildContext context, AdvisoryState state) {
    final status = isRecent ? state.recentStatus : state.popularStatus;
    final advisories = isRecent ? state.recentAdvisories : state.popularAdvisories;
    final error = isRecent ? state.recentError : state.popularError;

    if (status.isLoading()) {
      return _buildLoadingState(context);
    }

    if (status.isFail()) {
      return _buildErrorState(context, error);
    }

    if (advisories.isEmpty) {
      return _buildEmptyState(context);
    }

    return _buildAdvisoriesList(context, advisories);
  }

  Widget _buildLoadingState(BuildContext context) {
    return Container(
      color: Colors.white,
      height: context.deviceValue(mobile: 350.h, tablet: 240.h, desktop: 280.h),
      child: Center(
        child: Lottie.asset(
          Assets.lottie.loading,
          height: 60.h,
          width: 60.w,
          fit: BoxFit.contain,
          repeat: true,
        ),
      ),
    );
  }

  Widget _buildErrorState(BuildContext context, String? error) {
    return Container(
      height: 200.h,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              Assets.lottie.notFound,
              height: 60.h,
              width: 60.w,
              fit: BoxFit.contain,
              repeat: true,
            ),
            SizedBox(height: 8.h),
            Text(
              error ?? 'حدث خطأ في التحميل',
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 14.f,
                color: Colors.grey[600],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Container(
      height: context.deviceValue(mobile: 200.h, tablet: 240.h, desktop: 280.h),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              Assets.lottie.noData,
              height: 60.h,
              width: 60.w,
              fit: BoxFit.contain,
              repeat: true,
            ),
            SizedBox(height: 8.h),
            Text(
              'لا توجد فتاوى متاحة',
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 14.f,
                color: Colors.grey[600],
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAdvisoriesList(BuildContext context, List<AdvisoryItem> advisories) {
    final displayAdvisories = advisories.take(3).toList();
    final containerHeight = 250.h;
    return Container(
      color: Colors.white,
      height: containerHeight,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        addAutomaticKeepAlives: false, // Don't keep alive off-screen items
        addRepaintBoundaries: true, // Isolate repaints for better performance
        cacheExtent: 200, // Cache 200 pixels off-screen for smoother scrolling
        itemCount: displayAdvisories.length,
        itemBuilder: (context, index) {
          final advisory = displayAdvisories[index];
          return Padding(
            padding: EdgeInsets.only(right: index == 0 ? 0 : 12.w),
            child: AdvisoryFatwaCardWidget(
              key: ValueKey(advisory.advisoryId), // Stable key for better performance
              advisory: advisory,
              width: 285.w,
              onTap: () {
                if (advisory.advisoryId != null) {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => AdvisoryViewerPage(
                        advisoryId: advisory.advisoryId!,
                      ),
                    ),
                  );
                }
              },
            ),
          );
        },
      ),
    );
  }

  // Helper methods are now handled in the AdvisoryFatwaCardWidget
}