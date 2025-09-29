import 'package:flutter/material.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import '../../data/services/sound_storage_permission_service.dart';

/// A widget that handles storage permission requests for sound downloads
class SoundPermissionHandler extends StatelessWidget {
  /// The child widget to display when permission is granted
  final Widget child;
  
  /// The function to call when permission is granted
  final VoidCallback onPermissionGranted;

  const SoundPermissionHandler({
    super.key,
    required this.child,
    required this.onPermissionGranted,
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: SoundStoragePermissionService.hasStoragePermission(),
      builder: (context, snapshot) {
        // While checking permission
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }

        // If permission is already granted
        if (snapshot.data == true) {
          // Call the callback and show the child
          WidgetsBinding.instance.addPostFrameCallback((_) {
            onPermissionGranted();
          });
          return child;
        }

        // If permission is not granted, show request UI
        return Center(
          child: Padding(
            padding: EdgeInsets.all(20.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.folder_open,
                  size: 60.f,
                  color: AppColors.primary,
                ),
                SizedBox(height: 20.h),
                Text(
                  'إذن التخزين مطلوب',
                  style: TextStyle(
                    fontFamily: FontFamily.tajawal,
                    fontSize: 20.f,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10.h),
                Text(
                  'نحتاج إلى إذن للوصول إلى وحدة التخزين لتنزيل الملفات الصوتية',
                  style: TextStyle(
                    fontFamily: FontFamily.tajawal,
                    fontSize: 16.f,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30.h),
                ElevatedButton(
                  onPressed: () async {
                    final granted = await SoundStoragePermissionService.requestStoragePermission(context);
                    if (granted && context.mounted) {
                      onPermissionGranted();
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 12.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.r),
                    ),
                  ),
                  child: Text(
                    'منح الإذن',
                    style: TextStyle(
                      fontFamily: FontFamily.tajawal,
                      fontSize: 16.f,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}












