import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/core/responsive/device_type.dart';
import 'package:nassan_app/gen/assets.gen.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import 'package:nassan_app/features/html_viewer/presentation/adapters/home_to_html_viewer_adapter.dart';
import '../bloc/home_state.dart';

class HomeMainCard extends StatelessWidget {
  final HomeState state;
  
  const HomeMainCard({
    super.key,
    required this.state,
  });

  // Helper methods for responsive sizing
  double _fontSize(double size) => ScreenUtil().setSp(size);
  double _width(double size) => ScreenUtil().setWidth(size);
  double _height(double size) => ScreenUtil().setHeight(size);
  double _radius(double size) => ScreenUtil().radius(size);

  @override
  Widget build(BuildContext context) {

    return Container(
      height: context.deviceValue(
        mobile: 200.h,
        tablet: 260.h,
        desktop: 300.h,
      ),
      decoration: BoxDecoration(
        color: AppColors.secondary,
        gradient: LinearGradient(
          colors: [AppColors.white, AppColors.secondary],
          stops: [0.02, 0.5],
          begin: Alignment.topLeft,
        ),
        borderRadius: BorderRadius.circular(_radius(20)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: _radius(1),
            blurRadius: _radius(5),
          ),
        ],
      ),
      child: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: _width(25)),
                  child: Center(
                    child: Text(
                      state.homeData?.data?.recentArticles?.isNotEmpty == true
                          ? (state
                          .homeData
                          ?.data
                          ?.recentArticles
                          ?.first
                          .articleSummary
                          ?.split('\n')
                          .take(5)
                          .join('\n') ??
                          '')
                          : 'لا يوجد محتوى متاح',
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: _fontSize(16),
                        fontFamily: FontFamily.tajawal,
                        height: 1.5,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: _height(10)),
                GestureDetector(
                  onTap: () {
                    try {
                      if (state.homeData?.data?.recentArticles?.isNotEmpty ==
                          true) {
                        final articleId =
                            state.homeData?.data?.recentArticles?.first.articleId;
                        if (articleId != null) {
                          HomeToHtmlViewerAdapter.navigateToHtmlViewerFromArticle(
                            context,
                            state.homeData?.data?.recentArticles?.first,
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
                      fontSize: _fontSize(16),
                      fontFamily: FontFamily.tajawal,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: _height(-16),
            right: _width(-14),
            child: ClipRRect(
              borderRadius: BorderRadius.only(topRight: Radius.circular(180)),
              child: Image.asset(
                Assets.images.circulerZh.path,
                width: _width(76),
                height: _height(76),
              ),
            ),
          ),
          Positioned(
            top: _height(-16),
            left: _width(-14),
            child: ClipRRect(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(180)),
              child: Image.asset(
                Assets.images.circulerZh.path,
                width: _width(76),
                height: _height(76),
              ),
            ),
          ),
          Positioned(
            bottom: _height(-16),
            right: _width(-14),
            child: ClipRRect(
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(180)),
              child: Image.asset(
                Assets.images.circulerZh.path,
                width: _width(76),
                height: _height(76),
              ),
            ),
          ),
          Positioned(
            bottom: _height(-16),
            left: _width(-14),
            child: ClipRRect(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(180)),
              child: Image.asset(
                Assets.images.circulerZh.path,
                width: _width(76),
                height: _height(76),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
