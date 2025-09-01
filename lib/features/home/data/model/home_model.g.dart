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
  recentArticles: (json['recent_articles'] as List<dynamic>?)
      ?.map((e) => RecentArticles.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DataToJson(_Data instance) => <String, dynamic>{
  'recent_articles': instance.recentArticles,
};

_RecentArticles _$RecentArticlesFromJson(Map<String, dynamic> json) =>
    _RecentArticles(
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
    );

Map<String, dynamic> _$RecentArticlesToJson(_RecentArticles instance) =>
    <String, dynamic>{
      'article_id': instance.articleId,
      'article_title': instance.articleTitle,
      'article_summary': instance.articleSummary,
      'article_des': instance.articleDes,
      'article_cat_id': instance.articleCatId,
      'article_pic': instance.articlePic,
      'article_visitor': instance.articleVisitor,
      'article_date': instance.articleDate,
      'category': instance.category,
    };

_Category _$CategoryFromJson(Map<String, dynamic> json) => _Category(
  catId: (json['cat_id'] as num?)?.toInt(),
  catTitle: json['cat_title'] as String?,
);

Map<String, dynamic> _$CategoryToJson(_Category instance) => <String, dynamic>{
  'cat_id': instance.catId,
  'cat_title': instance.catTitle,
};
