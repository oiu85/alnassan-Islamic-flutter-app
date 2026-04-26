import 'package:flutter/material.dart';
import 'package:nassan_app/core/utils/device_layout.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import '../../data/model/search_advisory_model.dart';

class SearchAdvisoryCard extends StatelessWidget {
  final SearchAdvisoryModel advisory;
  final VoidCallback? onTap;

  const SearchAdvisoryCard({
    super.key,
    required this.advisory,
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
              // Advisory Image
              Container(
                width: MediaQuery.of(context).size.width < 360 ? 60.w : 80.w,
                height: MediaQuery.of(context).size.width < 360 ? 60.h : 80.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  image: advisory.image.isNotEmpty && advisory.image.startsWith('http')
                      ? DecorationImage(
                          image: NetworkImage(advisory.image),
                          fit: BoxFit.cover,
                          onError: (exception, stackTrace) {
                            // Handle image load error
                          },
                        )
                      : null,
                ),
                child: advisory.image.isEmpty || !advisory.image.startsWith('http')
                    ? Container(
                        decoration: BoxDecoration(
                          color: AppColors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Icon(
                          Icons.help_outline,
                          color: AppColors.grey,
                          size: 32.sp,
                        ),
                      )
                    : null,
              ),
              SizedBox(width: 12.w),
              // Advisory Content
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Text(
                      advisory.title,
                      style: TextStyle(
                        fontFamily: FontFamily.tajawal,
                        fontSize: context.deviceValue(
                          mobile: 15.sp,
                          tablet: 16.sp,
                          desktop: 18.sp,
                        ),
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                        height: 1.3,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 8.h),
                    // Question preview
                    Text(
                      advisory.question.isNotEmpty ? advisory.question : advisory.summary,
                      style: TextStyle(
                        fontFamily: FontFamily.tajawal,
                        fontSize: context.deviceValue(
                          mobile: 13.sp,
                          tablet: 14.sp,
                          desktop: 16.sp,
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
                    SizedBox(height: 12.h),
                    // Category and Date
                    Row(
                      children: [
                        // Category
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.w,
                            vertical: 4.h,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.primary.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Text(
                            advisory.categoryName.isNotEmpty ? advisory.categoryName : 'فتوى',
                            style: TextStyle(
                              fontFamily: FontFamily.tajawal,
                              fontSize: 12.sp,
                              color: AppColors.primary,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        SizedBox(width: 8.w),
                        // Date
                        Icon(
                          Icons.calendar_today,
                          size: 16.sp,
                          color: AppColors.grey,
                        ),
                        SizedBox(width: 4.w),
                        Text(
                          _formatDate(advisory.date),
                          style: TextStyle(
                            fontFamily: FontFamily.tajawal,
                            fontSize: 12.sp,
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
                size: 16.sp,
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
