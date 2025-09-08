import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
abstract class LessonModel with _$LessonModel {
  const factory LessonModel({
    String? status,
    LessonData? data,
    LessonMeta? meta,
  }) = _LessonModel;

  factory LessonModel.fromJson(Map<String, dynamic> json) =>
      _$LessonModelFromJson(json);
}

@freezed
abstract class LessonData with _$LessonData {
  const factory LessonData({
    List<LessonCategoryWithArticles>? categories,
    @JsonKey(name: 'is_multiple_categories') bool? isMultipleCategories,
  }) = _LessonData;

  factory LessonData.fromJson(Map<String, dynamic> json) =>
      _$LessonDataFromJson(json);
}

@freezed
abstract class LessonCategoryWithArticles with _$LessonCategoryWithArticles {
  const factory LessonCategoryWithArticles({
    @JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,
    @JsonKey(name: 'cat_title') String? catTitle,
    @JsonKey(name: 'cat_note') String? catNote,
    @JsonKey(name: 'cat_pic') String? catPic,
    @JsonKey(name: 'cat_pos', fromJson: _stringToInt) int? catPos,
    dynamic parent,
    List<dynamic>? children,
    List<LessonHierarchy>? hierarchy,
    List<LessonArticle>? articles,
    LessonPagination? pagination,
  }) = _LessonCategoryWithArticles;

  factory LessonCategoryWithArticles.fromJson(Map<String, dynamic> json) =>
      _$LessonCategoryWithArticlesFromJson(json);
}

@freezed
abstract class LessonHierarchy with _$LessonHierarchy {
  const factory LessonHierarchy({
    @JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,
    @JsonKey(name: 'cat_title') String? catTitle,
    @JsonKey(name: 'level', fromJson: _stringToInt) int? level,
  }) = _LessonHierarchy;

  factory LessonHierarchy.fromJson(Map<String, dynamic> json) =>
      _$LessonHierarchyFromJson(json);
}

@freezed
abstract class LessonCategory with _$LessonCategory {
  const factory LessonCategory({
    @JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,
    @JsonKey(name: 'cat_title') String? catTitle,
    @JsonKey(name: 'cat_note') String? catNote,
    @JsonKey(name: 'cat_pic') String? catPic,
    @JsonKey(name: 'cat_pos', fromJson: _stringToInt) int? catPos,
    dynamic parent,
    List<dynamic>? children,
  }) = _LessonCategory;

  factory LessonCategory.fromJson(Map<String, dynamic> json) =>
      _$LessonCategoryFromJson(json);
}

int? _stringToInt(dynamic value) {
  if (value == null) return null;
  if (value is int) return value;
  if (value is String) return int.tryParse(value);
  return null;
}

@freezed
abstract class LessonArticle with _$LessonArticle {
  const factory LessonArticle({
    @JsonKey(name: 'article_id', fromJson: _stringToInt) int? articleId,
    @JsonKey(name: 'article_title') String? articleTitle,
    @JsonKey(name: 'article_summary') String? articleSummary,
    @JsonKey(name: 'article_cat_id') String? articleCatId,
    @JsonKey(name: 'article_pic') String? articlePic,
    @JsonKey(name: 'article_visitor') String? articleVisitor,
    @JsonKey(name: 'article_priority') String? articlePriority,
    @JsonKey(name: 'article_date') String? articleDate,
    @JsonKey(name: 'article_active') String? articleActive,
    LessonArticleCategory? category,
  }) = _LessonArticle;

  factory LessonArticle.fromJson(Map<String, dynamic> json) =>
      _$LessonArticleFromJson(json);
}

@freezed
abstract class LessonArticleCategory with _$LessonArticleCategory {
  const factory LessonArticleCategory({
    @JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,
    @JsonKey(name: 'cat_title') String? catTitle,
    @JsonKey(name: 'cat_father_id') String? catFatherId,
  }) = _LessonArticleCategory;

  factory LessonArticleCategory.fromJson(Map<String, dynamic> json) =>
      _$LessonArticleCategoryFromJson(json);
}

