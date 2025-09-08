import '../data/model.dart';

abstract class LessonRepository {
  /// Fetches lessons from multiple categories with pagination
  /// 
  /// [categoryIds] - List of category IDs to fetch articles from
  /// [page] - Page number for pagination
  /// [perPage] - Number of items per page
  Future<LessonModel> getLessons({
    required List<int> categoryIds,
    required int page,
    required int perPage,
  });

  /// Fetches a single lesson article detail
  /// 
  /// [articleId] - The ID of the article to fetch
  Future<LessonArticleDetailModel> getLessonArticleDetail({
    required int articleId,
  });
}
