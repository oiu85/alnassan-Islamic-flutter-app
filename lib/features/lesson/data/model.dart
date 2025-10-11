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
    @JsonKey(name: 'article_cat_id', fromJson: _stringToInt) int? articleCatId,
    @JsonKey(name: 'article_pic') String? articlePic,
    @JsonKey(name: 'article_visitor', fromJson: _stringToInt) int? articleVisitor,
    @JsonKey(name: 'article_priority', fromJson: _stringToInt) int? articlePriority,
    @JsonKey(name: 'article_date') String? articleDate,
    @JsonKey(name: 'article_active', fromJson: _stringToInt) int? articleActive,
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
    @JsonKey(name: 'cat_father_id', fromJson: _stringToInt) int? catFatherId,
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

// ===== SUB-CATEGORIES API MODELS =====
// These models handle the response from {{base_url}}/public/sub-categories?cat_menus=21&articles_per_page=3&categories_per_page=3&categories_page=1&articles_page=1

@freezed
abstract class LessonSubCategoriesModel with _$LessonSubCategoriesModel {
  const factory LessonSubCategoriesModel({
    String? status,
    LessonSubCategoriesData? data,
    LessonSubCategoriesMeta? meta,
  }) = _LessonSubCategoriesModel;

  factory LessonSubCategoriesModel.fromJson(Map<String, dynamic> json) =>
      _$LessonSubCategoriesModelFromJson(json);
}

@freezed
abstract class LessonSubCategoriesData with _$LessonSubCategoriesData {
  const factory LessonSubCategoriesData({
    @JsonKey(name: 'sub_categories') List<LessonSubCategory>? subCategories,
  }) = _LessonSubCategoriesData;

  factory LessonSubCategoriesData.fromJson(Map<String, dynamic> json) =>
      _$LessonSubCategoriesDataFromJson(json);
}

@freezed
abstract class LessonSubCategory with _$LessonSubCategory {
  const factory LessonSubCategory({
    @JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,
    @JsonKey(name: 'cat_title') String? catTitle,
    @JsonKey(name: 'cat_note') String? catNote,
    @JsonKey(name: 'cat_pic') String? catPic,
    @JsonKey(name: 'cat_pos', fromJson: _stringToInt) int? catPos,
    @JsonKey(name: 'cat_menus', fromJson: _stringToInt) int? catMenus,
    @JsonKey(name: 'cat_in_sub_menu', fromJson: _stringToInt) int? catInSubMenu,
    LessonSubCategoryArticles? articles,
  }) = _LessonSubCategory;

  factory LessonSubCategory.fromJson(Map<String, dynamic> json) =>
      _$LessonSubCategoryFromJson(json);
}

@freezed
abstract class LessonSubCategoryArticles with _$LessonSubCategoryArticles {
  const factory LessonSubCategoryArticles({
    List<LessonSubCategoryArticle>? data,
    LessonSubCategoriesPagination? pagination,
  }) = _LessonSubCategoryArticles;

  factory LessonSubCategoryArticles.fromJson(Map<String, dynamic> json) =>
      _$LessonSubCategoryArticlesFromJson(json);
}

@freezed
abstract class LessonSubCategoryArticle with _$LessonSubCategoryArticle {
  const factory LessonSubCategoryArticle({
    @JsonKey(name: 'article_id', fromJson: _stringToInt) int? articleId,
    @JsonKey(name: 'article_title') String? articleTitle,
    @JsonKey(name: 'article_summary') String? articleSummary,
    @JsonKey(name: 'article_des') String? articleDes,
    @JsonKey(name: 'article_cat_id', fromJson: _stringToInt) int? articleCatId,
    @JsonKey(name: 'article_pic') String? articlePic,
    @JsonKey(name: 'article_visitor', fromJson: _stringToInt) int? articleVisitor,
    @JsonKey(name: 'article_priority', fromJson: _stringToInt) int? articlePriority,
    @JsonKey(name: 'article_date') String? articleDate,
    @JsonKey(name: 'article_active', fromJson: _stringToInt) int? articleActive,
    LessonSubCategoryArticleCategory? category,
  }) = _LessonSubCategoryArticle;

  factory LessonSubCategoryArticle.fromJson(Map<String, dynamic> json) =>
      _$LessonSubCategoryArticleFromJson(json);
}

@freezed
abstract class LessonSubCategoryArticleCategory with _$LessonSubCategoryArticleCategory {
  const factory LessonSubCategoryArticleCategory({
    @JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,
    @JsonKey(name: 'cat_title') String? catTitle,
    @JsonKey(name: 'cat_note') String? catNote,
    @JsonKey(name: 'cat_pic') String? catPic,
    @JsonKey(name: 'cat_pos', fromJson: _stringToInt) int? catPos,
    @JsonKey(name: 'cat_father_id', fromJson: _stringToInt) int? catFatherId,
  }) = _LessonSubCategoryArticleCategory;

  factory LessonSubCategoryArticleCategory.fromJson(Map<String, dynamic> json) =>
      _$LessonSubCategoryArticleCategoryFromJson(json);
}

@freezed
abstract class LessonSubCategoriesMeta with _$LessonSubCategoriesMeta {
  const factory LessonSubCategoriesMeta({
    LessonSubCategoriesPagination? pagination,
    @JsonKey(name: 'response_info') LessonSubCategoriesResponseInfo? responseInfo,
  }) = _LessonSubCategoriesMeta;

  factory LessonSubCategoriesMeta.fromJson(Map<String, dynamic> json) =>
      _$LessonSubCategoriesMetaFromJson(json);
}

@freezed
abstract class LessonSubCategoriesPagination with _$LessonSubCategoriesPagination {
  const factory LessonSubCategoriesPagination({
    @JsonKey(name: 'total', fromJson: _stringToInt) int? total,
    @JsonKey(name: 'count', fromJson: _stringToInt) int? count,
    @JsonKey(name: 'per_page', fromJson: _stringToInt) int? perPage,
    @JsonKey(name: 'current_page', fromJson: _stringToInt) int? currentPage,
    @JsonKey(name: 'last_page', fromJson: _stringToInt) int? lastPage,
    @JsonKey(name: 'from', fromJson: _stringToInt) int? from,
    @JsonKey(name: 'to', fromJson: _stringToInt) int? to,
  }) = _LessonSubCategoriesPagination;

  factory LessonSubCategoriesPagination.fromJson(Map<String, dynamic> json) =>
      _$LessonSubCategoriesPaginationFromJson(json);
}

@freezed
abstract class LessonSubCategoriesResponseInfo with _$LessonSubCategoriesResponseInfo {
  const factory LessonSubCategoriesResponseInfo({
    String? timestamp,
    @JsonKey(name: 'api_version') String? apiVersion,
    @JsonKey(name: 'endpoint') String? endpoint,
    @JsonKey(name: 'content_type') String? contentType,
  }) = _LessonSubCategoriesResponseInfo;

  factory LessonSubCategoriesResponseInfo.fromJson(Map<String, dynamic> json) =>
      _$LessonSubCategoriesResponseInfoFromJson(json);
}