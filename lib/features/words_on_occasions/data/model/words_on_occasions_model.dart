import 'package:freezed_annotation/freezed_annotation.dart';

part 'words_on_occasions_model.freezed.dart';
part 'words_on_occasions_model.g.dart';

// ===== MAIN RESPONSE MODEL =====
@freezed
abstract class WordsOnOccasionsModel with _$WordsOnOccasionsModel {
  const factory WordsOnOccasionsModel({
    String? status,
    WordsOnOccasionsData? data,
    WordsOnOccasionsMeta? meta,
  }) = _WordsOnOccasionsModel;

  factory WordsOnOccasionsModel.fromJson(Map<String, dynamic> json) =>
      _$WordsOnOccasionsModelFromJson(json);
}

// ===== DATA MODEL =====
@freezed
abstract class WordsOnOccasionsData with _$WordsOnOccasionsData {
  const factory WordsOnOccasionsData({
    @JsonKey(name: 'sub_categories')
    List<WordsOnOccasionsCategory>? subCategories,
  }) = _WordsOnOccasionsData;

  factory WordsOnOccasionsData.fromJson(Map<String, dynamic> json) =>
      _$WordsOnOccasionsDataFromJson(json);
}

// ===== CATEGORY MODEL =====
@freezed
abstract class WordsOnOccasionsCategory with _$WordsOnOccasionsCategory {
  const factory WordsOnOccasionsCategory({
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
    WordsOnOccasionsArticlesWrapper? articles,
  }) = _WordsOnOccasionsCategory;

  factory WordsOnOccasionsCategory.fromJson(Map<String, dynamic> json) =>
      _$WordsOnOccasionsCategoryFromJson(json);
}

// ===== ARTICLES WRAPPER MODEL =====
@freezed
abstract class WordsOnOccasionsArticlesWrapper with _$WordsOnOccasionsArticlesWrapper {
  const factory WordsOnOccasionsArticlesWrapper({
    List<WordsOnOccasionsArticle>? data,
    WordsOnOccasionsPagination? pagination,
  }) = _WordsOnOccasionsArticlesWrapper;

  factory WordsOnOccasionsArticlesWrapper.fromJson(Map<String, dynamic> json) =>
      _$WordsOnOccasionsArticlesWrapperFromJson(json);
}

// ===== ARTICLE MODEL =====
@freezed
abstract class WordsOnOccasionsArticle with _$WordsOnOccasionsArticle {
  const factory WordsOnOccasionsArticle({
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
  }) = _WordsOnOccasionsArticle;

  factory WordsOnOccasionsArticle.fromJson(Map<String, dynamic> json) =>
      _$WordsOnOccasionsArticleFromJson(json);
}

// ===== PAGINATION MODEL =====
@freezed
abstract class WordsOnOccasionsPagination with _$WordsOnOccasionsPagination {
  const factory WordsOnOccasionsPagination({
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
  }) = _WordsOnOccasionsPagination;

  factory WordsOnOccasionsPagination.fromJson(Map<String, dynamic> json) =>
      _$WordsOnOccasionsPaginationFromJson(json);
}

// ===== META MODEL =====
@freezed
abstract class WordsOnOccasionsMeta with _$WordsOnOccasionsMeta {
  const factory WordsOnOccasionsMeta({
    @JsonKey(name: 'pagination_params')
    WordsOnOccasionsPaginationParams? paginationParams,
    @JsonKey(name: 'response_info')
    WordsOnOccasionsResponseInfo? responseInfo,
  }) = _WordsOnOccasionsMeta;

  factory WordsOnOccasionsMeta.fromJson(Map<String, dynamic> json) =>
      _$WordsOnOccasionsMetaFromJson(json);
}

// ===== PAGINATION PARAMS MODEL =====
@freezed
abstract class WordsOnOccasionsPaginationParams with _$WordsOnOccasionsPaginationParams {
  const factory WordsOnOccasionsPaginationParams({
    @JsonKey(name: 'articles_per_page')
    String? articlesPerPage,
    @JsonKey(name: 'categories_per_page')
    int? categoriesPerPage,
    @JsonKey(name: 'articles_page')
    String? articlesPage,
    @JsonKey(name: 'categories_page')
    int? categoriesPage,
  }) = _WordsOnOccasionsPaginationParams;

  factory WordsOnOccasionsPaginationParams.fromJson(Map<String, dynamic> json) =>
      _$WordsOnOccasionsPaginationParamsFromJson(json);
}

// ===== RESPONSE INFO MODEL =====
@freezed
abstract class WordsOnOccasionsResponseInfo with _$WordsOnOccasionsResponseInfo {
  const factory WordsOnOccasionsResponseInfo({
    String? timestamp,
    @JsonKey(name: 'api_version')
    String? apiVersion,
    String? endpoint,
    @JsonKey(name: 'content_type')
    String? contentType,
  }) = _WordsOnOccasionsResponseInfo;

  factory WordsOnOccasionsResponseInfo.fromJson(Map<String, dynamic> json) =>
      _$WordsOnOccasionsResponseInfoFromJson(json);
}

