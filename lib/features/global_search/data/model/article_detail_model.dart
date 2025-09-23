class ArticleDetailModel {
  final int id;
  final String title;
  final String summary;
  final String description;
  final String image;
  final String date;
  final int categoryId;
  final String categoryName;
  final String categoryDescription;
  final String type;
  final String url;

  const ArticleDetailModel({
    required this.id,
    required this.title,
    required this.summary,
    required this.description,
    required this.image,
    required this.date,
    required this.categoryId,
    required this.categoryName,
    required this.categoryDescription,
    required this.type,
    required this.url,
  });

  factory ArticleDetailModel.fromJson(Map<String, dynamic> json) {
    // Handle the actual API response structure
    final data = json['data'] as Map<String, dynamic>? ?? json;
    final category = data['category'] as Map<String, dynamic>? ?? {};
    
    // Parse and clean the title
    final rawTitle = data['article_title'] as String? ?? data['title'] as String? ?? '';
    final cleanTitle = _parseAndCleanTitle(rawTitle);
    
    return ArticleDetailModel(
      id: data['article_id'] as int? ?? data['id'] as int? ?? 0,
      title: cleanTitle,
      summary: data['article_summary'] as String? ?? data['summary'] as String? ?? '',
      description: data['article_des'] as String? ?? data['description'] as String? ?? '',
      image: data['article_pic'] as String? ?? data['image'] as String? ?? '',
      date: data['article_date'] as String? ?? data['date'] as String? ?? '',
      categoryId: category['cat_id'] as int? ?? category['id'] as int? ?? 0,
      categoryName: category['cat_title'] as String? ?? category['name'] as String? ?? '',
      categoryDescription: category['cat_des'] as String? ?? category['description'] as String? ?? '',
      type: data['type'] as String? ?? 'article',
      url: data['url'] as String? ?? '',
    );
  }

  /// Parse and clean the article title to remove HTML entities and format properly
  static String _parseAndCleanTitle(String rawTitle) {
    if (rawTitle.isEmpty) return '';
    
    // Remove HTML tags
    String cleanTitle = rawTitle.replaceAll(RegExp(r'<[^>]*>'), '');
    
    // Decode HTML entities
    cleanTitle = cleanTitle
        .replaceAll('&amp;', '&')
        .replaceAll('&lt;', '<')
        .replaceAll('&gt;', '>')
        .replaceAll('&quot;', '"')
        .replaceAll('&#39;', "'")
        .replaceAll('&nbsp;', ' ')
        .replaceAll('&ndash;', '–')
        .replaceAll('&mdash;', '—')
        .replaceAll('&hellip;', '…')
        .replaceAll('&lsquo;', ''')
        .replaceAll('&rsquo;', ''')
        .replaceAll('&ldquo;', '"')
        .replaceAll('&rdquo;', '"')
        .replaceAll('&bull;', '•')
        .replaceAll('&copy;', '©')
        .replaceAll('&reg;', '®')
        .replaceAll('&trade;', '™');
    
    // Clean up extra whitespace
    cleanTitle = cleanTitle.replaceAll(RegExp(r'\s+'), ' ').trim();
    
    return cleanTitle;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'summary': summary,
      'description': description,
      'image': image,
      'date': date,
      'categoryId': categoryId,
      'categoryName': categoryName,
      'categoryDescription': categoryDescription,
      'type': type,
      'url': url,
    };
  }
}
