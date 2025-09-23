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

  // ===== SOUND LIBRARY ENDPOINTS =====
  /// Get hierarchical sound categories (no parameters)
  static const String getHierarchicalSoundCategories = '$baseUrl/public/categories/sounds';

  /// Get sound categories with children and pagination
  /// Parameters: id, cat_father_id, children_per_page, sounds_per_page, per_page
  static String getSoundCategories({
    int? id,
    int? catFatherId,
    int? childrenPerPage,
    int? soundsPerPage,
    int? perPage,
  }) {
    final params = <String, String>{};
    
    if (id != null) params['id'] = id.toString();
    if (catFatherId != null) params['cat_father_id'] = catFatherId.toString();
    if (childrenPerPage != null) params['children_per_page'] = childrenPerPage.toString();
    if (soundsPerPage != null) params['sounds_per_page'] = soundsPerPage.toString();
    if (perPage != null) params['per_page'] = perPage.toString();
    
    final queryString = params.entries
        .map((e) => '${e.key}=${e.value}')
        .join('&');
    
    return '$baseUrl/public/categories/sounds/children${queryString.isNotEmpty ? '?$queryString' : ''}';
  }

  // ===== SUB-CATEGORIES ENDPOINTS =====
  /// Get sub-categories with articles (standard endpoint for multiple features)
  /// Parameters: cat_id, cat_menus, articles_per_page, categories_per_page, articles_page, categories_page
  static String getSubCategories({
    required int catId,
    int? catMenus,
    int? articlesPerPage,
    int? categoriesPerPage,
    int? articlesPage,
    int? categoriesPage,
  }) {
    final params = <String, String>{
      'cat_id': catId.toString(),
    };
    
    if (catMenus != null) params['cat_menus'] = catMenus.toString();
    if (articlesPerPage != null) params['articles_per_page'] = articlesPerPage.toString();
    if (categoriesPerPage != null) params['categories_per_page'] = categoriesPerPage.toString();
    if (articlesPage != null) params['articles_page'] = articlesPage.toString();
    if (categoriesPage != null) params['categories_page'] = categoriesPage.toString();
    
    final queryString = params.entries
        .map((e) => '${e.key}=${e.value}')
        .join('&');
    
    return '$baseUrl/public/sub-categories?$queryString';
  }

  /// Get sub-categories for lessons with specific cat_menus parameter
  /// Parameters: cat_menus, articles_per_page, categories_per_page, articles_page, categories_page
  static String getLessonsSubCategories({
    required int catMenus,
    int articlesPerPage = 3,
    int categoriesPerPage = 3,
    int articlesPage = 1,
    int categoriesPage = 1,
  }) {
    final params = <String, String>{
      'cat_menus': catMenus.toString(),
      'articles_per_page': articlesPerPage.toString(),
      'categories_per_page': categoriesPerPage.toString(),
      'articles_page': articlesPage.toString(),
      'categories_page': categoriesPage.toString(),
    };
    
    final queryString = params.entries
        .map((e) => '${e.key}=${e.value}')
        .join('&');
    
    return '$baseUrl/public/sub-categories?$queryString';
  }

  // ===== VIDEO LIBRARY ENDPOINTS =====
  /// Get videos with pagination and sorting
  /// Parameters: sort, page, perpage
  static String getVideos({
    String sort = '-video_priority',
    int page = 1,
    int perpage = 8,
  }) {
    return '$baseUrl/public/videos?sort=$sort&page=$page&perpage=$perpage';
  }

  // ===== GLOBAL SEARCH ENDPOINTS =====
  /// Global search endpoint
  /// Parameters: q (query), type (optional), page, per_page
  static String getGlobalSearch({
    required String query,
    String? type,
    int page = 1,
    int perPage = 10,
  }) {
    final params = <String, String>{
      'q': query,
      'page': page.toString(),
      'per_page': perPage.toString(),
    };
    
    if (type != null && type != 'جميع الأقسام') {
      final typeMapping = {
        'قسم المقالات': 'articles',
        'قسم الفتاوى': 'advisories',
        'قسم الصوتيات': 'sounds',
      };
      params['type'] = typeMapping[type] ?? type;
    }
    
    final queryString = params.entries
        .map((e) => '${e.key}=${e.value}')
        .join('&');
    
    return '$baseUrl/public/search?$queryString';
  }

  // ===== ARTICLE DETAIL ENDPOINTS =====
  /// Get article detail by ID with category information
  /// Parameters: articleId, include (optional)
  static String getArticleDetail({
    required int articleId,
    String include = 'category',
  }) {
    return '$baseUrl/public/articles/$articleId?include=$include';
  }

  // ===== SOUND DETAIL ENDPOINTS =====
  /// Get sound detail by ID with category information
  /// Parameters: soundId, include (optional)
  static String getSoundDetail({
    required int soundId,
    String include = 'category',
  }) {
    return '$baseUrl/public/sounds/$soundId?include=$include';
  }

  // ===== ADVISORY CATEGORIES ENDPOINTS =====
  /// Get advisory categories with pagination
  /// Parameters: categories_per_page, categories_page
  static String getAdvisoryCategories({
    int categoriesPerPage = 3,
    int categoriesPage = 1,
  }) {
    return '$baseUrl/public/categories/advisories?categories_per_page=$categoriesPerPage&categories_page=$categoriesPage';
  }

  // ===== ADVISORY FATWAS ENDPOINTS =====
  /// Get recent advisories
  static const String getRecentAdvisories = '$baseUrl/public/advisories/recent';

  /// Get popular advisories
  static const String getPopularAdvisories = '$baseUrl/public/advisories/popular';

  /// Submit advisory question
  static const String submitAdvisoryUrl = '$baseUrl/public/advisories';

  // ===== CONTACT US ENDPOINTS =====
  /// Contact us form submission endpoint
  static const String contactUsUrl = '$baseUrl/public/contact';

  // ===== LEGACY ENDPOINTS (for backward compatibility) =====
  @Deprecated('Use getArticlesByCategory instead')
  static const String biographiesUrl = '$baseUrl/public/categories/articles';
}