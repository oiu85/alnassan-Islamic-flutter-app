// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'words_on_occasions_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WordsOnOccasionsModel _$WordsOnOccasionsModelFromJson(
  Map<String, dynamic> json,
) => _WordsOnOccasionsModel(
  status: json['status'] as String?,
  data: json['data'] == null
      ? null
      : WordsOnOccasionsData.fromJson(json['data'] as Map<String, dynamic>),
  meta: json['meta'] == null
      ? null
      : WordsOnOccasionsMeta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$WordsOnOccasionsModelToJson(
  _WordsOnOccasionsModel instance,
) => <String, dynamic>{
  'status': instance.status,
  'data': instance.data,
  'meta': instance.meta,
};

_WordsOnOccasionsData _$WordsOnOccasionsDataFromJson(
  Map<String, dynamic> json,
) => _WordsOnOccasionsData(
  subCategories: (json['sub_categories'] as List<dynamic>?)
      ?.map((e) => WordsOnOccasionsCategory.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$WordsOnOccasionsDataToJson(
  _WordsOnOccasionsData instance,
) => <String, dynamic>{'sub_categories': instance.subCategories};

_WordsOnOccasionsCategory _$WordsOnOccasionsCategoryFromJson(
  Map<String, dynamic> json,
) => _WordsOnOccasionsCategory(
  catId: (json['cat_id'] as num?)?.toInt(),
  catTitle: json['cat_title'] as String?,
  catNote: json['cat_note'] as String?,
  catPic: json['cat_pic'] as String?,
  catMenus: _intToString(json['cat_menus']),
  catPos: _intToString(json['cat_pos']),
  catInSubMenu: _intToString(json['cat_in_sub_menu']),
  articles: json['articles'] == null
      ? null
      : WordsOnOccasionsArticlesWrapper.fromJson(
          json['articles'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$WordsOnOccasionsCategoryToJson(
  _WordsOnOccasionsCategory instance,
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

_WordsOnOccasionsArticlesWrapper _$WordsOnOccasionsArticlesWrapperFromJson(
  Map<String, dynamic> json,
) => _WordsOnOccasionsArticlesWrapper(
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => WordsOnOccasionsArticle.fromJson(e as Map<String, dynamic>))
      .toList(),
  pagination: json['pagination'] == null
      ? null
      : WordsOnOccasionsPagination.fromJson(
          json['pagination'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$WordsOnOccasionsArticlesWrapperToJson(
  _WordsOnOccasionsArticlesWrapper instance,
) => <String, dynamic>{
  'data': instance.data,
  'pagination': instance.pagination,
};

_WordsOnOccasionsArticle _$WordsOnOccasionsArticleFromJson(
  Map<String, dynamic> json,
) => _WordsOnOccasionsArticle(
  articleId: (json['article_id'] as num?)?.toInt(),
  articleTitle: json['article_title'] as String?,
  articleSummary: json['article_summary'] as String?,
  articleCatId: _intToString(json['article_cat_id']),
  articleDes: json['article_des'] as String?,
  articlePic: json['article_pic'] as String?,
  articleVisitor: _intToString(json['article_visitor']),
  articleDate: json['article_date'] as String?,
);

Map<String, dynamic> _$WordsOnOccasionsArticleToJson(
  _WordsOnOccasionsArticle instance,
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

_WordsOnOccasionsPagination _$WordsOnOccasionsPaginationFromJson(
  Map<String, dynamic> json,
) => _WordsOnOccasionsPagination(
  total: (json['total'] as num?)?.toInt(),
  count: (json['count'] as num?)?.toInt(),
  perPage: (json['per_page'] as num?)?.toInt(),
  currentPage: (json['current_page'] as num?)?.toInt(),
  lastPage: (json['last_page'] as num?)?.toInt(),
  from: (json['from'] as num?)?.toInt(),
  to: (json['to'] as num?)?.toInt(),
);

Map<String, dynamic> _$WordsOnOccasionsPaginationToJson(
  _WordsOnOccasionsPagination instance,
) => <String, dynamic>{
  'total': instance.total,
  'count': instance.count,
  'per_page': instance.perPage,
  'current_page': instance.currentPage,
  'last_page': instance.lastPage,
  'from': instance.from,
  'to': instance.to,
};

_WordsOnOccasionsMeta _$WordsOnOccasionsMetaFromJson(
  Map<String, dynamic> json,
) => _WordsOnOccasionsMeta(
  paginationParams: json['pagination_params'] == null
      ? null
      : WordsOnOccasionsPaginationParams.fromJson(
          json['pagination_params'] as Map<String, dynamic>,
        ),
  responseInfo: json['response_info'] == null
      ? null
      : WordsOnOccasionsResponseInfo.fromJson(
          json['response_info'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$WordsOnOccasionsMetaToJson(
  _WordsOnOccasionsMeta instance,
) => <String, dynamic>{
  'pagination_params': instance.paginationParams,
  'response_info': instance.responseInfo,
};

_WordsOnOccasionsPaginationParams _$WordsOnOccasionsPaginationParamsFromJson(
  Map<String, dynamic> json,
) => _WordsOnOccasionsPaginationParams(
  articlesPerPage: json['articles_per_page'] as String?,
  categoriesPerPage: (json['categories_per_page'] as num?)?.toInt(),
  articlesPage: json['articles_page'] as String?,
  categoriesPage: (json['categories_page'] as num?)?.toInt(),
);

Map<String, dynamic> _$WordsOnOccasionsPaginationParamsToJson(
  _WordsOnOccasionsPaginationParams instance,
) => <String, dynamic>{
  'articles_per_page': instance.articlesPerPage,
  'categories_per_page': instance.categoriesPerPage,
  'articles_page': instance.articlesPage,
  'categories_page': instance.categoriesPage,
};

_WordsOnOccasionsResponseInfo _$WordsOnOccasionsResponseInfoFromJson(
  Map<String, dynamic> json,
) => _WordsOnOccasionsResponseInfo(
  timestamp: json['timestamp'] as String?,
  apiVersion: json['api_version'] as String?,
  endpoint: json['endpoint'] as String?,
  contentType: json['content_type'] as String?,
);

Map<String, dynamic> _$WordsOnOccasionsResponseInfoToJson(
  _WordsOnOccasionsResponseInfo instance,
) => <String, dynamic>{
  'timestamp': instance.timestamp,
  'api_version': instance.apiVersion,
  'endpoint': instance.endpoint,
  'content_type': instance.contentType,
};
