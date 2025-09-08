class ApiConfig {
  // Base URL
  static const String baseUrl =
      'https://dev-backend-alnasaanapi.daira.website/api/v1';

  // ===== HOME ENDPOINTS =====
  static const String homeUrl = '$baseUrl/public/home';

  // ===== ARTICLES ENDPOINTS =====
  /// Get articles by category with pagination
  /// Parameters: category_ids, page, per_page
  static String getArticlesByCategory({
    required String categoryIds,
    required int page,
    required int perPage,
  }) {
    return '$baseUrl/public/categories/articles/with-articles?category_ids=$categoryIds&page=$page&per_page=$perPage';
  }

  /// Get single article detail by ID
  /// Parameters: articleId, include (optional)
  static String getArticleDetail({
    required int articleId,
    String include = 'category',
  }) {
    return '$baseUrl/public/articles/$articleId?include=$include';
  }

  // ===== SPECIFIC ARTICLE ENDPOINTS =====
  /// Biography article endpoint (hardcoded ID: 27)
  static const String biographyArticleUrl = '$baseUrl/public/articles/27';

  // ===== CONVENIENCE METHODS =====
  /// Get multiple articles by category IDs (comma-separated)
  static String getMultipleArticlesByCategory({
    required List<int> categoryIds,
    required int page,
    required int perPage,
  }) {
    final categoryIdsString = categoryIds.join(',');
    return getArticlesByCategory(
      categoryIds: categoryIdsString,
      page: page,
      perPage: perPage,
    );
  }

  /// Get single category articles
  static String getSingleCategoryArticles({
    required int categoryId,
    required int page,
    required int perPage,
  }) {
    return getArticlesByCategory(
      categoryIds: categoryId.toString(),
      page: page,
      perPage: perPage,
    );
  }

  // ===== LEGACY ENDPOINTS (for backward compatibility) =====
  @Deprecated('Use getArticlesByCategory instead')
  static const String biographiesUrl = '$baseUrl/public/categories/articles';
}
