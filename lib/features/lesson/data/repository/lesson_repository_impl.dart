import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../core/network/network_client.dart';
import '../../../../config/api_config.dart';
import '../../domain/lesson_repository.dart';
import '../model.dart';

class LessonRepositoryImpl implements LessonRepository {
  final NetworkClient _networkClient;

  LessonRepositoryImpl(this._networkClient);

  @override
  Future<Either<String, LessonModel>> getLessons({
    required List<int> categoryIds,
    required int page,
    required int perPage,
  }) async {
    try {
      final url = ApiConfig.getMultipleArticlesByCategory(
        categoryIds: categoryIds,
        page: page,
        perPage: perPage,
      );
      final response = await _networkClient.get(url);

      if (response.statusCode == 200) {
        return Right(LessonModel.fromJson(response.data));
      } else {
        return Left('Failed to fetch lessons: ${response.statusCode}');
      }
    } on DioException catch (e) {
      return Left(e.message ?? 'Connection attempt failed');
    } catch (e) {
      return Left('Unexpected error: $e');
    }
  }

  @override
  Future<Either<String, LessonArticleDetailModel>> getLessonArticleDetail({
    required int articleId,
  }) async {
    try {
      final url = ApiConfig.getArticleDetail(articleId: articleId);
      
      final response = await _networkClient.get(url);
      
      if (response.statusCode == 200) {
        return Right(LessonArticleDetailModel.fromJson(response.data));
      } else {
        return Left('Failed to fetch lesson article detail: ${response.statusCode}');
      }
    } on DioException catch (e) {
      return Left(e.message ?? 'Connection attempt failed');
    } catch (e) {
      return Left('Unexpected error: $e');
    }
  }

  @override
  Future<Either<String, LessonSubCategoriesModel>> getLessonsSubCategories({
    required int catMenus,
    int articlesPerPage = 3,
    int categoriesPerPage = 3,
    int articlesPage = 1,
    int categoriesPage = 1,
  }) async {
    try {
      final url = ApiConfig.getLessonsSubCategories(
        catMenus: catMenus,
        articlesPerPage: articlesPerPage,
        categoriesPerPage: categoriesPerPage,
        articlesPage: articlesPage,
        categoriesPage: categoriesPage,
      );
      
      final response = await _networkClient.get(url);
      
      if (response.statusCode == 200) {
        return Right(LessonSubCategoriesModel.fromJson(response.data));
      } else {
        return Left('Failed to fetch lessons sub-categories: ${response.statusCode}');
      }
    } on DioException catch (e) {
      return Left(e.message ?? 'Connection attempt failed');
    } catch (e) {
      return Left('Unexpected error: $e');
    }
  }
}
