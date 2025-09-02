import '../log_helper.dart';

/// Example usage of the LogHelper class
void demonstrateLogger() {
  // Log different message types
  LogHelper.logInfo('This is an information message');
  LogHelper.logWarning('This is a warning message');
  LogHelper.logError('This is an error message');
  LogHelper.logSuccess('This is a success message');
  LogHelper.logDebug('This is a debug message');
  
  // Example API response logging
  LogHelper.logApiResponse('GET /users', {
    'status': 200, 
    'data': {'name': 'John', 'email': 'john@example.com'}
  });
  
  // Example error API response
  LogHelper.logApiResponse('POST /login', {
    'status': 401, 
    'error': 'Invalid credentials'
  }, isError: true);
  
  // Example step logging
  LogHelper.logInitializingApp();
}

/// Call this function anywhere in your code to test the logger
void main() {
  demonstrateLogger();
}
