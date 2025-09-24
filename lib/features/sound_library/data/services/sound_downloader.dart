import 'dart:io';
import 'package:dio/dio.dart';

/// Service to handle sound download functionality
class SoundDownloader {
  final Dio _dio = Dio();
  
  /// Default download directory - always use Android Downloads folder
  String get _downloadDirectory {
    // Android standard Downloads directory path
    return '/storage/emulated/0/Download';
  }

  /// Download a sound from URL
  Future<String?> downloadSound({
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
      print('Error downloading sound: $e');
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


