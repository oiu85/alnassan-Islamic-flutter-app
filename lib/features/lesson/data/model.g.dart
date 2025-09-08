// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LessonModel _$LessonModelFromJson(Map<String, dynamic> json) => _LessonModel(
  status: json['status'] as String?,
  data: json['data'] == null
      ? null
      : LessonData.fromJson(json['data'] as Map<String, dynamic>),
  meta: json['meta'] == null
      ? null
      : LessonMeta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LessonModelToJson(_LessonModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'meta': instance.meta,
    };

_LessonData _$LessonDataFromJson(Map<String, dynamic> json) => _LessonData(
  categories: (json['categories'] as List<dynamic>?)
      ?.map(
        (e) => LessonCategoryWithArticles.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
  isMultipleCategories: json['is_multiple_categories'] as bool?,
);

Map<String, dynamic> _$LessonDataToJson(_LessonData instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'is_multiple_categories': instance.isMultipleCategories,
    };

_LessonCategoryWithArticles _$LessonCategoryWithArticlesFromJson(
  Map<String, dynamic> json,
) => _LessonCategoryWithArticles(
  catId: _stringToInt(json['cat_id']),
  catTitle: json['cat_title'] as String?,
  catNote: json['cat_note'] as String?,
  catPic: json['cat_pic'] as String?,
  catPos: _stringToInt(json['cat_pos']),
  parent: json['parent'],
  children: json['children'] as List<dynamic>?,
  hierarchy: (json['hierarchy'] as List<dynamic>?)
      ?.map((e) => LessonHierarchy.fromJson(e as Map<String, dynamic>))
      .toList(),
  articles: (json['articles'] as List<dynamic>?)
      ?.map((e) => LessonArticle.fromJson(e as Map<String, dynamic>))
      .toList(),
  pagination: json['pagination'] == null
      ? null
      : LessonPagination.fromJson(json['pagination'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LessonCategoryWithArticlesToJson(
  _LessonCategoryWithArticles instance,
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

_LessonHierarchy _$LessonHierarchyFromJson(Map<String, dynamic> json) =>
    _LessonHierarchy(
      catId: _stringToInt(json['cat_id']),
      catTitle: json['cat_title'] as String?,
      level: _stringToInt(json['level']),
    );

Map<String, dynamic> _$LessonHierarchyToJson(_LessonHierarchy instance) =>
    <String, dynamic>{
      'cat_id': instance.catId,
      'cat_title': instance.catTitle,
      'level': instance.level,
    };

_LessonCategory _$LessonCategoryFromJson(Map<String, dynamic> json) =>
    _LessonCategory(
      catId: _stringToInt(json['cat_id']),
      catTitle: json['cat_title'] as String?,
      catNote: json['cat_note'] as String?,
      catPic: json['cat_pic'] as String?,
      catPos: _stringToInt(json['cat_pos']),
      parent: json['parent'],
      children: json['children'] as List<dynamic>?,
    );

Map<String, dynamic> _$LessonCategoryToJson(_LessonCategory instance) =>
    <String, dynamic>{
      'cat_id': instance.catId,
      'cat_title': instance.catTitle,
      'cat_note': instance.catNote,
      'cat_pic': instance.catPic,
      'cat_pos': instance.catPos,
      'parent': instance.parent,
      'children': instance.children,
    };

_LessonArticle _$LessonArticleFromJson(Map<String, dynamic> json) =>
    _LessonArticle(
      articleId: _stringToInt(json['article_id']),
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
          : LessonArticleCategory.fromJson(
              json['category'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$LessonArticleToJson(_LessonArticle instance) =>
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

_LessonArticleCategory _$LessonArticleCategoryFromJson(
  Map<String, dynamic> json,
) => _LessonArticleCategory(
  catId: _stringToInt(json['cat_id']),
  catTitle: json['cat_title'] as String?,
  catFatherId: json['cat_father_id'] as String?,
);

Map<String, dynamic> _$LessonArticleCategoryToJson(
  _LessonArticleCategory instance,
) => <String, dynamic>{
  'cat_id': instance.catId,
  'cat_title': instance.catTitle,
  'cat_father_id': instance.catFatherId,
};

_LessonMeta _$LessonMetaFromJson(Map<String, dynamic> json) => _LessonMeta(
  statistics: json['statistics'] == null
      ? null
      : LessonStatistics.fromJson(json['statistics'] as Map<String, dynamic>),
  responseInfo: json['response_info'] == null
      ? null
      : LessonResponseInfo.fromJson(
          json['response_info'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$LessonMetaToJson(_LessonMeta instance) =>
    <String, dynamic>{
      'statistics': instance.statistics,
      'response_info': instance.responseInfo,
    };

_LessonStatistics _$LessonStatisticsFromJson(Map<String, dynamic> json) =>
    _LessonStatistics(
      totalCategories: _stringToInt(json['total_categories']),
      totalChildCategories: _stringToInt(json['total_child_categories']),
      requestedCategoryIds: (json['requested_category_ids'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      allCategoryIdsIncluded:
          (json['all_category_ids_included'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList(),
      hasParentCategories: json['has_parent_categories'] as bool?,
    );

Map<String, dynamic> _$LessonStatisticsToJson(_LessonStatistics instance) =>
    <String, dynamic>{
      'total_categories': instance.totalCategories,
      'total_child_categories': instance.totalChildCategories,
      'requested_category_ids': instance.requestedCategoryIds,
      'all_category_ids_included': instance.allCategoryIdsIncluded,
      'has_parent_categories': instance.hasParentCategories,
    };

_LessonResponseInfo _$LessonResponseInfoFromJson(Map<String, dynamic> json) =>
    _LessonResponseInfo(
      timestamp: json['timestamp'] as String?,
      apiVersion: json['api_version'] as String?,
      endpoint: json['endpoint'] as String?,
      contentType: json['content_type'] as String?,
    );

Map<String, dynamic> _$LessonResponseInfoToJson(_LessonResponseInfo instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'api_version': instance.apiVersion,
      'endpoint': instance.endpoint,
      'content_type': instance.contentType,
    };

_LessonPagination _$LessonPaginationFromJson(Map<String, dynamic> json) =>
    _LessonPagination(
      total: _stringToInt(json['total']),
      count: _stringToInt(json['count']),
      perPage: _stringToInt(json['per_page']),
      currentPage: _stringToInt(json['current_page']),
      lastPage: _stringToInt(json['last_page']),
      from: _stringToInt(json['from']),
      to: _stringToInt(json['to']),
    );

Map<String, dynamic> _$LessonPaginationToJson(_LessonPagination instance) =>
    <String, dynamic>{
      'total': instance.total,
      'count': instance.count,
      'per_page': instance.perPage,
      'current_page': instance.currentPage,
      'last_page': instance.lastPage,
      'from': instance.from,
      'to': instance.to,
    };

_LessonArticleDetailModel _$LessonArticleDetailModelFromJson(
  Map<String, dynamic> json,
) => _LessonArticleDetailModel(
  status: json['status'] as String?,
  data: json['data'] == null
      ? null
      : LessonArticleDetailData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LessonArticleDetailModelToJson(
  _LessonArticleDetailModel instance,
) => <String, dynamic>{'status': instance.status, 'data': instance.data};

_LessonArticleDetailData _$LessonArticleDetailDataFromJson(
  Map<String, dynamic> json,
) => _LessonArticleDetailData(
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
      : LessonArticleDetailCategory.fromJson(
          json['category'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$LessonArticleDetailDataToJson(
  _LessonArticleDetailData instance,
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

_LessonArticleDetailCategory _$LessonArticleDetailCategoryFromJson(
  Map<String, dynamic> json,
) => _LessonArticleDetailCategory(
  catId: _stringToInt(json['cat_id']),
  catTitle: json['cat_title'] as String?,
  catNote: json['cat_note'] as String?,
  catPic: json['cat_pic'] as String?,
  catPos: _stringToInt(json['cat_pos']),
  catFatherId: _stringToInt(json['cat_father_id']),
);

Map<String, dynamic> _$LessonArticleDetailCategoryToJson(
  _LessonArticleDetailCategory instance,
) => <String, dynamic>{
  'cat_id': instance.catId,
  'cat_title': instance.catTitle,
  'cat_note': instance.catNote,
  'cat_pic': instance.catPic,
  'cat_pos': instance.catPos,
  'cat_father_id': instance.catFatherId,
};
