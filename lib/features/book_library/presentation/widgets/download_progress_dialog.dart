import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../config/appconfig/app_colors.dart';
import '../../../../gen/fonts.gen.dart';

/// Dialog to show download progress
class DownloadProgressDialog extends StatefulWidget {
  final String fileName;
  final VoidCallback onCancel;

  const DownloadProgressDialog({
    super.key,
    required this.fileName,
    required this.onCancel,
  });

  @override
  State<DownloadProgressDialog> createState() => DownloadProgressDialogState();
}

class DownloadProgressDialogState extends State<DownloadProgressDialog> {
  double _progress = 0.0;

  /// Update progress value
  void updateProgress(double progress) {
    if (mounted) {
      setState(() {
        _progress = progress;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'جاري التحميل',
        style: TextStyle(
          fontFamily: FontFamily.tajawal,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            widget.fileName,
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: 14.0.sp,
            ),
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 20.0.h),
          LinearProgressIndicator(
            value: _progress,
            backgroundColor: Colors.grey[300],
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
          ),
          SizedBox(height: 8.0.h),
          Text(
            '${(_progress * 100).toInt()}%',
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: 14.0.sp,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: widget.onCancel,
          child: Text(
            'إلغاء',
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              color: Colors.red,
            ),
          ),
        ),
      ],
    );
  }
}
