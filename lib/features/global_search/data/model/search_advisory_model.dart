class SearchAdvisoryModel {
  final int id;
  final String title;
  final String summary;
  final String description;
  final String categoryName;
  final int categoryId;
  final String image;
  final String date;
  final String question;
  final String answer;
  final String senderName;
  final String answerDate;
  final bool isActive;

  const SearchAdvisoryModel({
    required this.id,
    required this.title,
    required this.summary,
    required this.description,
    required this.categoryName,
    required this.categoryId,
    required this.image,
    required this.date,
    required this.question,
    required this.answer,
    required this.senderName,
    required this.answerDate,
    required this.isActive,
  });

  factory SearchAdvisoryModel.fromJson(Map<String, dynamic> json) {
    return SearchAdvisoryModel(
      id: _parseInt(json['id'] ?? json['advisory_id']),
      title: json['title'] as String? ?? json['advisory_title'] as String? ?? '',
      summary: json['summary'] as String? ?? '',
      description: json['description'] as String? ?? '',
      categoryName: json['category_name'] as String? ?? '',
      categoryId: _parseInt(json['category_id'] ?? json['advisory_cat_id']),
      image: json['image'] as String? ?? '',
      date: json['date'] as String? ?? json['advisory_question_date'] as String? ?? '',
      question: json['question'] as String? ?? json['advisory_question'] as String? ?? '',
      answer: json['answer'] as String? ?? json['advisory_answer'] as String? ?? '',
      senderName: json['sender_name'] as String? ?? json['advisory_sender_name'] as String? ?? '',
      answerDate: json['answer_date'] as String? ?? json['advisory_answer_date'] as String? ?? '',
      isActive: _parseBool(json['is_active'] ?? json['advisory_active']),
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

  static bool _parseBool(dynamic value) {
    if (value == null) return false;
    if (value is bool) return value;
    if (value is String) {
      return value.toLowerCase() == 'true' || value == '1';
    }
    if (value is int) {
      return value == 1;
    }
    return false;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'summary': summary,
      'description': description,
      'category_name': categoryName,
      'category_id': categoryId,
      'image': image,
      'date': date,
      'question': question,
      'answer': answer,
      'sender_name': senderName,
      'answer_date': answerDate,
      'is_active': isActive,
    };
  }
}
