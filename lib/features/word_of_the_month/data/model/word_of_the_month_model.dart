import 'package:freezed_annotation/freezed_annotation.dart';

part 'word_of_the_month_model.freezed.dart';
part 'word_of_the_month_model.g.dart';

// ===== MAIN RESPONSE MODEL =====
@freezed
abstract class WordOfTheMonthModel with _$WordOfTheMonthModel {
  const factory WordOfTheMonthModel({
    String? status,
    WordOfTheMonthData? data,
    WordOfTheMonthMeta? meta,
  }) = _WordOfTheMonthModel;

  factory WordOfTheMonthModel.fromJson(Map<String, dynamic> json) =>
      _$WordOfTheMonthModelFromJson(json);
}

// ===== DATA MODEL =====
@freezed
abstract class WordOfTheMonthData with _$WordOfTheMonthData {
  const factory WordOfTheMonthData({
    @JsonKey(name: 'sub_categories')
    List<WordOfTheMonthCategory>? subCategories,
  }) = _WordOfTheMonthData;

  factory WordOfTheMonthData.fromJson(Map<String, dynamic> json) =>
      _$WordOfTheMonthDataFromJson(json);
}

// ===== CATEGORY MODEL =====
@freezed
abstract class WordOfTheMonthCategory with _$WordOfTheMonthCategory {
  const factory WordOfTheMonthCategory({
    @JsonKey(name: 'cat_id')
    int? catId,
    @JsonKey(name: 'cat_title')
    String? catTitle,
    @JsonKey(name: 'cat_note')
    String? catNote,
    @JsonKey(name: 'cat_pic')
    String? catPic,
    @JsonKey(name: 'cat_menus')
    String? catMenus,
    @JsonKey(name: 'cat_pos')
    String? catPos,
    @JsonKey(name: 'cat_in_sub_menu')
    String? catInSubMenu,
    WordOfTheMonthArticlesWrapper? articles,
  }) = _WordOfTheMonthCategory;

  factory WordOfTheMonthCategory.fromJson(Map<String, dynamic> json) =>
      _$WordOfTheMonthCategoryFromJson(json);
}

// ===== ARTICLES WRAPPER MODEL =====
@freezed
abstract class WordOfTheMonthArticlesWrapper with _$WordOfTheMonthArticlesWrapper {
  const factory WordOfTheMonthArticlesWrapper({
    List<WordOfTheMonthArticle>? data,
    WordOfTheMonthPagination? pagination,
  }) = _WordOfTheMonthArticlesWrapper;

  factory WordOfTheMonthArticlesWrapper.fromJson(Map<String, dynamic> json) =>
      _$WordOfTheMonthArticlesWrapperFromJson(json);
}

// ===== ARTICLE MODEL =====
@freezed
abstract class WordOfTheMonthArticle with _$WordOfTheMonthArticle {
  const factory WordOfTheMonthArticle({
    @JsonKey(name: 'article_id')
    int? articleId,
    @JsonKey(name: 'article_title')
    String? articleTitle,
    @JsonKey(name: 'article_summary')
    String? articleSummary,
    @JsonKey(name: 'article_cat_id')
    String? articleCatId,
    @JsonKey(name: 'article_des')
    String? articleDes,
    @JsonKey(name: 'article_pic')
    String? articlePic,
    @JsonKey(name: 'article_visitor')
    String? articleVisitor,
    @JsonKey(name: 'article_date')
    String? articleDate,
  }) = _WordOfTheMonthArticle;

  factory WordOfTheMonthArticle.fromJson(Map<String, dynamic> json) =>
      _$WordOfTheMonthArticleFromJson(json);
}

// ===== PAGINATION MODEL =====
@freezed
abstract class WordOfTheMonthPagination with _$WordOfTheMonthPagination {
  const factory WordOfTheMonthPagination({
    int? total,
    int? count,
    @JsonKey(name: 'per_page')
    int? perPage,
    @JsonKey(name: 'current_page')
    int? currentPage,
    @JsonKey(name: 'last_page')
    int? lastPage,
    int? from,
    int? to,
  }) = _WordOfTheMonthPagination;

  factory WordOfTheMonthPagination.fromJson(Map<String, dynamic> json) =>
      _$WordOfTheMonthPaginationFromJson(json);
}

// ===== META MODEL =====
@freezed
abstract class WordOfTheMonthMeta with _$WordOfTheMonthMeta {
  const factory WordOfTheMonthMeta({
    @JsonKey(name: 'pagination_params')
    WordOfTheMonthPaginationParams? paginationParams,
    @JsonKey(name: 'response_info')
    WordOfTheMonthResponseInfo? responseInfo,
  }) = _WordOfTheMonthMeta;

  factory WordOfTheMonthMeta.fromJson(Map<String, dynamic> json) =>
      _$WordOfTheMonthMetaFromJson(json);
}

// ===== PAGINATION PARAMS MODEL =====
@freezed
abstract class WordOfTheMonthPaginationParams with _$WordOfTheMonthPaginationParams {
  const factory WordOfTheMonthPaginationParams({
    @JsonKey(name: 'articles_per_page')
    String? articlesPerPage,
    @JsonKey(name: 'categories_per_page')
    int? categoriesPerPage,
    @JsonKey(name: 'articles_page')
    String? articlesPage,
    @JsonKey(name: 'categories_page')
    int? categoriesPage,
  }) = _WordOfTheMonthPaginationParams;

  factory WordOfTheMonthPaginationParams.fromJson(Map<String, dynamic> json) =>
      _$WordOfTheMonthPaginationParamsFromJson(json);
}

// ===== RESPONSE INFO MODEL =====
@freezed
abstract class WordOfTheMonthResponseInfo with _$WordOfTheMonthResponseInfo {
  const factory WordOfTheMonthResponseInfo({
    String? timestamp,
    @JsonKey(name: 'api_version')
    String? apiVersion,
    String? endpoint,
    @JsonKey(name: 'content_type')
    String? contentType,
  }) = _WordOfTheMonthResponseInfo;

  factory WordOfTheMonthResponseInfo.fromJson(Map<String, dynamic> json) =>
      _$WordOfTheMonthResponseInfoFromJson(json);
}
