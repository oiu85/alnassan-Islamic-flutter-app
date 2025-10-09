import 'dart:io';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:device_info_plus/device_info_plus.dart';

/// Service to handle storage permissions specifically for the Downloads folder
class StoragePermissionService {
  /// Check if storage permission is granted
  static Future<bool> hasStoragePermission() async {
    if (!Platform.isAndroid) {
      return true;
    }

    try {
      final deviceInfo = DeviceInfoPlugin();
      final androidInfo = await deviceInfo.androidInfo;
      final sdkInt = androidInfo.version.sdkInt;
      
      // Android 11+ (API 30+) - including Android 13, 14, 15, 16+
      // Requires MANAGE_EXTERNAL_STORAGE for accessing Download folder
      if (sdkInt >= 30) {
        final manageStorageStatus = await Permission.manageExternalStorage.status;
        return manageStorageStatus.isGranted;
      }
      
      // Android 10 and below (API 29 and below)
      return await Permission.storage.isGranted;
    } catch (e) {
      // If there's an error checking permissions, assume not granted
      return false;
    }
  }

  /// Request storage permission with dialog
  static Future<bool> requestStoragePermission(BuildContext? context) async {
    if (!Platform.isAndroid) {
      return true;
    }

    try {
      final deviceInfo = DeviceInfoPlugin();
      final androidInfo = await deviceInfo.androidInfo;
      final sdkInt = androidInfo.version.sdkInt;
      
      // Android 11+ (API 30+) - including Android 13, 14, 15, 16+
      // Requires MANAGE_EXTERNAL_STORAGE for accessing Download folder
      if (sdkInt >= 30) {
        final manageStorageStatus = await Permission.manageExternalStorage.status;
        
        if (manageStorageStatus.isGranted) {
          return true;
        }
        
        if (manageStorageStatus.isDenied) {
          // Request the permission - this will redirect to Settings on Android 11+
          final result = await Permission.manageExternalStorage.request();
          if (result.isGranted) {
            return true;
          }
          
          // If still denied after request, show dialog to open settings
          if (context != null) {
            final shouldOpenSettings = await _showPermissionDialog(
              context,
              'يحتاج التطبيق إلى إذن "الوصول لجميع الملفات" لقراءة الكتب والملفات من مجلد التحميلات.\n\nيرجى منح الإذن من الإعدادات.',
            );
            if (shouldOpenSettings) {
              await openAppSettings();
              // Wait a bit for user to come back
              await Future.delayed(const Duration(milliseconds: 500));
              // Check again after user returns
              final newStatus = await Permission.manageExternalStorage.status;
              return newStatus.isGranted;
            }
          }
          return false;
        }
        
        // If permanently denied or restricted
        if (context != null && (manageStorageStatus.isPermanentlyDenied || manageStorageStatus.isRestricted)) {
          final shouldOpenSettings = await _showPermissionDialog(
            context,
            'إذن الوصول للتخزين مرفوض.\n\nيرجى الذهاب إلى:\nالإعدادات ← التطبيقات ← النعسان ← الأذونات\nثم تفعيل "الوصول لجميع الملفات"',
          );
          if (shouldOpenSettings) {
            await openAppSettings();
            // Wait for user to come back
            await Future.delayed(const Duration(milliseconds: 500));
            final newStatus = await Permission.manageExternalStorage.status;
            return newStatus.isGranted;
          }
          return false;
        }
        
        return false;
      }
      
      // Android 10 and below (API 29 and below)
      final status = await Permission.storage.request();
      
      if (status.isPermanentlyDenied && context != null) {
        final shouldOpenSettings = await _showPermissionDialog(
          context,
          'يحتاج التطبيق إلى إذن التخزين لقراءة وحفظ الملفات.\n\nيرجى منح الإذن من إعدادات التطبيق.',
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