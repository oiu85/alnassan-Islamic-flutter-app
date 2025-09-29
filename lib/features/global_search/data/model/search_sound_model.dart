class SearchSoundModel {
  final int id;
  final String title;
  final String summary;
  final String image;
  final String category;
  final String? duration;
  final String plays;
  final String date;
  final String type;
  final String url;

  const SearchSoundModel({
    required this.id,
    required this.title,
    required this.summary,
    required this.image,
    required this.category,
    this.duration,
    required this.plays,
    required this.date,
    required this.type,
    required this.url,
  });

  factory SearchSoundModel.fromJson(Map<String, dynamic> json) {
    // Parse and clean the title
    final rawTitle = json['title'] as String? ?? '';
    final cleanTitle = _parseAndCleanTitle(rawTitle);
    
    // Handle type conversion for plays (can be int or String)
    final playsValue = json['plays'];
    final plays = playsValue is int ? playsValue.toString() : playsValue as String? ?? '0';
    
    return SearchSoundModel(
      id: _parseInt(json['id']),
      title: cleanTitle,
      summary: json['summary'] as String? ?? '',
      image: json['image'] as String? ?? '',
      category: json['category'] as String? ?? '',
      duration: json['duration'] as String?,
      plays: plays,
      date: json['date'] as String? ?? '',
      type: json['type'] as String? ?? 'sound',
      url: json['url'] as String? ?? '',
    );
  }

  static int _parseInt(dynamic value) {
    if (value == null) return 0;
    if (value is int) return value;
    if (value is String) {
      return int.tryParse(value) ?? 0;
    }
    return 0;
  }

  /// Parse and clean the sound title to remove HTML entities and format properly
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
      'duration': duration,
      'plays': plays,
      'date': date,
      'type': type,
      'url': url,
    };
  }
}
