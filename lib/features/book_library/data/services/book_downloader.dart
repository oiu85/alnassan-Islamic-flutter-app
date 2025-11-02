import 'dart:io';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:nassan_app/core/settings/domain/services/settings_service.dart';

/// Service to handle book download functionality
/// On Android 11+, downloads to app's own directory (no permission needed)
/// On Android 10 and below, downloads to Downloads folder (with permission)
class BookDownloadService {
  final Dio _dio = Dio();
  final SettingsService _settingsService = SettingsService();
  
  /// Get download directory - uses app's own directory on Android 11+ and iOS
  Future<String> get _downloadDirectory async {
    // iOS - Use app's Documents directory
    if (Platform.isIOS) {
      final appDir = await getApplicationDocumentsDirectory();
      final downloadDir = Directory('${appDir.path}/Downloads');
      if (!await downloadDir.exists()) {
        await downloadDir.create(recursive: true);
      }
      return downloadDir.path;
    }
    
    // Android
    if (Platform.isAndroid) {
      try {
        final deviceInfo = DeviceInfoPlugin();
        final androidInfo = await deviceInfo.androidInfo;
        final sdkInt = androidInfo.version.sdkInt;
        
        // Android 11+ (API 30+) - Use app's own directory (no permission needed)
        if (sdkInt >= 30) {
          final appDir = await getApplicationDocumentsDirectory();
          final downloadDir = Directory('${appDir.path}/Downloads');
          if (!await downloadDir.exists()) {
            await downloadDir.create(recursive: true);
          }
          return downloadDir.path;
        }
        
        // Android 10 and below - Use Downloads folder (with permission)
        return _settingsService.downloadPath;
      } catch (e) {
        // Fallback to settings path if error
        return _settingsService.downloadPath;
      }
    }
    
    // Fallback for other platforms
    final appDir = await getApplicationDocumentsDirectory();
    return appDir.path;
  }

  /// Download a book from URL
  Future<String?> downloadBook({
    required String url,
    required String fileName,
    Function(double)? onProgress,
  }) async {
    try {
      final downloadDir = await _downloadDirectory;
      final savePath = '$downloadDir/$fileName';
      
      // Check if file already exists
      if (await File(savePath).exists()) {
        return savePath; // Return path if file already exists
      }
      
      await _dio.download(
        url,
        savePath,
        onReceiveProgress: (received, total) {
          if (total != -1) {
            final progress = received / total;
            onProgress?.call(progress);
          }
        },
      );
      
      return savePath;
    } catch (e) {
      print('Error downloading book: $e');
      return null;
    }
  }
  
  /// Check if file exists
  Future<bool> fileExists(String fileName) async {
    final downloadDir = await _downloadDirectory;
    final filePath = '$downloadDir/$fileName';
    return File(filePath).exists();
  }
  
  /// Get local file path
  Future<String?> getLocalFilePath(String fileName) async {
    final downloadDir = await _downloadDirectory;
    final filePath = '$downloadDir/$fileName';
    if (await File(filePath).exists()) {
      return filePath;
    }
    return null;
  }
}
