import 'package:freezed_annotation/freezed_annotation.dart';

part 'habib_mustafa_model.freezed.dart';
part 'habib_mustafa_model.g.dart';

@freezed
abstract class HabibMustafaModel with _$HabibMustafaModel {
  const factory HabibMustafaModel({
    String? status,
    HabibMustafaData? data,
    Meta? meta,
  }) = _HabibMustafaModel;

  factory HabibMustafaModel.fromJson(Map<String, dynamic> json) =>
      _$HabibMustafaModelFromJson(json);
}

@freezed
abstract class HabibMustafaData with _$HabibMustafaData {
  const factory HabibMustafaData({
    @JsonKey(name: 'sub_categories')
    List<SubCategory>? subCategories,
  }) = _HabibMustafaData;

  factory HabibMustafaData.fromJson(Map<String, dynamic> json) =>
      _$HabibMustafaDataFromJson(json);
}

@freezed
abstract class Meta with _$Meta {
  const factory Meta({
    @JsonKey(name: 'pagination_params')
    PaginationParams? paginationParams,
    @JsonKey(name: 'response_info')
    ResponseInfo? responseInfo,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) =>
      _$MetaFromJson(json);
}

@freezed
abstract class PaginationParams with _$PaginationParams {
  const factory PaginationParams({
    @JsonKey(name: 'articles_per_page')
    String? articlesPerPage,
    @JsonKey(name: 'categories_per_page')
    String? categoriesPerPage,
    @JsonKey(name: 'articles_page')
    String? articlesPage,
    @JsonKey(name: 'categories_page')
    String? categoriesPage,
  }) = _PaginationParams;

  factory PaginationParams.fromJson(Map<String, dynamic> json) =>
      _$PaginationParamsFromJson(json);
}

@freezed
abstract class ResponseInfo with _$ResponseInfo {
  const factory ResponseInfo({
    String? timestamp,
    @JsonKey(name: 'api_version')
    String? apiVersion,
    String? endpoint,
    @JsonKey(name: 'content_type')
    String? contentType,
  }) = _ResponseInfo;

  factory ResponseInfo.fromJson(Map<String, dynamic> json) =>
      _$ResponseInfoFromJson(json);
}

@freezed
abstract class SubCategory with _$SubCategory {
  const factory SubCategory({
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
    @JsonKey(name: 'articles')
    ArticlesWrapper? articles,
  }) = _SubCategory;

  factory SubCategory.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryFromJson(json);
}

@freezed
abstract class ArticlesWrapper with _$ArticlesWrapper {
  const factory ArticlesWrapper({
    @JsonKey(name: 'data')
    List<HabibArticle>? data,
    @JsonKey(name: 'pagination')
    Pagination? pagination,
  }) = _ArticlesWrapper;

  factory ArticlesWrapper.fromJson(Map<String, dynamic> json) =>
      _$ArticlesWrapperFromJson(json);
}

@freezed
abstract class HabibArticle with _$HabibArticle {
  const factory HabibArticle({
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
    @JsonKey(name: 'article_content')
    String? articleContent,
    Category? category,
  }) = _HabibArticle;