@freezed
abstract class LessonMeta with _$LessonMeta {
  const factory LessonMeta({
    LessonStatistics? statistics,
    @JsonKey(name: 'response_info') LessonResponseInfo? responseInfo,
  }) = _LessonMeta;

  factory LessonMeta.fromJson(Map<String, dynamic> json) =>
      _$LessonMetaFromJson(json);
}

@freezed
abstract class LessonStatistics with _$LessonStatistics {
  const factory LessonStatistics({
    @JsonKey(name: 'total_categories', fromJson: _stringToInt) int? totalCategories,
    @JsonKey(name: 'total_child_categories', fromJson: _stringToInt) int? totalChildCategories,
    @JsonKey(name: 'requested_category_ids') List<int>? requestedCategoryIds,
    @JsonKey(name: 'all_category_ids_included') List<int>? allCategoryIdsIncluded,
    @JsonKey(name: 'has_parent_categories') bool? hasParentCategories,
  }) = _LessonStatistics;

  factory LessonStatistics.fromJson(Map<String, dynamic> json) =>
      _$LessonStatisticsFromJson(json);
}

@freezed
abstract class LessonResponseInfo with _$LessonResponseInfo {
  const factory LessonResponseInfo({
    String? timestamp,
    @JsonKey(name: 'api_version') String? apiVersion,
    @JsonKey(name: 'endpoint') String? endpoint,
    @JsonKey(name: 'content_type') String? contentType,
  }) = _LessonResponseInfo;

  factory LessonResponseInfo.fromJson(Map<String, dynamic> json) =>
      _$LessonResponseInfoFromJson(json);
}

@freezed
abstract class LessonPagination with _$LessonPagination {
  const factory LessonPagination({
    @JsonKey(name: 'total', fromJson: _stringToInt) int? total,
    @JsonKey(name: 'count', fromJson: _stringToInt) int? count,
    @JsonKey(name: 'per_page', fromJson: _stringToInt) int? perPage,
    @JsonKey(name: 'current_page', fromJson: _stringToInt) int? currentPage,
    @JsonKey(name: 'last_page', fromJson: _stringToInt) int? lastPage,
    @JsonKey(name: 'from', fromJson: _stringToInt) int? from,
    @JsonKey(name: 'to', fromJson: _stringToInt) int? to,
  }) = _LessonPagination;

  factory LessonPagination.fromJson(Map<String, dynamic> json) =>
      _$LessonPaginationFromJson(json);
}

// ===== ARTICLE DETAIL MODELS FOR INDIVIDUAL ARTICLE API =====
// These models handle the response from {{base_url}}/public/articles/#id?include=category

@freezed
abstract class LessonArticleDetailModel with _$LessonArticleDetailModel {
  const factory LessonArticleDetailModel({
    String? status,
    LessonArticleDetailData? data,
  }) = _LessonArticleDetailModel;

  factory LessonArticleDetailModel.fromJson(Map<String, dynamic> json) =>
      _$LessonArticleDetailModelFromJson(json);
}

@freezed
abstract class LessonArticleDetailData with _$LessonArticleDetailData {
  const factory LessonArticleDetailData({
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
    LessonArticleDetailCategory? category,
  }) = _LessonArticleDetailData;

  factory LessonArticleDetailData.fromJson(Map<String, dynamic> json) =>
      _$LessonArticleDetailDataFromJson(json);
}

@freezed
abstract class LessonArticleDetailCategory with _$LessonArticleDetailCategory {
  const factory LessonArticleDetailCategory({
    @JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,
    @JsonKey(name: 'cat_title') String? catTitle,
    @JsonKey(name: 'cat_note') String? catNote,
    @JsonKey(name: 'cat_pic') String? catPic,
    @JsonKey(name: 'cat_pos', fromJson: _stringToInt) int? catPos,
    @JsonKey(name: 'cat_father_id', fromJson: _stringToInt) int? catFatherId,
  }) = _LessonArticleDetailCategory;

  factory LessonArticleDetailCategory.fromJson(Map<String, dynamic> json) =>
      _$LessonArticleDetailCategoryFromJson(json);
}
