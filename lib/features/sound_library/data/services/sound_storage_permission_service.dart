import 'dart:io';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:device_info_plus/device_info_plus.dart';

/// Service to handle storage permissions specifically for the Downloads folder
/// ⚠️ MODIFIED: Only requests permissions for Android 12 and below (API 32 and below)
/// Android 13+ (API 33+) bypasses permission checks
class SoundStoragePermissionService {
  /// Check if storage permission is granted
  /// For Android 13+ (API 33+): Always returns true (no permission needed)
  /// For Android 12 and below (API 32 and below): Checks actual permission status
  static Future<bool> hasStoragePermission() async {
    if (!Platform.isAndroid) {
      return true;
    }

    try {
      final deviceInfo = DeviceInfoPlugin();
      final androidInfo = await deviceInfo.androidInfo;
      final sdkInt = androidInfo.version.sdkInt;
      
      // Android 13+ (API 33+) - No permission check needed
      if (sdkInt >= 33) {
        debugPrint('📱 Android $sdkInt detected - Skipping permission check (Android 13+)');
        return true;
      }
      
      debugPrint('📱 Android $sdkInt detected - Checking storage permission (Android 12 or below)');
      
      // Android 11-12 (API 30-32) - No permission needed, Downloads folder is accessible
      if (sdkInt >= 30) {
        debugPrint('📱 Android 11-12: Downloads folder accessible without permission');
        return true;
      }
      
      // Android 10 and below (API 29 and below) - Requires STORAGE permission
      return await Permission.storage.isGranted;
    } catch (e) {
      debugPrint('❌ Error checking storage permission: $e');
      // If there's an error checking permissions, assume not granted
      return false;
    }
  }

  /// Request storage permission with dialog
  /// For Android 13+ (API 33+): Always returns true (no permission needed)
  /// For Android 12 and below (API 32 and below): Requests actual permission
  static Future<bool> requestStoragePermission(BuildContext? context) async {
    if (!Platform.isAndroid) {
      return true;
    }

    try {
      final deviceInfo = DeviceInfoPlugin();
      final androidInfo = await deviceInfo.androidInfo;
      final sdkInt = androidInfo.version.sdkInt;
      
      // Android 13+ (API 33+) - No permission request needed
      if (sdkInt >= 33) {
        debugPrint('📱 Android $sdkInt detected - No permission request needed (Android 13+)');
        return true;
      }
      
      debugPrint('📱 Android $sdkInt detected - Requesting storage permission (Android 12 or below)');
      
      // Android 11-12 (API 30-32) - No permission needed, Downloads folder is accessible
      if (sdkInt >= 30) {
        debugPrint('📱 Android 11-12: Downloads folder accessible without permission');
        return true;
      }
      
      // Android 10 and below (API 29 and below) - Requires STORAGE permission
      final status = await Permission.storage.request();
      
      if (status.isPermanentlyDenied && context != null) {
        final shouldOpenSettings = await _showPermissionDialog(
          context,
          'يحتاج التطبيق إلى إذن التخزين لحفظ الملفات الصوتية.\n\nيرجى منح الإذن من إعدادات التطبيق.',
        );
        if (shouldOpenSettings) {
          await openAppSettings();
          await Future.delayed(const Duration(milliseconds: 500));
          final newStatus = await Permission.storage.status;
          return newStatus.isGranted;
        }
        return false;
      }
      
      return status.isGranted;
    } catch (e) {
      debugPrint('❌ Error requesting storage permission: $e');
      // If there's an error, show generic error and return false
      if (context != null) {
        await _showErrorDialog(context, 'حدث خطأ أثناء طلب الإذن: ${e.toString()}');
      }
      return false;
    }
  }

  /// Show dialog to request user to open settings
  static Future<bool> _showPermissionDialog(BuildContext context, String message) async {
    return await showDialog<bool>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'إذن الوصول للتخزين',
            textAlign: TextAlign.right,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          content: Text(
            message,
            textAlign: TextAlign.right,
            style: const TextStyle(height: 1.5),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('إلغاء'),
              onPressed: () => Navigator.of(context).pop(false),
            ),
            TextButton(
              child: const Text(
                'فتح الإعدادات',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onPressed: () => Navigator.of(context).pop(true),
            ),
          ],
        );
      },
    ) ?? false;
  }

  /// Show error dialog
  static Future<void> _showErrorDialog(BuildContext context, String message) async {
    return await showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'خطأ',
            textAlign: TextAlign.right,
            style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
          content: Text(
            message,
            textAlign: TextAlign.right,
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('حسناً'),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        );
      },
    );
  }

  /// Check if file is accessible
  static Future<bool> canAccessFile(String filePath) async {
    try {
      final file = File(filePath);
      final exists = await file.exists();
      if (!exists) {
        return false;
      }
      
      // Try to check if we can read the file
      await file.length();
      return true;
    } catch (e) {
      return false;
    }
  }
}












