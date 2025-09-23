import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        horizontal: ScreenUtil().setWidth(16),
        vertical: ScreenUtil().setHeight(8),
      ),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(ScreenUtil().setWidth(12)),
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(ScreenUtil().setWidth(12)),
        child: Padding(
          padding: EdgeInsets.all(ScreenUtil().setWidth(16)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Article Image
              Container(
                width: ScreenUtil().setWidth(80),
                height: ScreenUtil().setHeight(80),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(ScreenUtil().setWidth(8)),
                  image: article.image.startsWith('http')
                      ? DecorationImage(
                          image: NetworkImage(article.image),
                          fit: BoxFit.cover,
                          onError: (exception, stackTrace) {
                            // Handle image load error
                          },
                        )
                      : DecorationImage(
                          image: AssetImage(article.image),
                          fit: BoxFit.cover,
                        ),
                ),
                child: article.image.isEmpty
                    ? Container(
                        decoration: BoxDecoration(
                          color: AppColors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(ScreenUtil().setWidth(8)),
                        ),
                        child: Icon(
                          Icons.article_outlined,
                          color: AppColors.grey,
                          size: ScreenUtil().setWidth(32),
                        ),
                      )
                    : null,
              ),
              SizedBox(width: ScreenUtil().setWidth(12)),
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
                        fontSize: ScreenUtil().setSp(16),
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                        height: 1.3,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: ScreenUtil().setHeight(8)),
                    // Summary
                    Text(
                      article.summary,
                      style: TextStyle(
                        fontFamily: FontFamily.tajawal,
                        fontSize: ScreenUtil().setSp(14),
                        color: AppColors.grey,
                        height: 1.4,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: ScreenUtil().setHeight(12)),
                    // Category and Date
                    Row(
                      children: [
                        // Category
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: ScreenUtil().setWidth(8),
                            vertical: ScreenUtil().setHeight(4),
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.primary.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(ScreenUtil().setWidth(12)),
                          ),
                          child: Text(
                            article.category,
                            style: TextStyle(
                              fontFamily: FontFamily.tajawal,
                              fontSize: ScreenUtil().setSp(12),
                              color: AppColors.primary,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(width: ScreenUtil().setWidth(8)),
                        // Date
                        Icon(
                          Icons.calendar_today,
                          size: ScreenUtil().setWidth(16),
                          color: AppColors.grey,
                        ),
                        SizedBox(width: ScreenUtil().setWidth(4)),
                        Text(
                          _formatDate(article.date),
                          style: TextStyle(
                            fontFamily: FontFamily.tajawal,
                            fontSize: ScreenUtil().setSp(12),
                            color: AppColors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Arrow Icon
              Icon(
                Icons.arrow_forward_ios,
                size: ScreenUtil().setWidth(16),
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
