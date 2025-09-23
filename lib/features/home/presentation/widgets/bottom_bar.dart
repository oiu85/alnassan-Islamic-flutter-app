import 'package:flutter/material.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/core/responsive/device_type.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
import 'package:nassan_app/gen/fonts.gen.dart';

import '../../../../gen/assets.gen.dart';

class BottomNavBarWidget extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavBarWidget({
    super.key, 
    required this.currentIndex,
    required this.onTap,
  });

  @override
  State<BottomNavBarWidget> createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {

  // Using extension methods for easier access
  // No need for helper methods - use extensions directly: 25.w, 30.h, 16.f

  Widget buildNavItem(
    String title,
    String imagePath,
    int index,
    double iconSize,
  ) {
    final isActive = widget.currentIndex == index;
    
    return GestureDetector(
      onTap: () => widget.onTap(index),
      child: SizedBox(
        height: 52.h,
        child: Column(
          children: [
            Image.asset(
              imagePath,
              width: iconSize.w,
              height: iconSize.h,
              color: isActive ? AppColors.primary : AppColors.grey,
            ),
            SizedBox(height: 2.h),
            Text(
              title,
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                color: isActive ? AppColors.primary : AppColors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final iconSize = context.deviceValue(
      mobile: 30.0,
      tablet: 40.0,
      desktop: 50.0,
    );

    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
                    color: Colors.black.withValues(alpha: 0.6),
            spreadRadius: 5.r,
            blurRadius: 12.r,
            offset: Offset(0, 9.h),
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20.w,
        vertical: 3.h,
      ),
      margin: EdgeInsets.only(
        right: 12.w,
        left: 12.w,
        bottom: 20.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildNavItem(
            "الرئيسية",
            Assets.images.home2.path,
            0,
            iconSize,
          ),
          buildNavItem(
            "البحث",
            Assets.images.search.path,
            1,
            iconSize,
          ),
          buildNavItem(
            "إضافة فتوى",
            Assets.images.messageAdd.path,
            2,
            iconSize,
          ),
          buildNavItem(
            "الكتب والمؤلفات",
            Assets.images.book.path,
            3,
            iconSize,
          ),
        ],
      ),
    );
  }
}
