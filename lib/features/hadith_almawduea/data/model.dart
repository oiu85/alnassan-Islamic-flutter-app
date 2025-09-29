import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
abstract class AlmawdueaModel with _$AlmawdueaModel {
  const factory AlmawdueaModel({
    String? status,
    AlmawdueaData? data,
    AlmawdueaMeta? meta,
  }) = _AlmawdueaModel;

  factory AlmawdueaModel.fromJson(Map<String, dynamic> json) =>
      _$AlmawdueaModelFromJson(json);
}

@freezed
abstract class AlmawdueaData with _$AlmawdueaData {
  const factory AlmawdueaData({
    List<AlmawdueaCategoryWithArticles>? categories,
  }) = _AlmawdueaData;

  factory AlmawdueaData.fromJson(Map<String, dynamic> json) =>
      _$AlmawdueaDataFromJson(json);
}

@freezed
abstract class AlmawdueaCategoryWithArticles with _$AlmawdueaCategoryWithArticles {
  const factory AlmawdueaCategoryWithArticles({
    @JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,
    @JsonKey(name: 'cat_title') String? catTitle,
    @JsonKey(name: 'cat_note') String? catNote,
    @JsonKey(name: 'cat_pic') String? catPic,
    @JsonKey(name: 'cat_pos', fromJson: _stringToInt) int? catPos,
    dynamic parent,
    List<dynamic>? children,
    List<AlmawdueaHierarchy>? hierarchy,
    List<AlmawdueaArticle>? articles,
    AlmawdueaPagination? pagination,
  }) = _AlmawdueaCategoryWithArticles;

  factory AlmawdueaCategoryWithArticles.fromJson(Map<String, dynamic> json) =>
      _$AlmawdueaCategoryWithArticlesFromJson(json);
}

@freezed
abstract class AlmawdueaHierarchy with _$AlmawdueaHierarchy {
  const factory AlmawdueaHierarchy({
    @JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,
    @JsonKey(name: 'cat_title') String? catTitle,
    @JsonKey(name: 'level', fromJson: _stringToInt) int? level,
  }) = _AlmawdueaHierarchy;

  factory AlmawdueaHierarchy.fromJson(Map<String, dynamic> json) =>
      _$AlmawdueaHierarchyFromJson(json);
}

@freezed
abstract class AlmawdueaCategory with _$AlmawdueaCategory {
  const factory AlmawdueaCategory({
    @JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,
    @JsonKey(name: 'cat_title') String? catTitle,
    @JsonKey(name: 'cat_note') String? catNote,
    @JsonKey(name: 'cat_pic') String? catPic,
    @JsonKey(name: 'cat_pos', fromJson: _stringToInt) int? catPos,
    dynamic parent,
    List<dynamic>? children,
  }) = _AlmawdueaCategory;

  factory AlmawdueaCategory.fromJson(Map<String, dynamic> json) =>
      _$AlmawdueaCategoryFromJson(json);
}

int? _stringToInt(dynamic value) {
  if (value == null) return null;
  if (value is int) return value;
  if (value is String) return int.tryParse(value);
  return null;
}

@freezed
abstract class AlmawdueaArticle with _$AlmawdueaArticle {
  const factory AlmawdueaArticle({
    @JsonKey(name: 'article_id') int? articleId,
    @JsonKey(name: 'article_title') String? articleTitle,
    @JsonKey(name: 'article_summary') String? articleSummary,
    @JsonKey(name: 'article_cat_id') String? articleCatId,
    @JsonKey(name: 'article_pic') String? articlePic,
    @JsonKey(name: 'article_visitor') String? articleVisitor,
    @JsonKey(name: 'article_priority') String? articlePriority,
    @JsonKey(name: 'article_date') String? articleDate,
    @JsonKey(name: 'article_active') String? articleActive,
    AlmawdueaArticleCategory? category,
  }) = _AlmawdueaArticle;

  factory AlmawdueaArticle.fromJson(Map<String, dynamic> json) =>
      _$AlmawdueaArticleFromJson(json);
}

@freezed
abstract class AlmawdueaArticleCategory with _$AlmawdueaArticleCategory {
  const factory AlmawdueaArticleCategory({
    @JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,
    @JsonKey(name: 'cat_title') String? catTitle,
  }) = _AlmawdueaArticleCategory;

