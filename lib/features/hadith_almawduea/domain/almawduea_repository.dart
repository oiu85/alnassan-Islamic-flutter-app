import 'package:dio/dio.dart';

import '../data/model.dart';

abstract class AlmawdueaRepository {
  /// Fetches hadith almawduea articles from the API
  ///
  /// [categoryId] - The category ID to fetch articles for (18 for almawduea)
  /// [page] - The page number for pagination
  /// [perPage] - Number of articles per page
  ///
  /// Returns an [AlmawdueaModel] containing articles on success
  /// Throws [DioException] if the request fails
  Future<AlmawdueaModel> getAlmawdueaArticles({
    required int categoryId,
    required int page,
    required int perPage,
  });
  
  // ===== ARTICLE DETAIL METHODS =====
  /// Fetches individual article details for HTML viewer
  ///
  /// [articleId] - The ID of the article to fetch
  ///
  /// Returns an [AlmawdueaArticleDetailModel] containing article details on success
  /// Throws [DioException] if the request fails
  Future<AlmawdueaArticleDetailModel> getArticleDetail({
    required int articleId,
  });
}
