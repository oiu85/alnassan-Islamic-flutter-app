
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';

import '../../../../config/appconfig/app_colors.dart';
import '../../../../gen/fonts.gen.dart';

Widget lessonCardBuild({
  required BuildContext context,
  required String lesson,
  required String viewCont,
  required String title,
  required String imagePath,
  required String imageNamePath,
  required double width,
  required double height,
  required double imageWidth,
  required double imageHeight,
  bool isLoading = false,
  VoidCallback? onTap,
}) {
  // Using extension methods for easier access
  // No need for helper methods - use extensions directly: 25.w, 30.h, 16.f

  return SizedBox(
    height: height,
    width: width,
    child: Card(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Stack(
              children: [
                Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  width: width,
                  height: height,
                ),

                Padding(
                  padding: EdgeInsets.only(top: 40.h),
                  child: Center(
                    child: Text(
                      title,
                      style: TextStyle(
                        fontFamily: FontFamily.tajawal,
                        fontSize: 13.f,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(imageNamePath),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "الدرس:",
                  style: TextStyle(
                    fontSize: 13.f,
                    fontFamily: FontFamily.tajawal,
                    color: AppColors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      viewCont,
                      style: TextStyle(
                        fontSize: 12.f,
                        fontFamily: FontFamily.tajawal,
                        color: AppColors.grey,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.remove_red_eye_outlined),
                      iconSize: 24.f,
                      color: AppColors.grey,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Text(
              lesson,
              style: TextStyle(
                fontSize: 12.f,
                fontFamily: FontFamily.tajawal,
                color: AppColors.grey,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          GestureDetector(
            onTap: isLoading ? null : onTap,
            child: Container(
              margin: EdgeInsets.only(bottom: 4.h),
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80.r),
                color: isLoading ? AppColors.grey : AppColors.primary,
              ),
              child: isLoading
                  ? SizedBox(
                width: 20.w,
                height: 20.h,
                child: CircularProgressIndicator(
                  strokeWidth: 2.w,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              )
                  : Text(
                "عرض التفاصيل",
                style: TextStyle(
                  fontFamily: FontFamily.tajawal,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12.f,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
