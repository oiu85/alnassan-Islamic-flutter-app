import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_model.freezed.dart';
part 'home_model.g.dart';

@freezed
abstract class HomeModel with _$HomeModel {
  const factory HomeModel({
    String? status, 
    Data? data,
  }) = _HomeModel;

  factory HomeModel.fromJson(Map<String, dynamic> json) =>
      _$HomeModelFromJson(json);
}

@freezed
abstract class Data with _$Data {
  const factory Data({
    Article? article,
    @JsonKey(name: 'article_categories') 
    List<ArticleCategory>? articleCategories,
    @JsonKey(name: 'important_topics')
    ImportantTopics? importantTopics,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
abstract class Article with _$Article {
  const factory Article({
    @JsonKey(name: 'article_id') 
    int? articleId,
    @JsonKey(name: 'article_title') 
    String? articleTitle,
    @JsonKey(name: 'article_summary') 
    String? articleSummary,
    @JsonKey(name: 'article_des') 
    String? articleDes,
    @JsonKey(name: 'article_cat_id', fromJson: _intToString) 
    String? articleCatId,
    @JsonKey(name: 'article_pic') 
    String? articlePic,
    @JsonKey(name: 'article_visitor', fromJson: _intToString) 
    String? articleVisitor,
    @JsonKey(name: 'article_date') 
    String? articleDate,
    Category? category,
    @JsonKey(name: 'monthly_info') 
    MonthlyInfo? monthlyInfo,
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}

@freezed
abstract class ArticleCategory with _$ArticleCategory {
  const factory ArticleCategory({
    @JsonKey(name: 'cat_id', fromJson: _stringToInt) 
    int? catId,
    @JsonKey(name: 'cat_title') 
    String? catTitle,
    @JsonKey(name: 'cat_note') 
    String? catNote,
    @JsonKey(name: 'cat_pic') 
    String? catPic,
    @JsonKey(name: 'cat_menus', fromJson: _intToString) 
    String? catMenus,
    @JsonKey(name: 'cat_pos', fromJson: _intToString) 
    String? catPos,
    @JsonKey(name: 'cat_in_sub_menu', fromJson: _intToString) 
    String? catInSubMenu,
  }) = _ArticleCategory;

  factory ArticleCategory.fromJson(Map<String, dynamic> json) =>
      _$ArticleCategoryFromJson(json);
}

@freezed
abstract class MonthlyInfo with _$MonthlyInfo {
  const factory MonthlyInfo({
    @JsonKey(name: 'current_month') 
    int? currentMonth,
    @JsonKey(name: 'current_year') 
    int? currentYear,
    int? index,
  }) = _MonthlyInfo;

  factory MonthlyInfo.fromJson(Map<String, dynamic> json) =>
      _$MonthlyInfoFromJson(json);
}

@freezed
abstract class Category with _$Category {
  const factory Category({
    @JsonKey(name: 'cat_id') 
    int? catId,
    @JsonKey(name: 'cat_title') 
    String? catTitle,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
abstract class ImportantTopics with _$ImportantTopics {
  const factory ImportantTopics({
    List<ImportantTopic>? data,
  }) = _ImportantTopics;

  factory ImportantTopics.fromJson(Map<String, dynamic> json) =>
      _$ImportantTopicsFromJson(json);
}

@freezed
abstract class ImportantTopic with _$ImportantTopic {
  const factory ImportantTopic({
    int? id,
    String? title,
    String? summary,
    String? content,
    ImportantTopicCategory? category,
    String? image,
    @JsonKey(name: 'visitor_count', fromJson: _intToString) String? visitorCount,
    String? date,
    @JsonKey(fromJson: _intToString) String? priority,
    String? type,
    int? order,
    @JsonKey(name: 'question') String? question,
    @JsonKey(name: 'answer') String? answer,
    @JsonKey(name: 'answer_date') String? answerDate,
    @JsonKey(name: 'sender_name') String? senderName,
  }) = _ImportantTopic;

  factory ImportantTopic.fromJson(Map<String, dynamic> json) =>
      _$ImportantTopicFromJson(json);
}

// Helper function to convert int to String
String? _intToString(dynamic value) {
  if (value == null) return null;
  if (value is String) return value;
  if (value is int) return value.toString();
  return value.toString();
}

// Helper function to convert String to int
int? _stringToInt(dynamic value) {
  if (value == null) return null;
  if (value is int) return value;
  if (value is String) return int.tryParse(value);
  return null;
}

@freezed
abstract class ImportantTopicCategory with _$ImportantTopicCategory {
  const factory ImportantTopicCategory({
    int? id,
    String? title,
  }) = _ImportantTopicCategory;

  factory ImportantTopicCategory.fromJson(Map<String, dynamic> json) =>
      _$ImportantTopicCategoryFromJson(json);
}