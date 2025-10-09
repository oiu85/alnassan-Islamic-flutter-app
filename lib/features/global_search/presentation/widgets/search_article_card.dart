import 'package:flutter/material.dart';
import 'package:nassan_app/core/responsive/device_type.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import '../../data/model/search_article_model.dart';

class SearchArticleCard extends StatelessWidget {
  final SearchArticleModel article;
  final VoidCallback? onTap;

  const SearchArticleCard({
    super.key,
    required this.article,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 8.h,
      ),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12.r),
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // Article Content
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Text(
                      article.title,
                      style: TextStyle(
                        fontFamily: FontFamily.tajawal,
                        fontSize: context.deviceValue(
                          mobile: 15.f,
                          tablet: 16.f,
                          desktop: 18.f,
                        ),
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                        height: 1.3,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 8.h),
                    // Summary
                    Text(
                      article.summary,
                      style: TextStyle(
                        fontFamily: FontFamily.tajawal,
                        fontSize: context.deviceValue(
                          mobile: 13.f,
                          tablet: 14.f,
                          desktop: 16.f,
                        ),
                        color: AppColors.grey,
                        height: 1.4,
                      ),
                      maxLines: context.deviceValue(
                        mobile: MediaQuery.of(context).size.width < 360 ? 2 : 3,
                        tablet: 4,
                        desktop: 5,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),

                  ],
                ),
              ),
              // Arrow Icon
              Icon(
                Icons.arrow_forward_ios,
                size: 16.f,
                color: AppColors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _formatDate(String dateString) {
    try {
      final date = DateTime.parse(dateString);
      return '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';
    } catch (e) {
      return dateString;
    }
  }
}
