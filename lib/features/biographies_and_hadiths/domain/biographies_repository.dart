import 'package:dartz/dartz.dart';

import '../data/model.dart';

abstract class BiographiesRepository {
  /// Fetches biographies and hadiths articles from the API
  ///
  /// [categoryId] - The category ID to fetch articles for
  /// [page] - The page number for pagination
  /// [perPage] - Number of articles per page
  ///
  /// Returns [Right<BiographiesAndHadithsModel>] on success, [Left<String>] on failure
  Future<Either<String, BiographiesAndHadithsModel>> getBiographiesArticles({
    required int categoryId,
    required int page,
    required int perPage,
  });
  
  // ===== ARTICLE DETAIL METHODS =====
  /// Fetches individual article details for HTML viewer
  ///
  /// [articleId] - The ID of the article to fetch
  ///
  /// Returns [Right<ArticleDetailModel>] on success, [Left<String>] on failure
  Future<Either<String, ArticleDetailModel>> getArticleDetail({
    required int articleId,
  });
}
