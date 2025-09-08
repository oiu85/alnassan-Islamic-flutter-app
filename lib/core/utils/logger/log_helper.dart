// import 'package:dio/dio.dart';
//
// import 'logger_text.dart';
// import 'loggers/logger_util.dart';
//
// /// A simplified logging interface that provides domain-specific logging methods
// /// while hiding internal logging implementation details.
// class LogHelper {
//   // NETWORK REQUEST LOGGING
//
//   /// Logs a GET request with its URL and query parameters
//   static void logGetRequest(String url, {Map<String, dynamic>? queryParams}) {
//     final details = _formatUrlWithParams(url, queryParams: queryParams);
//     LoggerUtil.logStep(ApiRequestLoggerText.getRequest, details: details);
//   }
//
//   /// Logs a POST request with its URL, data, and query parameters
//   static void logPostRequest(String url, {dynamic data, Map<String, dynamic>? queryParams}) {
//     final details = _formatUrlWithParams(url, data: data, queryParams: queryParams);
//     LoggerUtil.logStep(ApiRequestLoggerText.postRequest, details: details);
//   }
//
//   /// Logs a PUT request with its URL, data, and query parameters
//   static void logPutRequest(String url, {dynamic data, Map<String, dynamic>? queryParams}) {
//     final details = _formatUrlWithParams(url, data: data, queryParams: queryParams);
//     LoggerUtil.logStep(ApiRequestLoggerText.putRequest, details: details);
//   }
//
//   /// Logs a PATCH request with its URL, data, and query parameters
//   static void logPatchRequest(String url, {dynamic data, Map<String, dynamic>? queryParams}) {
//     final details = _formatUrlWithParams(url, data: data, queryParams: queryParams);
//     LoggerUtil.logStep(ApiRequestLoggerText.patchRequest, details: details);
//   }
//
//   /// Logs a DELETE request with its URL, data, and query parameters
//   static void logDeleteRequest(String url, {dynamic data, Map<String, dynamic>? queryParams}) {
//     final details = _formatUrlWithParams(url, data: data, queryParams: queryParams);
//     LoggerUtil.logStep(ApiRequestLoggerText.deleteRequest, details: details);
//   }
//
//   // RESPONSE LOGGING
//
//   /// Logs an API response with the appropriate status and data
//   static void logApiResponse(String responseType, dynamic responseData, {bool isError = false}) {
//     LoggerUtil.logApiResponse(responseType, responseData, isError: isError);
//   }
//
//   /// Logs a successful GET response
//   static void logGetResponse(dynamic responseData) {
//     LoggerUtil.logApiResponse(ApiResponseLoggerText.getResponse, responseData);
//   }
//
//   /// Logs a successful POST response
//   static void logPostResponse(dynamic responseData) {
//     LoggerUtil.logApiResponse(ApiResponseLoggerText.postResponse, responseData);
//   }
//
//   /// Logs a successful PUT response
//   static void logPutResponse(dynamic responseData) {
//     LoggerUtil.logApiResponse(ApiResponseLoggerText.putResponse, responseData);
//   }
//
//   /// Logs a successful PATCH response
//   static void logPatchResponse(dynamic responseData) {
//     LoggerUtil.logApiResponse(ApiResponseLoggerText.patchResponse, responseData);
//   }
//
//   /// Logs a successful DELETE response
//   static void logDeleteResponse(dynamic responseData) {
//     LoggerUtil.logApiResponse(ApiResponseLoggerText.deleteResponse, responseData);
//   }
//
//   // HOME DATA LOGGING
//
//   /// Logs the start of fetching home data
//   static void logFetchingHomeData() {
//     LoggerUtil.logStep(HomeLoggerText.fetchingHomeData);
//   }
//
//   /// Logs the initialization of home data fetch process with current state
//   static void logInitiatingHomeDataFetch(dynamic currentState) {
//     LoggerUtil.logStep(
//       HomeLoggerText.initiatingHomeDataFetch,
//       details: '${HomeLoggerText.currentStateDetailsPrefix}$currentState'
//     );
//   }
//
//   /// Logs successful mapping of data to HomeModel
//   static void logDataMapped(dynamic homeModel) {
//     LoggerUtil.logStep(
//       HomeLoggerText.dataMappedSuccess,
//       details: 'Model: $homeModel',
//     );
//   }
//
//   /// Logs successful home data fetch with article count
//   static void logHomeDataFetchSuccess(int? articlesCount) {
//     LoggerUtil.logStep(
//       HomeLoggerText.homeDataFetchSuccessful,
//       details: '${HomeLoggerText.articlesCountDetailsPrefix}$articlesCount'
//     );
//   }
//
//   /// Logs when no articles are found in the response
//   static void logNoArticlesFound() {
//     LoggerUtil.logError(
//       HomeLoggerText.noArticlesFound,
//       stackTrace: HomeLoggerText.noArticlesFoundDetails
//     );
//   }
//
//   // ERROR LOGGING
//
//   /// Logs an error with no data received from the server
//   static void logNoDataReceived() {
//     LoggerUtil.logError(ApiResponseLoggerText.noDataReceived);
//   }
//
//   /// Logs an error that occurred during home data fetch
//   static void logFetchError(DioException e) {
//     LoggerUtil.logError(
//       HomeLoggerText.failedToFetchHomeData,
//       stackTrace: e.stackTrace.toString(),
//     );
//   }
//
//   /// Logs an error with fetch details
//   static void logFetchErrorWithDetails(DioException e) {
//     LoggerUtil.logError(
//       '${HomeLoggerText.failedToFetchHomeDataPrefix}${e.message}',
//       stackTrace: e.stackTrace.toString(),
//     );
//   }
//
//   /// Logs an error during data mapping
//   static void logMappingError(dynamic error) {
//     LoggerUtil.logError(
//       '${HomeLoggerText.errorMappingDataPrefix}$error',
//       stackTrace: (error as Error).stackTrace.toString(),
//     );
//   }
//
//   /// Logs a network error with detailed information
//   static void logNetworkError(DioException error) {
//     LoggerUtil.logError(
//       'Network Error',
//       stackTrace: '''Type: ${error.type}
// Request: ${error.requestOptions.uri}
// Error: ${error.error}''',
//     );
//   }
//
//   /// Logs a generic error
//   static void logError(String message, {String? stackTrace}) {
//     LoggerUtil.logError(message, stackTrace: stackTrace);
//   }
//
//   // BASIC LOGGING
//
//   /// Logs an information message
//   static void logInfo(String message) {
//     LoggerUtil.logInfo(message);
//   }
//
//   /// Logs a warning message
//   static void logWarning(String message) {
//     LoggerUtil.logWarning(message);
//   }
//
//   /// Logs a debug message
//   static void logDebug(String message) {
//     LoggerUtil.logDebug(message);
//   }
//
//   /// Logs a success message
//   static void logSuccess(String message) {
//     LoggerUtil.logSuccess(message);
//   }
//
//   /// Logs a step in the process with optional details
//   static void logStep(String step, {String? details}) {
//     LoggerUtil.logStep(step, details: details);
//   }
//
//   /// Logs a step during application initialization
//   static void logInitializingApp() {
//     LoggerUtil.logStep(
//       ExampleLoggerText.initializingApp,
//       details: ExampleLoggerText.loadingConfigDetails
//     );
//   }
//
//   // HELPER METHODS
//
//   /// Formats a URL with its data and parameters for consistent logging
//   static String _formatUrlWithParams(String url, {dynamic data, Map<String, dynamic>? queryParams}) {
//     final buffer = StringBuffer('URL: $url');
//
//     if (data != null) {
//       buffer.write('\nData: $data');
//     }
//
//     if (queryParams != null && queryParams.isNotEmpty) {
//       buffer.write('\nParams: $queryParams');
//     }
//
//     return buffer.toString();
//   }
// }
