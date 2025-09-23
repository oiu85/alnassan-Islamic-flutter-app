class SearchArticleModel {
  final int id;
  final String title;
  final String summary;
  final String image;
  final String category;
  final String date;
  final String type;
  final String url;

  const SearchArticleModel({
    required this.id,
    required this.title,
    required this.summary,
    required this.image,
    required this.category,
    required this.date,
    required this.type,
    required this.url,
  });

  factory SearchArticleModel.fromJson(Map<String, dynamic> json) {
    // Parse and clean the title
    final rawTitle = json['title'] as String? ?? '';
    final cleanTitle = _parseAndCleanTitle(rawTitle);
    
    return SearchArticleModel(
      id: json['id'] as int? ?? 0,
      title: cleanTitle,
      summary: json['summary'] as String? ?? '',
      image: json['image'] as String? ?? '',
      category: json['category'] as String? ?? '',
      date: json['date'] as String? ?? '',
      type: json['type'] as String? ?? 'article',
      url: json['url'] as String? ?? '',
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
      'image': image,
      'category': category,
      'date': date,
      'type': type,
      'url': url,
    };
  }
}
