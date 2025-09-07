// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BiographiesAndHadithsModel _$BiographiesAndHadithsModelFromJson(
  Map<String, dynamic> json,
) => _BiographiesAndHadithsModel(
  status: json['status'] as String?,
  data: json['data'] == null
      ? null
      : BiographiesData.fromJson(json['data'] as Map<String, dynamic>),
  meta: json['meta'] == null
      ? null
      : BiographiesMeta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$BiographiesAndHadithsModelToJson(
  _BiographiesAndHadithsModel instance,
) => <String, dynamic>{
  'status': instance.status,
  'data': instance.data,
  'meta': instance.meta,
};

_BiographiesData _$BiographiesDataFromJson(Map<String, dynamic> json) =>
    _BiographiesData(
      category: json['category'] == null
          ? null
          : BiographiesCategory.fromJson(
              json['category'] as Map<String, dynamic>,
            ),
      articles: (json['articles'] as List<dynamic>?)
          ?.map((e) => BiographiesArticle.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BiographiesDataToJson(_BiographiesData instance) =>
    <String, dynamic>{
      'category': instance.category,
      'articles': instance.articles,
    };

_BiographiesCategory _$BiographiesCategoryFromJson(Map<String, dynamic> json) =>
    _BiographiesCategory(
      catId: _stringToInt(json['cat_id']),
      catTitle: json['cat_title'] as String?,
      catNote: json['cat_note'] as String?,
      catPic: json['cat_pic'] as String?,
      catPos: _stringToInt(json['cat_pos']),
      parent: json['parent'],
      children: json['children'] as List<dynamic>?,
    );

Map<String, dynamic> _$BiographiesCategoryToJson(
  _BiographiesCategory instance,
) => <String, dynamic>{
  'cat_id': instance.catId,
  'cat_title': instance.catTitle,
  'cat_note': instance.catNote,
  'cat_pic': instance.catPic,
  'cat_pos': instance.catPos,
  'parent': instance.parent,
  'children': instance.children,
};

_BiographiesArticle _$BiographiesArticleFromJson(Map<String, dynamic> json) =>
    _BiographiesArticle(
      articleId: (json['article_id'] as num?)?.toInt(),
      articleTitle: json['article_title'] as String?,
      articleSummary: json['article_summary'] as String?,
      articleCatId: json['article_cat_id'] as String?,
      articlePic: json['article_pic'] as String?,
      articleVisitor: json['article_visitor'] as String?,
      articlePriority: json['article_priority'] as String?,
      articleDate: json['article_date'] as String?,
      articleActive: json['article_active'] as String?,
      category: json['category'] == null
          ? null
          : BiographiesArticleCategory.fromJson(
              json['category'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$BiographiesArticleToJson(_BiographiesArticle instance) =>
    <String, dynamic>{
      'article_id': instance.articleId,
      'article_title': instance.articleTitle,
      'article_summary': instance.articleSummary,
      'article_cat_id': instance.articleCatId,
      'article_pic': instance.articlePic,
      'article_visitor': instance.articleVisitor,
      'article_priority': instance.articlePriority,
      'article_date': instance.articleDate,
      'article_active': instance.articleActive,
      'category': instance.category,
    };

_BiographiesArticleCategory _$BiographiesArticleCategoryFromJson(
  Map<String, dynamic> json,
) => _BiographiesArticleCategory(
  catId: _stringToInt(json['cat_id']),
  catTitle: json['cat_title'] as String?,
);

Map<String, dynamic> _$BiographiesArticleCategoryToJson(
  _BiographiesArticleCategory instance,
) => <String, dynamic>{
  'cat_id': instance.catId,
  'cat_title': instance.catTitle,
};

_BiographiesMeta _$BiographiesMetaFromJson(Map<String, dynamic> json) =>
    _BiographiesMeta(
      pagination: json['pagination'] == null
          ? null
          : BiographiesPagination.fromJson(
              json['pagination'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$BiographiesMetaToJson(_BiographiesMeta instance) =>
    <String, dynamic>{'pagination': instance.pagination};

_BiographiesPagination _$BiographiesPaginationFromJson(
  Map<String, dynamic> json,
) => _BiographiesPagination(
  total: _stringToInt(json['total']),
  count: _stringToInt(json['count']),
  perPage: _stringToInt(json['per_page']),
  currentPage: _stringToInt(json['current_page']),
  lastPage: _stringToInt(json['last_page']),
  from: _stringToInt(json['from']),
  to: _stringToInt(json['to']),
);

Map<String, dynamic> _$BiographiesPaginationToJson(
  _BiographiesPagination instance,
) => <String, dynamic>{
  'total': instance.total,
  'count': instance.count,
  'per_page': instance.perPage,
  'current_page': instance.currentPage,
  'last_page': instance.lastPage,
  'from': instance.from,
  'to': instance.to,
};
