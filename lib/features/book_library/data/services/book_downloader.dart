import 'dart:io';
import 'package:dio/dio.dart';
import 'package:nassan_app/core/settings/domain/services/settings_service.dart';

/// Service to handle book download functionality
class BookDownloadService {
  final Dio _dio = Dio();
  final SettingsService _settingsService = SettingsService();
  
  /// Get download directory from settings
  String get _downloadDirectory {
    return _settingsService.downloadPath;
  }

  /// Download a book from URL
  Future<String?> downloadBook({
    required String url,
    required String fileName,
    Function(double)? onProgress,
  }) async {
    try {
      final savePath = _getFilePath(fileName);
      
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
    final filePath = _getFilePath(fileName);
    return File(filePath).exists();
  }
  
  /// Get local file path
  Future<String?> getLocalFilePath(String fileName) async {
    final filePath = _getFilePath(fileName);
    if (await File(filePath).exists()) {
      return filePath;
    }
    return null;
  }
  
  /// Get file path for saving
  String _getFilePath(String fileName) {
    return '$_downloadDirectory/$fileName';
  }
}
