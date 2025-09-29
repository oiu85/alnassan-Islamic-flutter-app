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
    _talker.info(message, data);
  }

  /// Log warnings
  static void warning(String message, [dynamic data]) {
    _talker.warning(message, data);
  }

  /// Log errors
  static void error(String message, [dynamic error, StackTrace? stackTrace]) {
    _talker.error(message, error, stackTrace);
  }

  /// Log debug information
  static void debug(String message, [dynamic data]) {
    _talker.debug(message, data);
  }

  /// Log network requests
  static void network(String message, [dynamic data]) {
    _talker.info('🌐 $message', data);
  }

  /// Log API responses
  static void apiResponse(String endpoint, dynamic data) {
    final truncatedData = _truncateData(data);
    _talker.info('📡 API Response: $endpoint', truncatedData);
  }

  /// Log API errors
  static void apiError(String endpoint, dynamic error) {
    _talker.error('❌ API Error: $endpoint', error);
  }

  /// Log business logic events
  static void business(String message, [dynamic data]) {
    final truncatedData = data != null ? _truncateData(data) : data;
    _talker.info('💼 $message', truncatedData);
  }

  /// Enable/disable logging
  static void setEnabled(bool enabled) {
    _talker.settings.enabled = enabled;
  }

  /// Check if logging is enabled
  static bool get isEnabled => _talker.settings.enabled;

  /// Truncate data to 500 characters for logging
  static dynamic _truncateData(dynamic data) {
    if (data == null) return data;
    
    final dataString = data.toString();
    if (dataString.length <= 500) return data;
    
    return '${dataString.substring(0, 500)}... [TRUNCATED - ${dataString.length} chars total]';
  }
}