import 'logger_util.dart';

/// Example usage of the LoggerUtil class
void demonstrateLogger() {
  // Log different message types
  LoggerUtil.logInfo('This is an information message');
  LoggerUtil.logWarning('This is a warning message');
  LoggerUtil.logError('This is an error message');
  LoggerUtil.logSuccess('This is a success message');
  LoggerUtil.logDebug('This is a debug message');
  
  // Example API response logging
  LoggerUtil.logApiResponse('GET /users', {
    'status': 200, 
    'data': {'name': 'John', 'email': 'john@example.com'}
  });
  
  // Example error API response
  LoggerUtil.logApiResponse('POST /login', {
    'status': 401, 
    'error': 'Invalid credentials'
  }, isError: true);
  
  // Example step logging
  LoggerUtil.logStep('Initializing application', 
    details: 'Loading configuration files and setting up dependencies');
}

/// Call this function anywhere in your code to test the logger
void main() {
  demonstrateLogger();
}
