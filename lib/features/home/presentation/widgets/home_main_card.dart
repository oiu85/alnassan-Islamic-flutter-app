import 'package:flutter/material.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nassan_app/core/utils/responsive.dart';
import 'package:nassan_app/gen/assets.gen.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import 'package:nassan_app/features/html_viewer/presentation/adapters/home_to_html_viewer_adapter.dart';
import '../bloc/home_state.dart';

class HomeMainCard extends StatelessWidget {
  final HomeState state;

  const HomeMainCard({super.key, required this.state});
  // Using extension methods for easier access
  // No need for helper methods - use extensions directly: 25.w, 30.h, 16.sp

  @override
  Widget build(BuildContext context) {
    return Container(
      height: responsiveLayoutValue(context, mobile: 200.h, tablet: 300.h),
      decoration: BoxDecoration(
        color: AppColors.secondary,
        gradient: LinearGradient(
          colors: [AppColors.white, AppColors.secondary],
          stops: [0.02, 0.5],
          begin: Alignment.topLeft,
        ),
        borderRadius: BorderRadius.circular(20.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            spreadRadius: 1.r,
            blurRadius: 5.r,
          ),
        ],
      ),
      child: Stack(
        children: [
          Container(
            padding: homeMainCardTextPadding(context),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // بسم الله الرحمن الرحيم
                Flexible(
                  child: Text(
                    "بسم الله الرحمن الرحيم",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24.sp,
                      fontFamily: FontFamily.amiri,
                      fontWeight: FontWeight.bold,
                      color: AppColors.black,
                      height: 2.0,
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                // Article title
                Flexible(
                  child: Text(
                    state.homeData?.data?.article?.articleTitle ??
                        'لا يوجد عنوان متاح',
                    textAlign: TextAlign.center,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: FontFamily.tajawal,
                      fontWeight: FontWeight.bold,
                      height: 1.0,
                    ),
                  ),
                ),
                SizedBox(height: 8.h),
                InkWell(
                  onTap: () {
                    try {
                      if (state.homeData?.data?.article != null) {
                        final articleId =
                            state.homeData?.data?.article?.articleId;
                        if (articleId != null) {
                          HomeToHtmlViewerAdapter.navigateToHtmlViewerFromArticle(
                            context,
                            state.homeData?.data?.article,
                          );
                        }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('لا يوجد مقال لعرضه')),
                        );
                      }
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('حدث خطأ في عرض المقال')),
                      );
                    }
                  },
                  child: Text(
                    'المزيد',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontFamily: FontFamily.tajawal,
                      fontWeight: FontWeight.bold,
                      color: AppColors.black,
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
              ],
            ),
          ),
          Positioned(
            top: (-16).h,
            right: (-14).w,
            child: ClipRRect(
              borderRadius: BorderRadius.only(topRight: Radius.circular(180.r)),
              child: Image.asset(
                Assets.images.circulerZh.path,
                width: 76.w,
                height: 76.h,
              ),
            ),
          ),
          Positioned(
            top: (-16).h,
            left: (-14).w,
            child: ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(180.r)),
              child: Image.asset(
                Assets.images.circulerZh.path,
                width: 76.w,
                height: 76.h,
              ),
            ),
          ),
          Positioned(
            bottom: (-16).h,
            right: (-14).w,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(180.r),
              ),
              child: Image.asset(
                Assets.images.circulerZh.path,
                width: 76.w,
                height: 76.h,
              ),
            ),
          ),
          Positioned(
            bottom: (-16).h,
            left: (-14).w,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(180.r),
              ),
              child: Image.asset(
                Assets.images.circulerZh.path,
                width: 76.w,
                height: 76.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
