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
    Article? article,
    @JsonKey(name: 'article_categories') 
    List<ArticleCategory>? articleCategories,
  }) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
abstract class Article with _$Article {
  const factory Article({
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
    @JsonKey(name: 'monthly_info') 
    MonthlyInfo? monthlyInfo,
  }) = _Article;

  factory Article.fromJson(Map<String, dynamic> json) =>
      _$ArticleFromJson(json);
}

@freezed
abstract class ArticleCategory with _$ArticleCategory {
  const factory ArticleCategory({
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
  }) = _ArticleCategory;

  factory ArticleCategory.fromJson(Map<String, dynamic> json) =>
      _$ArticleCategoryFromJson(json);
}

@freezed
abstract class MonthlyInfo with _$MonthlyInfo {
  const factory MonthlyInfo({
    @JsonKey(name: 'current_month') 
    int? currentMonth,
    @JsonKey(name: 'current_year') 
    int? currentYear,
    int? index,
  }) = _MonthlyInfo;

  factory MonthlyInfo.fromJson(Map<String, dynamic> json) =>
      _$MonthlyInfoFromJson(json);
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