import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:flutter/foundation.dart';
import '../../config/api_config.dart';
import '../utils/logger/app_logger.dart';

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
      ) {
    // Add pretty_dio_logger interceptor for network logging
    if (kDebugMode) {
      _dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: false,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 90,
          enabled: kDebugMode,
          // Limit response body to 500 characters
          logPrint: (object) {
            final logString = object.toString();
            if (logString.length > 500) {
              debugPrint('${logString.substring(0, 500)}... [TRUNCATED - ${logString.length} chars total]');
            } else {
              debugPrint(logString);
            }
          },
        ),
      );
    }
  }

  /// Performs a GET request
  Future<Response> get(
    String url, {
    Map<String, dynamic>? queryParameters,
  }) async {
    _validateUrl(url);
    try {
      AppLogger.network('GET $url', queryParameters);
      final response = await _dio.get(url, queryParameters: queryParameters);
      AppLogger.apiResponse('GET $url', response.data);
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
      AppLogger.network('POST $url', {'data': data, 'queryParams': queryParameters});
      final response = await _dio.post(url, data: data, queryParameters: queryParameters);
      AppLogger.apiResponse('POST $url', response.data);
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
      AppLogger.network('PUT $url', {'data': data, 'queryParams': queryParameters});
      final response = await _dio.put(url, data: data, queryParameters: queryParameters);
      AppLogger.apiResponse('PUT $url', response.data);
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
      AppLogger.network('PATCH $url', {'data': data, 'queryParams': queryParameters});
      final response = await _dio.patch(
        url,
        data: data,
        queryParameters: queryParameters,
      );
      AppLogger.apiResponse('PATCH $url', response.data);
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
      AppLogger.network('DELETE $url', {'data': data, 'queryParams': queryParameters});
      final response = await _dio.delete(
        url,
        data: data,
        queryParameters: queryParameters,
      );
      AppLogger.apiResponse('DELETE $url', response.data);
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
    AppLogger.apiError('Network Error', error);
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
