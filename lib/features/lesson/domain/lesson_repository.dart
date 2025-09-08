import 'package:dartz/dartz.dart';
import '../data/model.dart';

abstract class LessonRepository {
  /// Fetches lessons from multiple categories with pagination
  /// 
  /// [categoryIds] - List of category IDs to fetch articles from
  /// [page] - Page number for pagination
  /// [perPage] - Number of items per page
  /// Returns [Right<LessonModel>] on success, [Left<String>] on failure
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
}
