import 'package:dartz/dartz.dart';

import '../data/model.dart';

abstract class AlmawdueaRepository {
  /// Fetches hadith almawduea articles from the API
  ///
  /// [categoryId] - The category ID to fetch articles for (18 for almawduea)
  /// [page] - The page number for pagination
  /// [perPage] - Number of articles per page
  ///
  /// Returns [Right<AlmawdueaModel>] on success, [Left<String>] on failure
  Future<Either<String, AlmawdueaModel>> getAlmawdueaArticles({
    required int categoryId,
    required int page,
    required int perPage,
  });
  
  // ===== ARTICLE DETAIL METHODS =====
  /// Fetches individual article details for HTML viewer
  ///
  /// [articleId] - The ID of the article to fetch
  ///
  /// Returns [Right<AlmawdueaArticleDetailModel>] on success, [Left<String>] on failure
  Future<Either<String, AlmawdueaArticleDetailModel>> getArticleDetail({
    required int articleId,
  });
}
