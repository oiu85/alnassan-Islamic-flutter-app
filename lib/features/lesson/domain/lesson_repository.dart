import 'package:dartz/dartz.dart';
import '../data/model.dart';

abstract class LessonRepository {
  /// Fetches lessons from multiple categories with pagination
  /// 
  /// [categoryIds] - List of category IDs to fetch articles from
  /// [page] - Page number for pagination
  /// [perPage] - Number of items per page
  /// Returns [Right<LessonModel>] on success,
  /// [Left<String>] on failure
  Future<Either<String, LessonModel>> getLessons({
    required List<int> categoryIds,
    required int page,
    required int perPage,
  });

  /// Fetches a single lesson article detail
  /// 
  /// [articleId] - The ID of the article to fetch
  /// Returns [Right<LessonArticleDetailModel>] on success, [Left<String>] on failure
  Future<Either<String, LessonArticleDetailModel>> getLessonArticleDetail({
    required int articleId,
  });

  /// Fetches sub-categories with articles for lessons
  /// 
  /// [catMenus] - The category menu ID (e.g., 21 for lessons)
  /// [articlesPerPage] - Number of articles per page (default: 3)
  /// [categoriesPerPage] - Number of categories per page (default: 3)
  /// [articlesPage] - Page number for articles (default: 1)
  /// [categoriesPage] - Page number for categories (default: 1)
  /// Returns [Right<LessonSubCategoriesModel>] on success, [Left<String>] on failure
  Future<Either<String, LessonSubCategoriesModel>> getLessonsSubCategories({
    required int catMenus,
    int articlesPerPage = 3,
    int categoriesPerPage = 3,
    int articlesPage = 1,
    int categoriesPage = 1,
  });
}
