// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AlmawdueaModel _$AlmawdueaModelFromJson(Map<String, dynamic> json) =>
    _AlmawdueaModel(
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : AlmawdueaData.fromJson(json['data'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : AlmawdueaMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AlmawdueaModelToJson(_AlmawdueaModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'meta': instance.meta,
    };

_AlmawdueaData _$AlmawdueaDataFromJson(Map<String, dynamic> json) =>
    _AlmawdueaData(
      categories: (json['categories'] as List<dynamic>?)
          ?.map(
            (e) => AlmawdueaCategoryWithArticles.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    );

Map<String, dynamic> _$AlmawdueaDataToJson(_AlmawdueaData instance) =>
    <String, dynamic>{'categories': instance.categories};

_AlmawdueaCategoryWithArticles _$AlmawdueaCategoryWithArticlesFromJson(
  Map<String, dynamic> json,
) => _AlmawdueaCategoryWithArticles(
  catId: _stringToInt(json['cat_id']),
  catTitle: json['cat_title'] as String?,
  catNote: json['cat_note'] as String?,
  catPic: json['cat_pic'] as String?,
  catPos: _stringToInt(json['cat_pos']),
  parent: json['parent'],
  children: json['children'] as List<dynamic>?,
  hierarchy: (json['hierarchy'] as List<dynamic>?)
      ?.map((e) => AlmawdueaHierarchy.fromJson(e as Map<String, dynamic>))
      .toList(),
  articles: (json['articles'] as List<dynamic>?)
      ?.map((e) => AlmawdueaArticle.fromJson(e as Map<String, dynamic>))
      .toList(),
  pagination: json['pagination'] == null
      ? null
      : AlmawdueaPagination.fromJson(
          json['pagination'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$AlmawdueaCategoryWithArticlesToJson(
  _AlmawdueaCategoryWithArticles instance,
) => <String, dynamic>{
  'cat_id': instance.catId,
  'cat_title': instance.catTitle,
  'cat_note': instance.catNote,
  'cat_pic': instance.catPic,
  'cat_pos': instance.catPos,
  'parent': instance.parent,
  'children': instance.children,
  'hierarchy': instance.hierarchy,
  'articles': instance.articles,
  'pagination': instance.pagination,
};

_AlmawdueaHierarchy _$AlmawdueaHierarchyFromJson(Map<String, dynamic> json) =>
    _AlmawdueaHierarchy(
      catId: _stringToInt(json['cat_id']),
      catTitle: json['cat_title'] as String?,
      level: _stringToInt(json['level']),
    );

Map<String, dynamic> _$AlmawdueaHierarchyToJson(_AlmawdueaHierarchy instance) =>
    <String, dynamic>{
      'cat_id': instance.catId,
      'cat_title': instance.catTitle,
      'level': instance.level,
    };

_AlmawdueaCategory _$AlmawdueaCategoryFromJson(Map<String, dynamic> json) =>
    _AlmawdueaCategory(
      catId: _stringToInt(json['cat_id']),
      catTitle: json['cat_title'] as String?,
      catNote: json['cat_note'] as String?,
      catPic: json['cat_pic'] as String?,
      catPos: _stringToInt(json['cat_pos']),
      parent: json['parent'],
      children: json['children'] as List<dynamic>?,
    );

Map<String, dynamic> _$AlmawdueaCategoryToJson(_AlmawdueaCategory instance) =>
    <String, dynamic>{
      'cat_id': instance.catId,
      'cat_title': instance.catTitle,
      'cat_note': instance.catNote,
      'cat_pic': instance.catPic,
      'cat_pos': instance.catPos,
      'parent': instance.parent,
      'children': instance.children,
    };

_AlmawdueaArticle _$AlmawdueaArticleFromJson(Map<String, dynamic> json) =>
    _AlmawdueaArticle(
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
          : AlmawdueaArticleCategory.fromJson(
              json['category'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$AlmawdueaArticleToJson(_AlmawdueaArticle instance) =>
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

_AlmawdueaArticleCategory _$AlmawdueaArticleCategoryFromJson(
  Map<String, dynamic> json,
) => _AlmawdueaArticleCategory(
  catId: _stringToInt(json['cat_id']),
  catTitle: json['cat_title'] as String?,
);

Map<String, dynamic> _$AlmawdueaArticleCategoryToJson(
  _AlmawdueaArticleCategory instance,
) => <String, dynamic>{
  'cat_id': instance.catId,
  'cat_title': instance.catTitle,
};

_AlmawdueaMeta _$AlmawdueaMetaFromJson(Map<String, dynamic> json) =>
    _AlmawdueaMeta(
      pagination: json['pagination'] == null
          ? null
          : AlmawdueaPagination.fromJson(
              json['pagination'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$AlmawdueaMetaToJson(_AlmawdueaMeta instance) =>
    <String, dynamic>{'pagination': instance.pagination};

_AlmawdueaPagination _$AlmawdueaPaginationFromJson(Map<String, dynamic> json) =>
    _AlmawdueaPagination(
      total: _stringToInt(json['total']),
      count: _stringToInt(json['count']),
      perPage: _stringToInt(json['per_page']),
      currentPage: _stringToInt(json['current_page']),
      lastPage: _stringToInt(json['last_page']),
      from: _stringToInt(json['from']),
      to: _stringToInt(json['to']),
    );

Map<String, dynamic> _$AlmawdueaPaginationToJson(
  _AlmawdueaPagination instance,
) => <String, dynamic>{
  'total': instance.total,
  'count': instance.count,
  'per_page': instance.perPage,
  'current_page': instance.currentPage,
  'last_page': instance.lastPage,
  'from': instance.from,
  'to': instance.to,
};

_AlmawdueaArticleDetailModel _$AlmawdueaArticleDetailModelFromJson(
  Map<String, dynamic> json,
) => _AlmawdueaArticleDetailModel(
  status: json['status'] as String?,
  data: json['data'] == null
      ? null
      : AlmawdueaArticleDetailData.fromJson(
          json['data'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$AlmawdueaArticleDetailModelToJson(
  _AlmawdueaArticleDetailModel instance,
) => <String, dynamic>{'status': instance.status, 'data': instance.data};

_AlmawdueaArticleDetailData _$AlmawdueaArticleDetailDataFromJson(
  Map<String, dynamic> json,
) => _AlmawdueaArticleDetailData(
  articleId: _stringToInt(json['article_id']),
  articleTitle: json['article_title'] as String?,
  articleDes: json['article_des'] as String?,
  articleSummary: json['article_summary'] as String?,
  articleCatId: _stringToInt(json['article_cat_id']),
  articlePic: json['article_pic'] as String?,
  articleVisitor: _stringToInt(json['article_visitor']),
  articlePriority: _stringToInt(json['article_priority']),
  articleDate: json['article_date'] as String?,
  articleActive: _stringToInt(json['article_active']),
  category: json['category'] == null
      ? null
      : AlmawdueaArticleDetailCategory.fromJson(
          json['category'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$AlmawdueaArticleDetailDataToJson(
  _AlmawdueaArticleDetailData instance,
) => <String, dynamic>{
  'article_id': instance.articleId,
  'article_title': instance.articleTitle,
  'article_des': instance.articleDes,
  'article_summary': instance.articleSummary,
  'article_cat_id': instance.articleCatId,
  'article_pic': instance.articlePic,
  'article_visitor': instance.articleVisitor,
  'article_priority': instance.articlePriority,
  'article_date': instance.articleDate,
  'article_active': instance.articleActive,
  'category': instance.category,
};

_AlmawdueaArticleDetailCategory _$AlmawdueaArticleDetailCategoryFromJson(
  Map<String, dynamic> json,
) => _AlmawdueaArticleDetailCategory(
  catId: _stringToInt(json['cat_id']),
  catTitle: json['cat_title'] as String?,
  catNote: json['cat_note'] as String?,
  catPic: json['cat_pic'] as String?,
  catPos: _stringToInt(json['cat_pos']),
  catFatherId: _stringToInt(json['cat_father_id']),
);

Map<String, dynamic> _$AlmawdueaArticleDetailCategoryToJson(
  _AlmawdueaArticleDetailCategory instance,
) => <String, dynamic>{
  'cat_id': instance.catId,
  'cat_title': instance.catTitle,
  'cat_note': instance.catNote,
  'cat_pic': instance.catPic,
  'cat_pos': instance.catPos,
  'cat_father_id': instance.catFatherId,
};
