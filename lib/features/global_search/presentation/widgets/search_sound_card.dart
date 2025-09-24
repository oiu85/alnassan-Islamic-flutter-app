import 'package:flutter/material.dart';
import 'package:nassan_app/core/responsive/device_type.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import '../../data/model/search_sound_model.dart';

class SearchSoundCard extends StatelessWidget {
  final SearchSoundModel sound;
  final VoidCallback? onTap;

  const SearchSoundCard({
    super.key,
    required this.sound,
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
              // Sound Image
              Container(
                width: MediaQuery.of(context).size.width < 360 ? 60.w : 80.w,
                height: MediaQuery.of(context).size.width < 360 ? 60.h : 80.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  image: sound.image.startsWith('http')
                      ? DecorationImage(
                          image: NetworkImage(sound.image),
                          fit: BoxFit.cover,
                          onError: (exception, stackTrace) {
                            // Handle image load error
                          },
                        )
                      : DecorationImage(
                          image: AssetImage(sound.image),
                          fit: BoxFit.cover,
                        ),
                ),
                child: sound.image.isEmpty
                    ? Container(
                        decoration: BoxDecoration(
                          color: AppColors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Icon(
                          Icons.headphones,
                          color: AppColors.grey,
                          size: 32.f,
                        ),
                      )
                    : null,
              ),
              SizedBox(width: 12.w),
              // Sound Content
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Text(
                      sound.title,
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
                        sound.category,
                        style: TextStyle(
                          fontFamily: FontFamily.tajawal,
                          fontSize: 12.f,
                          color: AppColors.primary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 12.h),
                    // Stats Row
                    Row(
                      children: [
                        // Plays
                        Icon(
                          Icons.play_arrow,
                          size: 16.f,
                          color: AppColors.primary,
                        ),
                        SizedBox(width: 4.w),
                        Text(
                          sound.plays,
                          style: TextStyle(
                            fontFamily: FontFamily.tajawal,
                            fontSize: 12.f,
                            color: AppColors.grey,
                          ),
                        ),
                        SizedBox(width: 16.w),
                        // Date
                        Icon(
                          Icons.calendar_today,
                          size: 16.f,
                          color: AppColors.grey,
                        ),
                        SizedBox(width: 4.w),
                        Text(
                          _formatDate(sound.date),
                          style: TextStyle(
                            fontFamily: FontFamily.tajawal,
                            fontSize: 12.f,
                            color: AppColors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Play Button
              Container(
                width: context.deviceValue(
                  mobile: MediaQuery.of(context).size.width < 360 ? 36.w : 40.w,
                  tablet: 44.w,
                  desktop: 48.w,
                ),
                height: context.deviceValue(
                  mobile: MediaQuery.of(context).size.width < 360 ? 36.h : 40.h,
                  tablet: 44.h,
                  desktop: 48.h,
                ),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 24.f,
                ),
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
