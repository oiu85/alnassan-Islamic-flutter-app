import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
abstract class BiographiesAndHadithsModel with _$BiographiesAndHadithsModel {
  const factory BiographiesAndHadithsModel({
    String? status,
    BiographiesData? data,
    BiographiesMeta? meta,
  }) = _BiographiesAndHadithsModel;

  factory BiographiesAndHadithsModel.fromJson(Map<String, dynamic> json) =>
      _$BiographiesAndHadithsModelFromJson(json);
}

@freezed
abstract class BiographiesData with _$BiographiesData {
  const factory BiographiesData({
    List<BiographiesCategoryWithArticles>? categories,
  }) = _BiographiesData;

  factory BiographiesData.fromJson(Map<String, dynamic> json) =>
      _$BiographiesDataFromJson(json);
}

@freezed
abstract class BiographiesCategoryWithArticles with _$BiographiesCategoryWithArticles {
  const factory BiographiesCategoryWithArticles({
    @JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,
    @JsonKey(name: 'cat_title') String? catTitle,
    @JsonKey(name: 'cat_note') String? catNote,
    @JsonKey(name: 'cat_pic') String? catPic,
    @JsonKey(name: 'cat_pos', fromJson: _stringToInt) int? catPos,
    dynamic parent,
    List<dynamic>? children,
    List<BiographiesHierarchy>? hierarchy,
    List<BiographiesArticle>? articles,
    BiographiesPagination? pagination,
  }) = _BiographiesCategoryWithArticles;

  factory BiographiesCategoryWithArticles.fromJson(Map<String, dynamic> json) =>
      _$BiographiesCategoryWithArticlesFromJson(json);
}

@freezed
abstract class BiographiesHierarchy with _$BiographiesHierarchy {
  const factory BiographiesHierarchy({
    @JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,
    @JsonKey(name: 'cat_title') String? catTitle,
    @JsonKey(name: 'level', fromJson: _stringToInt) int? level,
  }) = _BiographiesHierarchy;

  factory BiographiesHierarchy.fromJson(Map<String, dynamic> json) =>
      _$BiographiesHierarchyFromJson(json);
}

@freezed
abstract class BiographiesCategory with _$BiographiesCategory {
  const factory BiographiesCategory({
    @JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,
    @JsonKey(name: 'cat_title') String? catTitle,
    @JsonKey(name: 'cat_note') String? catNote,
    @JsonKey(name: 'cat_pic') String? catPic,
    @JsonKey(name: 'cat_pos', fromJson: _stringToInt) int? catPos,
    dynamic parent,
    List<dynamic>? children,
  }) = _BiographiesCategory;

  factory BiographiesCategory.fromJson(Map<String, dynamic> json) =>
      _$BiographiesCategoryFromJson(json);
}

int? _stringToInt(dynamic value) {
  if (value == null) return null;
  if (value is int) return value;
  if (value is String) return int.tryParse(value);
  return null;
}

@freezed
abstract class BiographiesArticle with _$BiographiesArticle {
  const factory BiographiesArticle({
    @JsonKey(name: 'article_id') int? articleId,
    @JsonKey(name: 'article_title') String? articleTitle,
    @JsonKey(name: 'article_summary') String? articleSummary,
    @JsonKey(name: 'article_cat_id', fromJson: _stringToInt) int? articleCatId,
    @JsonKey(name: 'article_pic') String? articlePic,
    @JsonKey(name: 'article_visitor', fromJson: _stringToInt) int? articleVisitor,
    @JsonKey(name: 'article_priority', fromJson: _stringToInt) int? articlePriority,
    @JsonKey(name: 'article_date') String? articleDate,
    @JsonKey(name: 'article_active', fromJson: _stringToInt) int? articleActive,
    BiographiesArticleCategory? category,
  }) = _BiographiesArticle;

  factory BiographiesArticle.fromJson(Map<String, dynamic> json) =>
      _$BiographiesArticleFromJson(json);
}

@freezed
abstract class BiographiesArticleCategory with _$BiographiesArticleCategory {
  const factory BiographiesArticleCategory({
    @JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,
    @JsonKey(name: 'cat_title') String? catTitle,
  }) = _BiographiesArticleCategory;

  factory BiographiesArticleCategory.fromJson(Map<String, dynamic> json) =>
      _$BiographiesArticleCategoryFromJson(json);
}

@freezed
abstract class BiographiesMeta with _$BiographiesMeta {
  const factory BiographiesMeta({
    BiographiesPagination? pagination,
  }) = _BiographiesMeta;

  factory BiographiesMeta.fromJson(Map<String, dynamic> json) =>
      _$BiographiesMetaFromJson(json);
}

@freezed
abstract class BiographiesPagination with _$BiographiesPagination {
  const factory BiographiesPagination({
    @JsonKey(name: 'total', fromJson: _stringToInt) int? total,
    @JsonKey(name: 'count', fromJson: _stringToInt) int? count,
    @JsonKey(name: 'per_page', fromJson: _stringToInt) int? perPage,
    @JsonKey(name: 'current_page', fromJson: _stringToInt) int? currentPage,
    @JsonKey(name: 'last_page', fromJson: _stringToInt) int? lastPage,
    @JsonKey(name: 'from', fromJson: _stringToInt) int? from,
    @JsonKey(name: 'to', fromJson: _stringToInt) int? to,
  }) = _BiographiesPagination;

  factory BiographiesPagination.fromJson(Map<String, dynamic> json) =>
      _$BiographiesPaginationFromJson(json);
}

// ===== ARTICLE DETAIL MODELS FOR INDIVIDUAL ARTICLE API =====
// These models handle the response from {{base_url}}/public/articles/#id?include=category

@freezed
abstract class ArticleDetailModel with _$ArticleDetailModel {
  const factory ArticleDetailModel({
    String? status,
    ArticleDetailData? data,
  }) = _ArticleDetailModel;

  factory ArticleDetailModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleDetailModelFromJson(json);
}

@freezed
abstract class ArticleDetailData with _$ArticleDetailData {
  const factory ArticleDetailData({
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
    ArticleDetailCategory? category,
  }) = _ArticleDetailData;

  factory ArticleDetailData.fromJson(Map<String, dynamic> json) =>
      _$ArticleDetailDataFromJson(json);
}

@freezed
abstract class ArticleDetailCategory with _$ArticleDetailCategory {
  const factory ArticleDetailCategory({
    @JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,
    @JsonKey(name: 'cat_title') String? catTitle,
    @JsonKey(name: 'cat_note') String? catNote,
    @JsonKey(name: 'cat_pic') String? catPic,
    @JsonKey(name: 'cat_pos', fromJson: _stringToInt) int? catPos,
    @JsonKey(name: 'cat_father_id', fromJson: _stringToInt) int? catFatherId,
  }) = _ArticleDetailCategory;

  factory ArticleDetailCategory.fromJson(Map<String, dynamic> json) =>
      _$ArticleDetailCategoryFromJson(json);
}