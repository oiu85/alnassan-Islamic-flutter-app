import 'package:dio/dio.dart';

import '../data/model.dart';

abstract class BiographiesRepository {
  /// Fetches biographies and hadiths articles from the API
  ///
  /// [categoryId] - The category ID to fetch articles for
  /// [page] - The page number for pagination
  /// [perPage] - Number of articles per page
  ///
  /// Returns a [BiographiesAndHadithsModel] containing articles on success
  /// Throws [DioException] if the request fails
  Future<BiographiesAndHadithsModel> getBiographiesArticles({
    required int categoryId,
    required int page,
    required int perPage,
  });
  
  // ===== ARTICLE DETAIL METHODS =====
  /// Fetches individual article details for HTML viewer
  ///
  /// [articleId] - The ID of the article to fetch
  ///
  /// Returns an [ArticleDetailModel] containing article details on success
  /// Throws [DioException] if the request fails
  Future<ArticleDetailModel> getArticleDetail({
    required int articleId,
  });
}
