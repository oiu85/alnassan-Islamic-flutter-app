// // import 'dart:developer' as developer; // Commented out to avoid double logging
//
// /// Utility class for logging messages with colors in the terminal
// class LoggerUtil {
//   // ANSI color codes for terminal output
//   static const String _reset = '\x1B[0m';
//   static const String _red = '\x1B[31m';
//   static const String _green = '\x1B[32m';
//   static const String _yellow = '\x1B[33m';
//   static const String _blue = '\x1B[34m';
//   static const String _magenta = '\x1B[35m';
//   static const String _cyan = '\x1B[36m';
//
//   /// Logs API response with appropriate color
//   static void logApiResponse(String tag, dynamic response, {bool isError = false}) {
//     final String status = isError ? '[ERROR]' : '[SUCCESS]';
//     final String separator = '=' * 50;
//
//     // Truncate response for readability
//     String responseStr = response.toString();
//     if (responseStr.length > 800) {
//       responseStr = responseStr.substring(0, 800) + '... [truncated for brevity]';
//     }
//
//     final String message = '''
// $separator
// $status [$tag]
// $separator
// $responseStr
// $separator''';
//
//     if (isError) {
//       _logWithColor(message, _red, 'API Response');
//     } else {
//       _logWithColor(message, _green, 'API Response');
//     }
//   }
//
//   /// Logs a process step with info color
//   static void logStep(String step, {String? details}) {
//     final String separator = '-' * 30;
//     final String message = '''
// $separator
// [STEP] $step${details != null ? '\n$details' : ''}
// $separator''';
//
//     _logWithColor(message, _cyan, 'Process Step');
//   }
//
//   /// Logs an error with red color
//   static void logError(String error, {String? stackTrace}) {
//     final String separator = '!' * 40;
//     final String message = '''
// $separator
// [ERROR] $error${stackTrace != null ? '\nStack Trace:\n$stackTrace' : ''}
// $separator''';
//
//     _logWithColor(message, _red, 'Error');
//   }
//
//   /// Logs a warning with yellow color
//   static void logWarning(String warning) {
//     final String separator = '*' * 40;
//     final String message = '''
// $separator
// [WARNING] $warning
// $separator''';
//
//     _logWithColor(message, _yellow, 'Warning');
//   }
//
//   /// Logs information with blue color
//   static void logInfo(String info) {
//     final String separator = '-' * 40;
//     final String message = '''
// $separator
// [INFO] $info
// $separator''';
//
//     _logWithColor(message, _blue, 'Info');
//   }
//
//   /// Logs debug information with magenta color
//   static void logDebug(String debug) {
//     final String separator = '~' * 40;
//     final String message = '''
// $separator
// [DEBUG] $debug
// $separator''';
//
//     _logWithColor(message, _magenta, 'Debug');
//   }
//
//   /// Logs success message with green color
//   static void logSuccess(String success) {
//     final String separator = '+' * 40;
//     final String message = '''
// $separator
// [SUCCESS] $success
// $separator''';
//
//     _logWithColor(message, _green, 'Success');
//   }
//
//   /// Private method to handle colored logging
//   /// Uses ANSI color codes which will only show in terminals that support them
//   static void _logWithColor(String message, String colorCode, String name) {
//     // Print to console with color
//     print('$colorCode$message$_reset');
//
//     // Uncomment this line if you want to see logs in DevTools, but it causes double logging in the terminal
//     // developer.log(message, name: name);
//   }
// }