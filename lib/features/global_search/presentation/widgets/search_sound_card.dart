import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
              // Sound Image
              Container(
                width: ScreenUtil().setWidth(80),
                height: ScreenUtil().setHeight(80),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(ScreenUtil().setWidth(8)),
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
                          borderRadius: BorderRadius.circular(ScreenUtil().setWidth(8)),
                        ),
                        child: Icon(
                          Icons.headphones,
                          color: AppColors.grey,
                          size: ScreenUtil().setWidth(32),
                        ),
                      )
                    : null,
              ),
              SizedBox(width: ScreenUtil().setWidth(12)),
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
                        fontSize: ScreenUtil().setSp(16),
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                        height: 1.3,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: ScreenUtil().setHeight(8)),
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
                        sound.category,
                        style: TextStyle(
                          fontFamily: FontFamily.tajawal,
                          fontSize: ScreenUtil().setSp(12),
                          color: AppColors.primary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: ScreenUtil().setHeight(12)),
                    // Stats Row
                    Row(
                      children: [
                        // Plays
                        Icon(
                          Icons.play_arrow,
                          size: ScreenUtil().setWidth(16),
                          color: AppColors.primary,
                        ),
                        SizedBox(width: ScreenUtil().setWidth(4)),
                        Text(
                          sound.plays,
                          style: TextStyle(
                            fontFamily: FontFamily.tajawal,
                            fontSize: ScreenUtil().setSp(12),
                            color: AppColors.grey,
                          ),
                        ),
                        SizedBox(width: ScreenUtil().setWidth(16)),
                        // Date
                        Icon(
                          Icons.calendar_today,
                          size: ScreenUtil().setWidth(16),
                          color: AppColors.grey,
                        ),
                        SizedBox(width: ScreenUtil().setWidth(4)),
                        Text(
                          _formatDate(sound.date),
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
              // Play Button
              Container(
                width: ScreenUtil().setWidth(40),
                height: ScreenUtil().setHeight(40),
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: ScreenUtil().setWidth(24),
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
