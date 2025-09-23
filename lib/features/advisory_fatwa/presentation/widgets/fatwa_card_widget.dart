import 'package:flutter/material.dart';
import 'package:nassan_app/core/responsive/device_type.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import '../../../../config/appconfig/app_colors.dart';

class FatwaCardWidget extends StatelessWidget {
  final String category;
  final String question;
  final String fatwaNumber;
  final String date;
  final String views;
  final VoidCallback? onTap;

  const FatwaCardWidget({
    super.key,
    required this.category,
    required this.question,
    required this.fatwaNumber,
    required this.date,
    required this.views,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 4.w,
        vertical: 8.h,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 20.h,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColors.secondary.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildCategoryBadge(context),
          SizedBox(height: 12.h),
          _buildQuestionLabel(context),
          SizedBox(height: 8.h),
          _buildQuestionText(context),
          SizedBox(height: 12.h),
          _buildStatsRow(context),
          SizedBox(height: 12.h),
          _buildActionButton(context),
        ],
      ),
    );
  }

  Widget _buildCategoryBadge(BuildContext context) {
    return Container(
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
            category,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: FontFamily.tajawal,
              fontSize: 12.f,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuestionLabel(BuildContext context) {
    return Container(
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
    );
  }

  Widget _buildQuestionText(BuildContext context) {
    return Text(
      question,
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
    );
  }

  Widget _buildStatsRow(BuildContext context) {
    return Row(
      children: [
        _buildFatwaNumber(context),
        const Spacer(),
        _buildDateChip(context),
        SizedBox(width: 8.w),
        _buildViewsChip(context),
      ],
    );
  }

  Widget _buildFatwaNumber(BuildContext context) {
    return Container(
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
            fatwaNumber,
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: 12.f,
              fontWeight: FontWeight.w600,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDateChip(BuildContext context) {
    return Container(
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
            date,
            style: TextStyle(
              fontSize: 11.f,
              fontFamily: FontFamily.tajawal,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildViewsChip(BuildContext context) {
    return Container(
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
            views,
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: 11.f,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButton(BuildContext context) {
    return InkWell(
      onTap: onTap,
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
    );
  }
}