  factory AlmawdueaArticleCategory.fromJson(Map<String, dynamic> json) =>
      _$AlmawdueaArticleCategoryFromJson(json);
}

@freezed
abstract class AlmawdueaMeta with _$AlmawdueaMeta {
  const factory AlmawdueaMeta({
    AlmawdueaPagination? pagination,
  }) = _AlmawdueaMeta;

  factory AlmawdueaMeta.fromJson(Map<String, dynamic> json) =>
      _$AlmawdueaMetaFromJson(json);
}

@freezed
abstract class AlmawdueaPagination with _$AlmawdueaPagination {
  const factory AlmawdueaPagination({
    @JsonKey(name: 'total', fromJson: _stringToInt) int? total,
    @JsonKey(name: 'count', fromJson: _stringToInt) int? count,
    @JsonKey(name: 'per_page', fromJson: _stringToInt) int? perPage,
    @JsonKey(name: 'current_page', fromJson: _stringToInt) int? currentPage,
    @JsonKey(name: 'last_page', fromJson: _stringToInt) int? lastPage,
    @JsonKey(name: 'from', fromJson: _stringToInt) int? from,
    @JsonKey(name: 'to', fromJson: _stringToInt) int? to,
  }) = _AlmawdueaPagination;

  factory AlmawdueaPagination.fromJson(Map<String, dynamic> json) =>
      _$AlmawdueaPaginationFromJson(json);
}

// ===== ARTICLE DETAIL MODELS FOR INDIVIDUAL ARTICLE API =====
// These models handle the response from {{base_url}}/public/articles/#id?include=category

@freezed
abstract class AlmawdueaArticleDetailModel with _$AlmawdueaArticleDetailModel {
  const factory AlmawdueaArticleDetailModel({
    String? status,
    AlmawdueaArticleDetailData? data,
  }) = _AlmawdueaArticleDetailModel;

  factory AlmawdueaArticleDetailModel.fromJson(Map<String, dynamic> json) =>
      _$AlmawdueaArticleDetailModelFromJson(json);
}

@freezed
abstract class AlmawdueaArticleDetailData with _$AlmawdueaArticleDetailData {
  const factory AlmawdueaArticleDetailData({
    @JsonKey(name: 'article_id', fromJson: _stringToInt) int? articleId,
    @JsonKey(name: 'article_title') String? articleTitle,
    @JsonKey(name: 'article_des') String? articleDes,
    @JsonKey(name: 'article_summary') String? articleSummary,
    @JsonKey(name: 'article_cat_id', fromJson: _stringToInt) int? articleCatId,
    @JsonKey(name: 'article_pic') String? articlePic,
    @JsonKey(name: 'article_visitor', fromJson: _stringToInt) int? articleVisitor,
    @JsonKey(name: 'article_priority', fromJson: _stringToInt) int? articlePriority,
    @JsonKey(name: 'article_date') String? articleDate,
    @JsonKey(name: 'article_active', fromJson: _stringToInt) int? articleActive,
    AlmawdueaArticleDetailCategory? category,
  }) = _AlmawdueaArticleDetailData;

  factory AlmawdueaArticleDetailData.fromJson(Map<String, dynamic> json) =>
      _$AlmawdueaArticleDetailDataFromJson(json);
}

@freezed
abstract class AlmawdueaArticleDetailCategory with _$AlmawdueaArticleDetailCategory {
  const factory AlmawdueaArticleDetailCategory({
    @JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,
    @JsonKey(name: 'cat_title') String? catTitle,
    @JsonKey(name: 'cat_note') String? catNote,
    @JsonKey(name: 'cat_pic') String? catPic,
    @JsonKey(name: 'cat_pos', fromJson: _stringToInt) int? catPos,
    @JsonKey(name: 'cat_father_id', fromJson: _stringToInt) int? catFatherId,
  }) = _AlmawdueaArticleDetailCategory;

  factory AlmawdueaArticleDetailCategory.fromJson(Map<String, dynamic> json) =>
      _$AlmawdueaArticleDetailCategoryFromJson(json);
}
