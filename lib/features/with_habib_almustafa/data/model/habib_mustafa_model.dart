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
    SubCategoriesWrapper? subCategories,
  }) = _HabibMustafaData;

  factory HabibMustafaData.fromJson(Map<String, dynamic> json) =>
      _$HabibMustafaDataFromJson(json);
}

@freezed
abstract class SubCategoriesWrapper with _$SubCategoriesWrapper {
  const factory SubCategoriesWrapper({
    @JsonKey(name: 'data')
    List<SubCategory>? data,
    @JsonKey(name: 'pagination')
    Pagination? pagination,
  }) = _SubCategoriesWrapper;

  factory SubCategoriesWrapper.fromJson(Map<String, dynamic> json) =>
      _$SubCategoriesWrapperFromJson(json);
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
    List<HabibArticle>? articles,
  }) = _SubCategory;

  factory SubCategory.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryFromJson(json);
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
    @JsonKey(name: 'article_cat_id')
    String? articleCatId,
    @JsonKey(name: 'article_pic')
    String? articlePic,
    @JsonKey(name: 'article_visitor')
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
