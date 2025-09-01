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
    @JsonKey(name: 'recent_articles') 
    List<RecentArticles>? recentArticles,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
abstract class RecentArticles with _$RecentArticles {
  const factory RecentArticles({
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
    Category? category,
  }) = _RecentArticles;

  factory RecentArticles.fromJson(Map<String, dynamic> json) =>
      _$RecentArticlesFromJson(json);
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