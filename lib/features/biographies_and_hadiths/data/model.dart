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
    BiographiesCategory? category,
    List<BiographiesArticle>? articles,
  }) = _BiographiesData;

  factory BiographiesData.fromJson(Map<String, dynamic> json) =>
      _$BiographiesDataFromJson(json);
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
    @JsonKey(name: 'article_cat_id') String? articleCatId,
    @JsonKey(name: 'article_pic') String? articlePic,
    @JsonKey(name: 'article_visitor') String? articleVisitor,
    @JsonKey(name: 'article_priority') String? articlePriority,
    @JsonKey(name: 'article_date') String? articleDate,
    @JsonKey(name: 'article_active') String? articleActive,
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