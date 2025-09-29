import 'package:dartz/dartz.dart';

import '../data/model/habib_mustafa_model.dart';

abstract class HabibMustafaRepository {
  /// Fetches sub-categories with articles for Habib Mustafa feature
  ///
  /// Returns [Right<HabibMustafaModel>] containing sub-categories and articles on success
  /// Returns [Left<String>] with error message on failure
  Future<Either<String, HabibMustafaModel>> getHabibMustafaData({
    int catId = 13,
    int catMenus = 40,
    int articlesPerPage = 3,
    int categoriesPerPage = 3,
    int articlesPage = 1,
    int categoriesPage = 1,
  });

  /// Fetches all articles from a specific category
  ///
  /// Returns [Right<CategoryArticlesModel>] containing category and all its articles on success
  /// Returns [Left<String>] with error message on failure
  Future<Either<String, CategoryArticlesModel>> getCategoryArticles({
    required int categoryId,
    required int page,
    required int perPage,
  });

  /// Fetches detailed information for a specific article
  ///
  /// Returns [Right<ArticleDetailModel>] containing the article detail on success
  /// Returns [Left<String>] with error message on failure
  Future<Either<String, ArticleDetailModel>> getArticleDetail({
    required int articleId,
  });
}

