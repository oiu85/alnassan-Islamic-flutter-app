import 'package:flutter/material.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import '../../data/model/notification_model.dart';

class NotificationCard extends StatelessWidget {
  final NotificationItem notification;
  final VoidCallback? onTap;

  const NotificationCard({
    super.key,
    required this.notification,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 4.h),
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
              // Content
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Text(
                      notification.title ?? 'إشعار',
                      style: TextStyle(
                        fontSize: 16.f,
                        fontFamily: FontFamily.tajawal,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 4.h),
                    
                    // Message
                    Text(
                      notification.message ?? '',
                      style: TextStyle(
                        fontSize: 14.f,
                        fontFamily: FontFamily.tajawal,
                        color: Colors.grey[600],
                        height: 1.4,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 8.h),
                    
                    // Time and type
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          size: 14.f,
                          color: Colors.grey[500],
                        ),
                        SizedBox(width: 4.w),
                        Text(
                          _formatDate(notification.createdAt),
                          style: TextStyle(
                            fontSize: 12.f,
                            fontFamily: FontFamily.tajawal,
                            color: Colors.grey[500],
                          ),
                        ),
                        SizedBox(width: 16.w),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
                          decoration: BoxDecoration(
                            color: _getTypeColor(notification.type).withValues(alpha: 0.1),
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Text(
                            _getTypeLabel(notification.type),
                            style: TextStyle(
                              fontSize: 10.f,
                              fontFamily: FontFamily.tajawal,
                              color: _getTypeColor(notification.type),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              
              // Arrow icon
              Icon(
                Icons.arrow_forward_ios,
                size: 16.f,
                color: Colors.grey[400],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color _getTypeColor(String? type) {
    switch (type) {
      case 'book':
        return Colors.blue;
      case 'article':
        return Colors.green;
      case 'video':
        return Colors.red;
      case 'audio':
        return Colors.orange;
      case 'fatwa':
        return Colors.purple;
      default:
        return Colors.grey;
    }
  }

  String _getTypeLabel(String? type) {
    switch (type) {
      case 'book':
        return 'كتاب';
      case 'article':
        return 'مقال';
      case 'video':
        return 'فيديو';
      case 'audio':
        return 'صوتي';
      case 'fatwa':
        return 'فتوى';
      default:
        return 'إشعار';
    }
  }

  String _formatDate(String? dateString) {
    if (dateString == null || dateString.isEmpty) {
      return 'غير محدد';
    }

    try {
      final date = DateTime.parse(dateString);
      final now = DateTime.now();
      final difference = now.difference(date);

      if (difference.inDays > 0) {
        return 'منذ ${difference.inDays} يوم';
      } else if (difference.inHours > 0) {
        return 'منذ ${difference.inHours} ساعة';
      } else if (difference.inMinutes > 0) {
        return 'منذ ${difference.inMinutes} دقيقة';
      } else {
        return 'الآن';
      }
    } catch (e) {
      return dateString;
    }
  }
}