  factory HabibArticle.fromJson(Map<String, dynamic> json) =>
      _$HabibArticleFromJson(json);
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
abstract class Pagination with _$Pagination {
  const factory Pagination({
    @JsonKey(name: 'current_page')
    int? currentPage,
    @JsonKey(name: 'last_page')
    int? lastPage,
    @JsonKey(name: 'per_page')
    int? perPage,
    @JsonKey(name: 'total')
    int? total,
    @JsonKey(name: 'from')
    int? from,
    @JsonKey(name: 'to')
    int? to,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}

// ===== CATEGORY ARTICLES MODELS (for showing all articles in a category) =====

@freezed
abstract class CategoryArticlesModel with _$CategoryArticlesModel {
  const factory CategoryArticlesModel({
    String? status,
    CategoryArticlesData? data,
  }) = _CategoryArticlesModel;

  factory CategoryArticlesModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryArticlesModelFromJson(json);
}

@freezed
abstract class CategoryArticlesData with _$CategoryArticlesData {
  const factory CategoryArticlesData({
    List<CategoryWithArticles>? categories,
    @JsonKey(name: 'is_multiple_categories')
    bool? isMultipleCategories,
  }) = _CategoryArticlesData;

  factory CategoryArticlesData.fromJson(Map<String, dynamic> json) =>
      _$CategoryArticlesDataFromJson(json);
}

@freezed
abstract class CategoryWithArticles with _$CategoryWithArticles {
  const factory CategoryWithArticles({
    @JsonKey(name: 'cat_id')
    int? catId,
    @JsonKey(name: 'cat_title')
    String? catTitle,
    @JsonKey(name: 'cat_note')
    String? catNote,
    @JsonKey(name: 'cat_pic')
    String? catPic,
    @JsonKey(name: 'cat_pos')
    String? catPos,
    dynamic parent,
    List<dynamic>? children,
    List<HabibArticle>? articles,
    Pagination? pagination,
  }) = _CategoryWithArticles;

  factory CategoryWithArticles.fromJson(Map<String, dynamic> json) =>
      _$CategoryWithArticlesFromJson(json);
}

// ===== ARTICLE DETAIL MODELS (for individual article details) =====

@freezed
abstract class ArticleDetailModel with _$ArticleDetailModel {
  const factory ArticleDetailModel({
    String? status,
    ArticleDetailData? data,
    ArticleDetailMeta? meta,
  }) = _ArticleDetailModel;

  factory ArticleDetailModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleDetailModelFromJson(json);
}

@freezed
abstract class ArticleDetailData with _$ArticleDetailData {
  const factory ArticleDetailData({
    @JsonKey(name: 'article_id')
    int? articleId,
    @JsonKey(name: 'article_cat_id', fromJson: _intToString)
    String? articleCatId,
    @JsonKey(name: 'article_title')
    String? articleTitle,
    @JsonKey(name: 'article_ts')
    String? articleTs,
    @JsonKey(name: 'article_summary')
    String? articleSummary,
    @JsonKey(name: 'article_pic')
    String? articlePic,
    @JsonKey(name: 'article_des')
    String? articleDes,
    @JsonKey(name: 'article_pic_pos')
    String? articlePicPos,
    @JsonKey(name: 'article_visitor', fromJson: _intToString)
    String? articleVisitor,
    @JsonKey(name: 'article_is_new')
    String? articleIsNew,
    @JsonKey(name: 'article_priority')
    String? articlePriority,
    @JsonKey(name: 'article_active_vote')
    String? articleActiveVote,
    @JsonKey(name: 'article_active_hint')
    String? articleActiveHint,
    @JsonKey(name: 'article_active')
    String? articleActive,
    @JsonKey(name: 'article_date')
    String? articleDate,
    @JsonKey(name: 'article_pic_active')
    String? articlePicActive,
    @JsonKey(name: 'article_last_article')
    String? articleLastArticle,
    @JsonKey(name: 'article_publisher_id')
    String? articlePublisherId,
    @JsonKey(name: 'article_source')
    String? articleSource,
    @JsonKey(name: 'article_source_url')
    String? articleSourceUrl,
    @JsonKey(name: 'article_youtube_id')
    String? articleYoutubeId,
    @JsonKey(name: 'article_file')
    String? articleFile,
    @JsonKey(name: 'article_user_add_hint_nsup')
    String? articleUserAddHintNsup,
    ArticleDetailCategory? category,
  }) = _ArticleDetailData;

  factory ArticleDetailData.fromJson(Map<String, dynamic> json) =>
      _$ArticleDetailDataFromJson(json);
}

@freezed
abstract class ArticleDetailCategory with _$ArticleDetailCategory {
  const factory ArticleDetailCategory({
    @JsonKey(name: 'cat_id')
    int? catId,
    @JsonKey(name: 'cat_father_id')
    String? catFatherId,
    @JsonKey(name: 'cat_menus')
    String? catMenus,
    @JsonKey(name: 'cat_title')
    String? catTitle,
    @JsonKey(name: 'cat_note')
    String? catNote,
    @JsonKey(name: 'cat_pic')
    String? catPic,
    @JsonKey(name: 'cat_sup')
    String? catSup,
    @JsonKey(name: 'cat_date')
    String? catDate,
    @JsonKey(name: 'cat_pic_active')
    String? catPicActive,
    @JsonKey(name: 'cat_lan')
    String? catLan,
    @JsonKey(name: 'cat_pos')
    String? catPos,
    @JsonKey(name: 'cat_active')
    String? catActive,
    @JsonKey(name: 'cat_show_menu')
    String? catShowMenu,
    @JsonKey(name: 'cat_show_main')
    String? catShowMain,
    @JsonKey(name: 'cat_agent')
    String? catAgent,
    @JsonKey(name: 'cat_in_sub_menu')
    String? catInSubMenu,
  }) = _ArticleDetailCategory;

  factory ArticleDetailCategory.fromJson(Map<String, dynamic> json) =>
      _$ArticleDetailCategoryFromJson(json);
}

@freezed
abstract class ArticleDetailMeta with _$ArticleDetailMeta {
  const factory ArticleDetailMeta({
    @JsonKey(name: 'response_info')
    ArticleDetailResponseInfo? responseInfo,
  }) = _ArticleDetailMeta;

  factory ArticleDetailMeta.fromJson(Map<String, dynamic> json) =>
      _$ArticleDetailMetaFromJson(json);
}

@freezed
abstract class ArticleDetailResponseInfo with _$ArticleDetailResponseInfo {
  const factory ArticleDetailResponseInfo({
    String? timestamp,
    @JsonKey(name: 'api_version')
    String? apiVersion,
    String? endpoint,
    @JsonKey(name: 'content_type')
    String? contentType,
  }) = _ArticleDetailResponseInfo;

  factory ArticleDetailResponseInfo.fromJson(Map<String, dynamic> json) =>
      _$ArticleDetailResponseInfoFromJson(json);
}

// Helper function to convert int to String
String? _intToString(dynamic value) {
  if (value == null) return null;
  if (value is String) return value;
  if (value is int) return value.toString();
  return value.toString();
}
