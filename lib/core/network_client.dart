import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../config/api_config.dart';
import 'utils/logger_util.dart';

@singleton
class NetworkClient {
  final Dio _dio;
  static const String baseUrl = ApiConfig.baseUrl;
  static const String homeUrl = ApiConfig.homeUrl;

  NetworkClient()
    : _dio = Dio(
        BaseOptions(
          baseUrl: baseUrl,
          connectTimeout: const Duration(seconds: 20),
          receiveTimeout: const Duration(seconds: 15),
          headers: {
            'Accept': 'application/json',
            'Content-Type': 'application/json',
          },
        ),
      );

  /// Performs a GET request
  Future<Response> get(
    String url, {
    Map<String, dynamic>? queryParameters,
  }) async {
    _validateUrl(url);
    try {
      LoggerUtil.logStep('GET Request', details: 'URL: $url${queryParameters != null ? '\nParams: $queryParameters' : ''}');
      final response = await _dio.get(url, queryParameters: queryParameters);
      LoggerUtil.logApiResponse('GET Response', response.data);
      return response;
    } on DioException catch (e) {
      _handleDioError(e);
      rethrow;
    }
  }

  /// Performs a POST request
  Future<Response> post(
    String url, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    _validateUrl(url);
    try {
      LoggerUtil.logStep('POST Request', details: 'URL: $url${data != null ? '\nData: $data' : ''}${queryParameters != null ? '\nParams: $queryParameters' : ''}');
      final response = await _dio.post(url, data: data, queryParameters: queryParameters);
      LoggerUtil.logApiResponse('POST Response', response.data);
      return response;
    } on DioException catch (e) {
      _handleDioError(e);
      rethrow;
    }
  }

  /// Performs a PUT request
  Future<Response> put(
    String url, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    _validateUrl(url);
    try {
      LoggerUtil.logStep('PUT Request', details: 'URL: $url${data != null ? '\nData: $data' : ''}${queryParameters != null ? '\nParams: $queryParameters' : ''}');
      final response = await _dio.put(url, data: data, queryParameters: queryParameters);
      LoggerUtil.logApiResponse('PUT Response', response.data);
      return response;
    } on DioException catch (e) {
      _handleDioError(e);
      rethrow;
    }
  }

  /// Performs a PATCH request
  Future<Response> patch(
    String url, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    _validateUrl(url);
    try {
      LoggerUtil.logStep('PATCH Request', details: 'URL: $url${data != null ? '\nData: $data' : ''}${queryParameters != null ? '\nParams: $queryParameters' : ''}');
      final response = await _dio.patch(
        url,
        data: data,
        queryParameters: queryParameters,
      );
      LoggerUtil.logApiResponse('PATCH Response', response.data);
      return response;
    } on DioException catch (e) {
      _handleDioError(e);
      rethrow;
    }
  }

  /// Performs a DELETE request
  Future<Response> delete(
    String url, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    _validateUrl(url);
    try {
      LoggerUtil.logStep('DELETE Request', details: 'URL: $url${data != null ? '\nData: $data' : ''}${queryParameters != null ? '\nParams: $queryParameters' : ''}');
      final response = await _dio.delete(
        url,
        data: data,
        queryParameters: queryParameters,
      );
      LoggerUtil.logApiResponse('DELETE Response', response.data);
      return response;
    } on DioException catch (e) {
      _handleDioError(e);
      rethrow;
    }
  }

  void _validateUrl(String url) {
    if (url.isEmpty) {
      throw ArgumentError('URL cannot be empty');
    }
    // Additional validation can be added here
  }

  void _handleDioError(DioException error) {
    LoggerUtil.logError(
      'Network Error',
      stackTrace: '''Type: ${error.type}
Request: ${error.requestOptions.uri}
Error: ${error.error}''',
    );
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        throw DioException(
          requestOptions: error.requestOptions,
          error: 'Connection timeout. Please check your internet connection.',
          type: error.type,
        );
      case DioExceptionType.connectionError:
        throw DioException(
          requestOptions: error.requestOptions,
          error: 'No internet connection available.',
          type: error.type,
        );
      case DioExceptionType.badResponse:
        final statusCode = error.response?.statusCode;
        final responseData = error.response?.data;
        throw DioException(
          requestOptions: error.requestOptions,
          response: error.response,
          error:
              'Server error: $statusCode - ${responseData?['message'] ?? 'Unknown error'}',
          type: error.type,
        );
      default:
        throw error;
    }
  }
}
