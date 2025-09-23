import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:nassan_app/core/responsive/device_type.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import '../../../../config/appconfig/app_colors.dart';
import '../../../../gen/assets.gen.dart';
import '../../data/model/advisory_categories_model.dart';
import '../bloc/advisory_bloc.dart';
import '../bloc/advisory_states.dart';

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
      height: context.deviceValue(mobile: 200.h, tablet: 240.h, desktop: 280.h),
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
      height: context.deviceValue(mobile: 200.h, tablet: 240.h, desktop: 280.h),
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
    // Take only first 3 items for horizontal scroll
    final displayAdvisories = advisories.take(3).toList();

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: displayAdvisories.map((advisory) {
          return _buildAdvisoryCard(context, advisory);
        }).toList(),
      ),
    );
  }

  Widget _buildAdvisoryCard(BuildContext context, AdvisoryItem advisory) {
    return Container(
      margin: EdgeInsets.only(left: 8.w),
      width: context.deviceValue(mobile: 280.w, tablet: 320.w, desktop: 360.w),
      child: Card(
        elevation: 0,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: InkWell(
          onTap: () {
            // TODO: Navigate to advisory details
          },
          borderRadius: BorderRadius.circular(20),
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Category Badge
                if (advisory.category?.catTitle != null)
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.w,
                      vertical: 4.h,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.primary.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.lightbulb_outline,
                          size: 14.f,
                          color: AppColors.primary,
                        ),
                        SizedBox(width: 4.w),
                        Text(
                          advisory.category!.catTitle!,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontFamily: FontFamily.tajawal,
                            fontSize: 12.f,
                            color: AppColors.primary,
                          ),
                        ),
                      ],
                    ),
                  ),

                SizedBox(height: 8.h),

                // Question Label
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.w,
                    vertical: 2.h,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    "السؤال: ",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: FontFamily.tajawal,
                      fontSize: 12.f,
                    ),
                  ),
                ),

                SizedBox(height: 8.h),

                // Question Text
                Text(
                  advisory.advisoryQuestion ?? 'لا يوجد سؤال',
                  style: TextStyle(
                    fontSize: context.deviceValue(
                      mobile: 13.0.f,
                      tablet: 15.0.f,
                      desktop: 17.0.f,
                    ),
                    fontFamily: FontFamily.tajawal,
                    height: 1.5,
                    color: Colors.grey[800],
                  ),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),

                SizedBox(height: 12.h),

                // Advisory ID and Stats
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 8.w,
                        vertical: 4.h,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.primary.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "رقم الفتوى: ",
                            style: TextStyle(
                              fontFamily: FontFamily.tajawal,
                              fontWeight: FontWeight.bold,
                              fontSize: 12.f,
                              color: AppColors.primary,
                            ),
                          ),
                          Text(
                            "#${advisory.advisoryId ?? 'غير محدد'}",
                            style: TextStyle(
                              fontFamily: FontFamily.tajawal,
                              fontSize: 12.f,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 6.w,
                        vertical: 4.h,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.calendar_month_outlined,
                            size: 14.f,
                            color: Colors.grey[600],
                          ),
                          SizedBox(width: 4.w),
                          Text(
                            _formatDate(advisory.advisoryQuestionDate),
                            style: TextStyle(
                              fontSize: 11.f,
                              fontFamily: FontFamily.tajawal,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 8.w),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 6.w,
                        vertical: 4.h,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[100],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.remove_red_eye_outlined,
                            size: 14.f,
                            color: Colors.grey[600],
                          ),
                          SizedBox(width: 4.w),
                          Text(
                            _formatViews(advisory.advisoryVisitor),
                            style: TextStyle(
                              fontFamily: FontFamily.tajawal,
                              fontSize: 11.f,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 12.h),

                // Enhanced Action Button
                InkWell(
                  onTap: () {
                    // TODO: Navigate to advisory details
                  },
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                      vertical: 14.h,
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          AppColors.primary,
                          AppColors.primary.withOpacity(0.8),
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.primary.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 8,
                          offset: const Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "عرض الإجابة",
                          style: TextStyle(
                            fontFamily: FontFamily.tajawal,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: context.deviceValue(
                              mobile: 14.0.f,
                              tablet: 16.0.f,
                              desktop: 18.0.f,
                            ),
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 16.f,
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

  String _formatDate(String? dateString) {
    if (dateString == null || dateString.isEmpty) return 'غير محدد';
    
    try {
      final date = DateTime.parse(dateString);
      return '${date.day}/${date.month}/${date.year}';
    } catch (e) {
      return 'غير محدد';
    }
  }

  String _formatViews(int? views) {
    if (views == null) return '0';
    
    if (views >= 1000) {
      return '${(views / 1000).toStringAsFixed(1)}K';
    }
    return views.toString();
  }
}
