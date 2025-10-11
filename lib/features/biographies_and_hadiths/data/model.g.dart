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
      categories: (json['categories'] as List<dynamic>?)
          ?.map(
            (e) => BiographiesCategoryWithArticles.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList(),
    );

Map<String, dynamic> _$BiographiesDataToJson(_BiographiesData instance) =>
    <String, dynamic>{'categories': instance.categories};

_BiographiesCategoryWithArticles _$BiographiesCategoryWithArticlesFromJson(
  Map<String, dynamic> json,
) => _BiographiesCategoryWithArticles(
  catId: _stringToInt(json['cat_id']),
  catTitle: json['cat_title'] as String?,
  catNote: json['cat_note'] as String?,
  catPic: json['cat_pic'] as String?,
  catPos: _stringToInt(json['cat_pos']),
  parent: json['parent'],
  children: json['children'] as List<dynamic>?,
  hierarchy: (json['hierarchy'] as List<dynamic>?)
      ?.map((e) => BiographiesHierarchy.fromJson(e as Map<String, dynamic>))
      .toList(),
  articles: (json['articles'] as List<dynamic>?)
      ?.map((e) => BiographiesArticle.fromJson(e as Map<String, dynamic>))
      .toList(),
  pagination: json['pagination'] == null
      ? null
      : BiographiesPagination.fromJson(
          json['pagination'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$BiographiesCategoryWithArticlesToJson(
  _BiographiesCategoryWithArticles instance,
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

_BiographiesHierarchy _$BiographiesHierarchyFromJson(
  Map<String, dynamic> json,
) => _BiographiesHierarchy(
  catId: _stringToInt(json['cat_id']),
  catTitle: json['cat_title'] as String?,
  level: _stringToInt(json['level']),
);

Map<String, dynamic> _$BiographiesHierarchyToJson(
  _BiographiesHierarchy instance,
) => <String, dynamic>{
  'cat_id': instance.catId,
  'cat_title': instance.catTitle,
  'level': instance.level,
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
      articleCatId: _stringToInt(json['article_cat_id']),
      articlePic: json['article_pic'] as String?,
      articleVisitor: _stringToInt(json['article_visitor']),
      articlePriority: _stringToInt(json['article_priority']),
      articleDate: json['article_date'] as String?,
      articleActive: _stringToInt(json['article_active']),
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

_ArticleDetailModel _$ArticleDetailModelFromJson(Map<String, dynamic> json) =>
    _ArticleDetailModel(
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : ArticleDetailData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ArticleDetailModelToJson(_ArticleDetailModel instance) =>
    <String, dynamic>{'status': instance.status, 'data': instance.data};

_ArticleDetailData _$ArticleDetailDataFromJson(Map<String, dynamic> json) =>
    _ArticleDetailData(
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
          : ArticleDetailCategory.fromJson(
              json['category'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$ArticleDetailDataToJson(_ArticleDetailData instance) =>
    <String, dynamic>{
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

_ArticleDetailCategory _$ArticleDetailCategoryFromJson(
  Map<String, dynamic> json,
) => _ArticleDetailCategory(
  catId: _stringToInt(json['cat_id']),
  catTitle: json['cat_title'] as String?,
  catNote: json['cat_note'] as String?,
  catPic: json['cat_pic'] as String?,
  catPos: _stringToInt(json['cat_pos']),
  catFatherId: _stringToInt(json['cat_father_id']),
);

Map<String, dynamic> _$ArticleDetailCategoryToJson(
  _ArticleDetailCategory instance,
) => <String, dynamic>{
  'cat_id': instance.catId,
  'cat_title': instance.catTitle,
  'cat_note': instance.catNote,
  'cat_pic': instance.catPic,
  'cat_pos': instance.catPos,
  'cat_father_id': instance.catFatherId,
};
