import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nassan_app/core/responsive/device_type.dart';
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
        horizontal: ScreenUtil().setWidth(4),
        vertical: ScreenUtil().setHeight(8),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: ScreenUtil().setWidth(20),
        vertical: ScreenUtil().setHeight(20),
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
          SizedBox(height: ScreenUtil().setHeight(12)),
          _buildQuestionLabel(context),
          SizedBox(height: ScreenUtil().setHeight(8)),
          _buildQuestionText(context),
          SizedBox(height: ScreenUtil().setHeight(12)),
          _buildStatsRow(context),
          SizedBox(height: ScreenUtil().setHeight(12)),
          _buildActionButton(context),
        ],
      ),
    );
  }

  Widget _buildCategoryBadge(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: ScreenUtil().setWidth(8),
        vertical: ScreenUtil().setHeight(4),
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
            size: ScreenUtil().setWidth(14),
            color: AppColors.primary,
          ),
          SizedBox(width: ScreenUtil().setWidth(4)),
          Text(
            category,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontFamily: FontFamily.tajawal,
              fontSize: ScreenUtil().setSp(12),
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
        horizontal: ScreenUtil().setWidth(8),
        vertical: ScreenUtil().setHeight(2),
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
          fontSize: ScreenUtil().setSp(12),
        ),
      ),
    );
  }

  Widget _buildQuestionText(BuildContext context) {
    return Text(
      question,
      style: TextStyle(
        fontSize: ScreenUtil().setSp(
          context.deviceValue(
            mobile: 13.0,
            tablet: 15.0,
            desktop: 17.0,
          ),
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
        SizedBox(width: ScreenUtil().setWidth(8)),
        _buildViewsChip(context),
      ],
    );
  }

  Widget _buildFatwaNumber(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: ScreenUtil().setWidth(8),
        vertical: ScreenUtil().setHeight(4),
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
              fontSize: ScreenUtil().setSp(12),
              color: AppColors.primary,
            ),
          ),
          Text(
            fatwaNumber,
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: ScreenUtil().setSp(12),
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
        horizontal: ScreenUtil().setWidth(6),
        vertical: ScreenUtil().setHeight(4),
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
            size: ScreenUtil().setWidth(14),
            color: Colors.grey[600],
          ),
          SizedBox(width: ScreenUtil().setWidth(4)),
          Text(
            date,
            style: TextStyle(
              fontSize: ScreenUtil().setSp(11),
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
        horizontal: ScreenUtil().setWidth(6),
        vertical: ScreenUtil().setHeight(4),
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
            size: ScreenUtil().setWidth(14),
            color: Colors.grey[600],
          ),
          SizedBox(width: ScreenUtil().setWidth(4)),
          Text(
            views,
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: ScreenUtil().setSp(11),
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
          horizontal: ScreenUtil().setWidth(16),
          vertical: ScreenUtil().setHeight(14),
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
                fontSize: ScreenUtil().setSp(
                  context.deviceValue(
                    mobile: 14.0,
                    tablet: 16.0,
                    desktop: 18.0,
                  ),
                ),
              ),
            ),
            SizedBox(width: ScreenUtil().setWidth(8)),
            Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
              size: ScreenUtil().setWidth(16),
            ),
          ],
        ),
      ),
    );
  }
}
