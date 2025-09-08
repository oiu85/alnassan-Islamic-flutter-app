import 'package:dio/dio.dart';
import '../../../../core/network/network_client.dart';
import '../../domain/lesson_repository.dart';
import '../model.dart';

class LessonRepositoryImpl implements LessonRepository {
  final NetworkClient _networkClient;

  LessonRepositoryImpl(this._networkClient);

  @override
  Future<LessonModel> getLessons({
    required List<int> categoryIds,
    required int page,
    required int perPage,
  }) async {
    try {
      // Convert category IDs list to comma-separated string
      final categoryIdsString = categoryIds.join(',');
      
      final url = '${NetworkClient.baseUrl}/public/categories/articles/with-articles?category_ids=$categoryIdsString&page=$page&per_page=$perPage';
      
      final response = await _networkClient.get(url);
      
      if (response.statusCode == 200) {
        return LessonModel.fromJson(response.data);
      } else {
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
          message: 'Failed to fetch lessons: ${response.statusCode}',
        );
      }
    } on DioException {
      rethrow;
    } catch (e) {
      throw DioException(
        requestOptions: RequestOptions(path: ''),
        message: 'Unexpected error: $e',
      );
    }
  }

  @override
  Future<LessonArticleDetailModel> getLessonArticleDetail({
    required int articleId,
  }) async {
    try {
      final url = '${NetworkClient.baseUrl}/public/articles/$articleId?include=category';
      
      final response = await _networkClient.get(url);
      
      if (response.statusCode == 200) {
        return LessonArticleDetailModel.fromJson(response.data);
      } else {
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
          message: 'Failed to fetch lesson article detail: ${response.statusCode}',
        );
      }
    } on DioException {
      rethrow;
    } catch (e) {
      throw DioException(
        requestOptions: RequestOptions(path: ''),
        message: 'Unexpected error: $e',
      );
    }
  }
}
