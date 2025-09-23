import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/core/responsive/device_type.dart';
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

  // Helper methods for responsive sizing
  double _width(double size) => ScreenUtil().setWidth(size);
  double _height(double size) => ScreenUtil().setHeight(size);
  double _radius(double size) => ScreenUtil().radius(size);

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
        height: _height(52),
        child: Column(
          children: [
            Image.asset(
              imagePath,
              width: _width(iconSize),
              height: _height(iconSize),
              color: isActive ? AppColors.primary : AppColors.grey,
            ),
            SizedBox(height: _height(2)),
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
        borderRadius: BorderRadius.circular(_radius(20)),
        boxShadow: [
          BoxShadow(
                    color: Colors.black.withValues(alpha: 0.6),
            spreadRadius: _radius(5),
            blurRadius: _radius(12),
            offset: Offset(0, _height(9)),
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(
        horizontal: _width(20),
        vertical: _height(3),
      ),
      margin: EdgeInsets.only(
        right: _width(12),
        left: _width(12),
        bottom: _height(20),
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
