
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
  // Helper methods for responsive sizing
  double _fontSize(double size) => ScreenUtil().setSp(size);
  double _width(double size) => ScreenUtil().setWidth(size);
  double _height(double size) => ScreenUtil().setHeight(size);
  double _radius(double size) => ScreenUtil().radius(size);

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
                  padding: EdgeInsets.only(top: _height(40)),
                  child: Center(
                    child: Text(
                      title,
                      style: TextStyle(
                        fontFamily: FontFamily.tajawal,
                        fontSize: _fontSize(13),
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
            padding: EdgeInsets.symmetric(horizontal: _width(8)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "الدرس:",
                  style: TextStyle(
                    fontSize: _fontSize(13),
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
                        fontSize: _fontSize(12),
                        fontFamily: FontFamily.tajawal,
                        color: AppColors.grey,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.remove_red_eye_outlined),
                      iconSize: _fontSize(24),
                      color: AppColors.grey,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: _width(8)),
            child: Text(
              lesson,
              style: TextStyle(
                fontSize: _fontSize(12),
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
              margin: EdgeInsets.only(bottom: _height(4)),
              padding: EdgeInsets.symmetric(horizontal: _width(20), vertical: _height(10)),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(_radius(80)),
                color: isLoading ? AppColors.grey : AppColors.primary,
              ),
              child: isLoading
                  ? SizedBox(
                width: _width(20),
                height: _height(20),
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              )
                  : Text(
                "عرض التفاصيل",
                style: TextStyle(
                  fontFamily: FontFamily.tajawal,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: _fontSize(12),
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
