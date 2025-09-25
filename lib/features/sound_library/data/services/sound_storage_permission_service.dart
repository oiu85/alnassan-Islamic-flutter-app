import 'dart:io';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:device_info_plus/device_info_plus.dart';

/// Service to handle storage permissions specifically for the Downloads folder
class SoundStoragePermissionService {
  /// Check if storage permission is granted
  static Future<bool> hasStoragePermission() async {
    // For Android 12 (API 31) and above, no storage permission is needed
    // for accessing the standard Downloads directory
    if (Platform.isAndroid) {
      final deviceInfo = DeviceInfoPlugin();
      final androidInfo = await deviceInfo.androidInfo;
      
      // Android 12 is API level 31
      if (androidInfo.version.sdkInt >= 31) {
        return true;
      }
      
      // For Android 10 and 11, we need storage permission
      return await Permission.storage.isGranted;
    }
    
    // For other platforms, assume permission is granted
    return true;
  }

  /// Request storage permission with dialog
  static Future<bool> requestStoragePermission(BuildContext context) async {
    // For Android 12 (API 31) and above, no storage permission is needed
    // for accessing the standard Downloads directory
    if (Platform.isAndroid) {
      final deviceInfo = DeviceInfoPlugin();
      final androidInfo = await deviceInfo.androidInfo;
      
      // Android 12 is API level 31
      if (androidInfo.version.sdkInt >= 31) {
        return true;
      }
      
      // For Android 10 and 11, request storage permission
      final status = await Permission.storage.request();
      return status.isGranted;
    }
    
    // For other platforms, assume permission is granted
    return true;
  }
}



