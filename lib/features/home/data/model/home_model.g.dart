// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeModel _$HomeModelFromJson(Map<String, dynamic> json) => _HomeModel(
  status: json['status'] as String?,
  data: json['data'] == null
      ? null
      : Data.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$HomeModelToJson(_HomeModel instance) =>
    <String, dynamic>{'status': instance.status, 'data': instance.data};

_Data _$DataFromJson(Map<String, dynamic> json) => _Data(
  article: json['article'] == null
      ? null
      : Article.fromJson(json['article'] as Map<String, dynamic>),
  articleCategories: (json['article_categories'] as List<dynamic>?)
      ?.map((e) => ArticleCategory.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'article': instance.article,
  'article_categories': instance.articleCategories,
};

_Article _$ArticleFromJson(Map<String, dynamic> json) => _Article(
  articleId: (json['article_id'] as num?)?.toInt(),
  articleTitle: json['article_title'] as String?,
  articleSummary: json['article_summary'] as String?,
  articleDes: json['article_des'] as String?,
  articleCatId: json['article_cat_id'] as String?,
  articlePic: json['article_pic'] as String?,
  articleVisitor: json['article_visitor'] as String?,
  articleDate: json['article_date'] as String?,
  category: json['category'] == null
      ? null
      : Category.fromJson(json['category'] as Map<String, dynamic>),
  monthlyInfo: json['monthly_info'] == null
      ? null
      : MonthlyInfo.fromJson(json['monthly_info'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ArticleToJson(_Article instance) => <String, dynamic>{
  'article_id': instance.articleId,
  'article_title': instance.articleTitle,
  'article_summary': instance.articleSummary,
  'article_des': instance.articleDes,
  'article_cat_id': instance.articleCatId,
  'article_pic': instance.articlePic,
  'article_visitor': instance.articleVisitor,
  'article_date': instance.articleDate,
  'category': instance.category,
  'monthly_info': instance.monthlyInfo,
};

_ArticleCategory _$ArticleCategoryFromJson(Map<String, dynamic> json) =>
    _ArticleCategory(
      catId: (json['cat_id'] as num?)?.toInt(),
      catTitle: json['cat_title'] as String?,
      catNote: json['cat_note'] as String?,
      catPic: json['cat_pic'] as String?,
      catMenus: json['cat_menus'] as String?,
      catPos: json['cat_pos'] as String?,
      catInSubMenu: json['cat_in_sub_menu'] as String?,
    );

Map<String, dynamic> _$ArticleCategoryToJson(_ArticleCategory instance) =>
    <String, dynamic>{
      'cat_id': instance.catId,
      'cat_title': instance.catTitle,
      'cat_note': instance.catNote,
      'cat_pic': instance.catPic,
      'cat_menus': instance.catMenus,
      'cat_pos': instance.catPos,
      'cat_in_sub_menu': instance.catInSubMenu,
    };

_MonthlyInfo _$MonthlyInfoFromJson(Map<String, dynamic> json) => _MonthlyInfo(
  currentMonth: (json['current_month'] as num?)?.toInt(),
  currentYear: (json['current_year'] as num?)?.toInt(),
  index: (json['index'] as num?)?.toInt(),
);

Map<String, dynamic> _$MonthlyInfoToJson(_MonthlyInfo instance) =>
    <String, dynamic>{
      'current_month': instance.currentMonth,
      'current_year': instance.currentYear,
      'index': instance.index,
    };

_Category _$CategoryFromJson(Map<String, dynamic> json) => _Category(
  catId: (json['cat_id'] as num?)?.toInt(),
  catTitle: json['cat_title'] as String?,
);

Map<String, dynamic> _$CategoryToJson(_Category instance) => <String, dynamic>{
  'cat_id': instance.catId,
  'cat_title': instance.catTitle,
};
