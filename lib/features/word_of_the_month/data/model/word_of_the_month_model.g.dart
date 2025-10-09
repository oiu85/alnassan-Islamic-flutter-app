// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word_of_the_month_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WordOfTheMonthModel _$WordOfTheMonthModelFromJson(Map<String, dynamic> json) =>
    _WordOfTheMonthModel(
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : WordOfTheMonthData.fromJson(json['data'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : WordOfTheMonthMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WordOfTheMonthModelToJson(
  _WordOfTheMonthModel instance,
) => <String, dynamic>{
  'status': instance.status,
  'data': instance.data,
  'meta': instance.meta,
};

_WordOfTheMonthData _$WordOfTheMonthDataFromJson(Map<String, dynamic> json) =>
    _WordOfTheMonthData(
      subCategories: (json['sub_categories'] as List<dynamic>?)
          ?.map(
            (e) => WordOfTheMonthCategory.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );

Map<String, dynamic> _$WordOfTheMonthDataToJson(_WordOfTheMonthData instance) =>
    <String, dynamic>{'sub_categories': instance.subCategories};

_WordOfTheMonthCategory _$WordOfTheMonthCategoryFromJson(
  Map<String, dynamic> json,
) => _WordOfTheMonthCategory(
  catId: (json['cat_id'] as num?)?.toInt(),
  catTitle: json['cat_title'] as String?,
  catNote: json['cat_note'] as String?,
  catPic: json['cat_pic'] as String?,
  catMenus: json['cat_menus'] as String?,
  catPos: json['cat_pos'] as String?,
  catInSubMenu: json['cat_in_sub_menu'] as String?,
  articles: json['articles'] == null
      ? null
      : WordOfTheMonthArticlesWrapper.fromJson(
          json['articles'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$WordOfTheMonthCategoryToJson(
  _WordOfTheMonthCategory instance,
) => <String, dynamic>{
  'cat_id': instance.catId,
  'cat_title': instance.catTitle,
  'cat_note': instance.catNote,
  'cat_pic': instance.catPic,
  'cat_menus': instance.catMenus,
  'cat_pos': instance.catPos,
  'cat_in_sub_menu': instance.catInSubMenu,
  'articles': instance.articles,
};

_WordOfTheMonthArticlesWrapper _$WordOfTheMonthArticlesWrapperFromJson(
  Map<String, dynamic> json,
) => _WordOfTheMonthArticlesWrapper(
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => WordOfTheMonthArticle.fromJson(e as Map<String, dynamic>))
      .toList(),
  pagination: json['pagination'] == null
      ? null
      : WordOfTheMonthPagination.fromJson(
          json['pagination'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$WordOfTheMonthArticlesWrapperToJson(
  _WordOfTheMonthArticlesWrapper instance,
) => <String, dynamic>{
  'data': instance.data,
  'pagination': instance.pagination,
};

_WordOfTheMonthArticle _$WordOfTheMonthArticleFromJson(
  Map<String, dynamic> json,
) => _WordOfTheMonthArticle(
  articleId: (json['article_id'] as num?)?.toInt(),
  articleTitle: json['article_title'] as String?,
  articleSummary: json['article_summary'] as String?,
  articleCatId: _intToString(json['article_cat_id']),
  articleDes: json['article_des'] as String?,
  articlePic: json['article_pic'] as String?,
  articleVisitor: _intToString(json['article_visitor']),
  articleDate: json['article_date'] as String?,
);

Map<String, dynamic> _$WordOfTheMonthArticleToJson(
  _WordOfTheMonthArticle instance,
) => <String, dynamic>{
  'article_id': instance.articleId,
  'article_title': instance.articleTitle,
  'article_summary': instance.articleSummary,
  'article_cat_id': instance.articleCatId,
  'article_des': instance.articleDes,
  'article_pic': instance.articlePic,
  'article_visitor': instance.articleVisitor,
  'article_date': instance.articleDate,
};

_WordOfTheMonthPagination _$WordOfTheMonthPaginationFromJson(
  Map<String, dynamic> json,
) => _WordOfTheMonthPagination(
  total: (json['total'] as num?)?.toInt(),
  count: (json['count'] as num?)?.toInt(),
  perPage: (json['per_page'] as num?)?.toInt(),
  currentPage: (json['current_page'] as num?)?.toInt(),
  lastPage: (json['last_page'] as num?)?.toInt(),
  from: (json['from'] as num?)?.toInt(),
  to: (json['to'] as num?)?.toInt(),
);

Map<String, dynamic> _$WordOfTheMonthPaginationToJson(
  _WordOfTheMonthPagination instance,
) => <String, dynamic>{
  'total': instance.total,
  'count': instance.count,
  'per_page': instance.perPage,
  'current_page': instance.currentPage,
  'last_page': instance.lastPage,
  'from': instance.from,
  'to': instance.to,
};

_WordOfTheMonthMeta _$WordOfTheMonthMetaFromJson(Map<String, dynamic> json) =>
    _WordOfTheMonthMeta(
      paginationParams: json['pagination_params'] == null
          ? null
          : WordOfTheMonthPaginationParams.fromJson(
              json['pagination_params'] as Map<String, dynamic>,
            ),
      responseInfo: json['response_info'] == null
          ? null
          : WordOfTheMonthResponseInfo.fromJson(
              json['response_info'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$WordOfTheMonthMetaToJson(_WordOfTheMonthMeta instance) =>
    <String, dynamic>{
      'pagination_params': instance.paginationParams,
      'response_info': instance.responseInfo,
    };

_WordOfTheMonthPaginationParams _$WordOfTheMonthPaginationParamsFromJson(
  Map<String, dynamic> json,
) => _WordOfTheMonthPaginationParams(
  articlesPerPage: json['articles_per_page'] as String?,
  categoriesPerPage: (json['categories_per_page'] as num?)?.toInt(),
  articlesPage: json['articles_page'] as String?,
  categoriesPage: (json['categories_page'] as num?)?.toInt(),
);

Map<String, dynamic> _$WordOfTheMonthPaginationParamsToJson(
  _WordOfTheMonthPaginationParams instance,
) => <String, dynamic>{
  'articles_per_page': instance.articlesPerPage,
  'categories_per_page': instance.categoriesPerPage,
  'articles_page': instance.articlesPage,
  'categories_page': instance.categoriesPage,
};

_WordOfTheMonthResponseInfo _$WordOfTheMonthResponseInfoFromJson(
  Map<String, dynamic> json,
) => _WordOfTheMonthResponseInfo(
  timestamp: json['timestamp'] as String?,
  apiVersion: json['api_version'] as String?,
  endpoint: json['endpoint'] as String?,
  contentType: json['content_type'] as String?,
);

Map<String, dynamic> _$WordOfTheMonthResponseInfoToJson(
  _WordOfTheMonthResponseInfo instance,
) => <String, dynamic>{
  'timestamp': instance.timestamp,
  'api_version': instance.apiVersion,
  'endpoint': instance.endpoint,
  'content_type': instance.contentType,
};
