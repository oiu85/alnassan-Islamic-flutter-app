class SoundDetailModel {
  final int id;
  final String title;
  final String summary;
  final String description;
  final String image;
  final String date;
  final int categoryId;
  final String categoryName;
  final String categoryDescription;
  final String? duration;
  final String plays;
  final String fileUrl;
  final String sourceUrl;
  final String youtubeId;
  final bool isActive;
  final String type;
  final String url;

  const SoundDetailModel({
    required this.id,
    required this.title,
    required this.summary,
    required this.description,
    required this.image,
    required this.date,
    required this.categoryId,
    required this.categoryName,
    required this.categoryDescription,
    this.duration,
    required this.plays,
    required this.fileUrl,
    required this.sourceUrl,
    required this.youtubeId,
    required this.isActive,
    required this.type,
    required this.url,
  });

  factory SoundDetailModel.fromJson(Map<String, dynamic> json) {
    // Handle the actual API response structure
    final data = json['data'] as Map<String, dynamic>? ?? json;
    final category = data['category'] as Map<String, dynamic>? ?? {};
    
    // Parse and clean the title
    final rawTitle = data['sound_title'] as String? ?? data['title'] as String? ?? '';
    final cleanTitle = _parseAndCleanTitle(rawTitle);
    
    // Handle type conversion for plays (can be int or String)
    final playsValue = data['sound_visitor'] ?? data['plays'];
    final plays = playsValue is int ? playsValue.toString() : playsValue as String? ?? '0';
    
    return SoundDetailModel(
      id: _parseInt(data['sound_id'] ?? data['id']),
      title: cleanTitle,
      summary: data['sound_summary'] as String? ?? data['summary'] as String? ?? '',
      description: data['sound_des'] as String? ?? data['description'] as String? ?? '',
      image: data['sound_pic'] as String? ?? data['image'] as String? ?? '',
      date: data['sound_date'] as String? ?? data['date'] as String? ?? '',
      categoryId: _parseInt(category['cat_id'] ?? category['id']),
      categoryName: category['cat_title'] as String? ?? category['name'] as String? ?? '',
      categoryDescription: category['cat_des'] as String? ?? category['description'] as String? ?? '',
      duration: data['sound_duration'] as String? ?? data['duration'] as String?,
      plays: plays,
      fileUrl: data['sound_file'] as String? ?? data['file_url'] as String? ?? '',
      sourceUrl: data['sound_source_url'] as String? ?? data['source_url'] as String? ?? '',
      youtubeId: data['sound_youtube_id'] as String? ?? data['youtube_id'] as String? ?? '',
      isActive: data['sound_active'] as bool? ?? data['is_active'] as bool? ?? true,
      type: data['type'] as String? ?? 'sound',
      url: data['url'] as String? ?? '',
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
      'description': description,
      'image': image,
      'date': date,
      'categoryId': categoryId,
      'categoryName': categoryName,
      'categoryDescription': categoryDescription,
      'duration': duration,
      'plays': plays,
      'fileUrl': fileUrl,
      'sourceUrl': sourceUrl,
      'youtubeId': youtubeId,
      'isActive': isActive,
      'type': type,
      'url': url,
    };
  }
}
