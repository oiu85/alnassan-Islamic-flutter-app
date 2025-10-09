import 'package:flutter/foundation.dart';
import 'package:talker_flutter/talker_flutter.dart';

class AppLogger {
  static final Talker _talker = Talker(
    settings: TalkerSettings(
      enabled: kDebugMode, // Only log in debug mode
      useConsoleLogs: true,
      useHistory: true,
      maxHistoryItems: 100,
    ),
  );

  static Talker get instance => _talker;

  /// Log general information
  static void info(String message, [dynamic data]) {
    final location = _getCallerLocation();
    _talker.info('$message\n$location', data);
  }

  /// Log warnings
  static void warning(String message, [dynamic data]) {
    final location = _getCallerLocation();
    _talker.warning('$message\n$location', data);
  }

  /// Log errors with automatic stack trace capture
  static void error(String message, [dynamic error, StackTrace? stackTrace]) {
    final capturedStackTrace = stackTrace ?? StackTrace.current;
    final location = _getCallerLocation(capturedStackTrace);
    final errorDetails = _formatErrorDetails(error, capturedStackTrace);
    
    _talker.error(
      '$message\n$location',
      errorDetails,
      capturedStackTrace,
    );
  }

  /// Log debug information
  static void debug(String message, [dynamic data]) {
    final location = _getCallerLocation();
    _talker.debug('$message\n$location', data);
  }

  /// Log network requests
  static void network(String message, [dynamic data]) {
    final location = _getCallerLocation();
    _talker.info('🌐 $message\n$location', data);
  }

  /// Log API responses
  static void apiResponse(String endpoint, dynamic data) {
    final truncatedData = _truncateData(data);
    final location = _getCallerLocation();
    _talker.info('📡 API Response: $endpoint\n$location', truncatedData);
  }

  /// Log API errors with full details
  static void apiError(String endpoint, dynamic error, [StackTrace? stackTrace]) {
    final capturedStackTrace = stackTrace ?? StackTrace.current;
    final location = _getCallerLocation(capturedStackTrace);
    final errorDetails = _formatErrorDetails(error, capturedStackTrace);
    
    _talker.error(
      '❌ API Error: $endpoint\n$location',
      errorDetails,
      capturedStackTrace,
    );
  }

  /// Log business logic events
  static void business(String message, [dynamic data]) {
    final truncatedData = data != null ? _truncateData(data) : data;
    final location = _getCallerLocation();
    _talker.info('💼 $message\n$location', truncatedData);
  }

  /// Enable/disable logging
  static void setEnabled(bool enabled) {
    _talker.settings.enabled = enabled;
  }

  /// Check if logging is enabled
  static bool get isEnabled => _talker.settings.enabled;

  /// Get the caller's file and line number
  static String _getCallerLocation([StackTrace? stackTrace]) {
    try {
      final trace = stackTrace ?? StackTrace.current;
      final frames = trace.toString().split('\n');
      
      // Skip the first few frames (logger internal calls)
      for (int i = 0; i < frames.length; i++) {
        final frame = frames[i];
        
        // Skip frames from this logger class and talker package
        if (frame.contains('app_logger.dart') || 
            frame.contains('talker') ||
            frame.contains('package:talker')) {
          continue;
        }
        
        // Extract file path and line number
        final match = RegExp(r'\((.+?):(\d+):(\d+)\)').firstMatch(frame);
        if (match != null) {
          final filePath = match.group(1);
          final lineNumber = match.group(2);
          final columnNumber = match.group(3);
          
          // Get just the filename for brevity
          final fileName = filePath?.split('/').last ?? filePath;
          
          return '📍 Location: $fileName:$lineNumber:$columnNumber';
        }
      }
      
      return '📍 Location: Unknown';
    } catch (e) {
      return '📍 Location: Error parsing stack trace';
    }
  }

  /// Format error details for better readability
  static String _formatErrorDetails(dynamic error, StackTrace stackTrace) {
    if (error == null) return 'No error details';
    
    final buffer = StringBuffer();
    buffer.writeln('Error Type: ${error.runtimeType}');
    buffer.writeln('Error Message: $error');
    
    // If it's an exception, try to get more details
    if (error is Exception) {
      buffer.writeln('Exception: ${error.toString()}');
    }
    
    return buffer.toString();
  }

  /// Truncate data to 500 characters for logging
  static dynamic _truncateData(dynamic data) {
    if (data == null) return data;
    
    final dataString = data.toString();
    if (dataString.length <= 500) return data;
    
    return '${dataString.substring(0, 500)}... [TRUNCATED - ${dataString.length} chars total]';
  }
}