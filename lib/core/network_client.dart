import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class NetworkClient {
  final Dio _dio;

  NetworkClient() : _dio = Dio(BaseOptions(
    connectTimeout: const Duration(seconds: 20),
    receiveTimeout: const Duration(seconds: 15),
  ));

  /// Performs a GET request
  Future<Response> get(String url, {Map<String, dynamic>? queryParameters}) async {
    _validateUrl(url);
    try {
      return await _dio.get(url, queryParameters: queryParameters);
    } on DioException catch (e) {
      _handleDioError(e);
      rethrow;
    }
  }

  /// Performs a POST request
  Future<Response> post(String url, {dynamic data, Map<String, dynamic>? queryParameters}) async {
    _validateUrl(url);
    try {
      return await _dio.post(url, data: data, queryParameters: queryParameters);
    } on DioException catch (e) {
      _handleDioError(e);
      rethrow;
    }
  }

  /// Performs a PUT request
  Future<Response> put(String url, {dynamic data, Map<String, dynamic>? queryParameters}) async {
    _validateUrl(url);
    try {
      return await _dio.put(url, data: data, queryParameters: queryParameters);
    } on DioException catch (e) {
      _handleDioError(e);
      rethrow;
    }
  }

  /// Performs a PATCH request
  Future<Response> patch(String url, {dynamic data, Map<String, dynamic>? queryParameters}) async {
    _validateUrl(url);
    try {
      return await _dio.patch(url, data: data, queryParameters: queryParameters);
    } on DioException catch (e) {
      _handleDioError(e);
      rethrow;
    }
  }

  /// Performs a DELETE request
  Future<Response> delete(String url, {dynamic data, Map<String, dynamic>? queryParameters}) async {
    _validateUrl(url);
    try {
      return await _dio.delete(url, data: data, queryParameters: queryParameters);
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
    // Custom error handling logic, e.g., logging
    // For now, just rethrow
  }
}