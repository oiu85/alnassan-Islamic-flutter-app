import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import '../config/api_config.dart';
import 'utils/logger/log_helper.dart';

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
      LogHelper.logGetRequest(url, queryParams: queryParameters);
      final response = await _dio.get(url, queryParameters: queryParameters);
      LogHelper.logGetResponse(response.data);
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
      LogHelper.logPostRequest(url, data: data, queryParams: queryParameters);
      final response = await _dio.post(url, data: data, queryParameters: queryParameters);
      LogHelper.logPostResponse(response.data);
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
      LogHelper.logPutRequest(url, data: data, queryParams: queryParameters);
      final response = await _dio.put(url, data: data, queryParameters: queryParameters);
      LogHelper.logPutResponse(response.data);
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
      LogHelper.logPatchRequest(url, data: data, queryParams: queryParameters);
      final response = await _dio.patch(
        url,
        data: data,
        queryParameters: queryParameters,
      );
      LogHelper.logPatchResponse(response.data);
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
      LogHelper.logDeleteRequest(url, data: data, queryParams: queryParameters);
      final response = await _dio.delete(
        url,
        data: data,
        queryParameters: queryParameters,
      );
      LogHelper.logDeleteResponse(response.data);
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
    LogHelper.logNetworkError(error);
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
