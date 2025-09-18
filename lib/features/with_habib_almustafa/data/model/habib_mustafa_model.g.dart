// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'habib_mustafa_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HabibMustafaModel _$HabibMustafaModelFromJson(Map<String, dynamic> json) =>
    _HabibMustafaModel(
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : HabibMustafaData.fromJson(json['data'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HabibMustafaModelToJson(_HabibMustafaModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'meta': instance.meta,
    };

_HabibMustafaData _$HabibMustafaDataFromJson(Map<String, dynamic> json) =>
    _HabibMustafaData(
      subCategories: json['sub_categories'] == null
          ? null
          : SubCategoriesWrapper.fromJson(
              json['sub_categories'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$HabibMustafaDataToJson(_HabibMustafaData instance) =>
    <String, dynamic>{'sub_categories': instance.subCategories};

_SubCategoriesWrapper _$SubCategoriesWrapperFromJson(
  Map<String, dynamic> json,
) => _SubCategoriesWrapper(
  data: (json['data'] as List<dynamic>?)
      ?.map((e) => SubCategory.fromJson(e as Map<String, dynamic>))
      .toList(),
  pagination: json['pagination'] == null
      ? null
      : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SubCategoriesWrapperToJson(
  _SubCategoriesWrapper instance,
) => <String, dynamic>{
  'data': instance.data,
  'pagination': instance.pagination,
};

_Meta _$MetaFromJson(Map<String, dynamic> json) => _Meta(
  paginationParams: json['pagination_params'] == null
      ? null
      : PaginationParams.fromJson(
          json['pagination_params'] as Map<String, dynamic>,
        ),
  responseInfo: json['response_info'] == null
      ? null
      : ResponseInfo.fromJson(json['response_info'] as Map<String, dynamic>),
);

Map<String, dynamic> _$MetaToJson(_Meta instance) => <String, dynamic>{
  'pagination_params': instance.paginationParams,
  'response_info': instance.responseInfo,
};

_PaginationParams _$PaginationParamsFromJson(Map<String, dynamic> json) =>
    _PaginationParams(
      articlesPerPage: json['articles_per_page'] as String?,
      categoriesPerPage: json['categories_per_page'] as String?,
      articlesPage: json['articles_page'] as String?,
      categoriesPage: json['categories_page'] as String?,
    );

Map<String, dynamic> _$PaginationParamsToJson(_PaginationParams instance) =>
    <String, dynamic>{
      'articles_per_page': instance.articlesPerPage,
      'categories_per_page': instance.categoriesPerPage,
      'articles_page': instance.articlesPage,
      'categories_page': instance.categoriesPage,
    };

_ResponseInfo _$ResponseInfoFromJson(Map<String, dynamic> json) =>
    _ResponseInfo(
      timestamp: json['timestamp'] as String?,
      apiVersion: json['api_version'] as String?,
      endpoint: json['endpoint'] as String?,
      contentType: json['content_type'] as String?,
    );

Map<String, dynamic> _$ResponseInfoToJson(_ResponseInfo instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'api_version': instance.apiVersion,
      'endpoint': instance.endpoint,
      'content_type': instance.contentType,
    };

_SubCategory _$SubCategoryFromJson(Map<String, dynamic> json) => _SubCategory(
  catId: (json['cat_id'] as num?)?.toInt(),
  catTitle: json['cat_title'] as String?,
  catNote: json['cat_note'] as String?,
  catPic: json['cat_pic'] as String?,
  catMenus: json['cat_menus'] as String?,
  catPos: json['cat_pos'] as String?,
  catInSubMenu: json['cat_in_sub_menu'] as String?,
  articles: (json['articles'] as List<dynamic>?)
      ?.map((e) => HabibArticle.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$SubCategoryToJson(_SubCategory instance) =>
    <String, dynamic>{
      'cat_id': instance.catId,
      'cat_title': instance.catTitle,
      'cat_note': instance.catNote,
      'cat_pic': instance.catPic,
      'cat_menus': instance.catMenus,
      'cat_pos': instance.catPos,
      'cat_in_sub_menu': instance.catInSubMenu,
      'articles': instance.articles,
    };

_HabibArticle _$HabibArticleFromJson(Map<String, dynamic> json) =>
    _HabibArticle(
      articleId: (json['article_id'] as num?)?.toInt(),
      articleTitle: json['article_title'] as String?,
      articleSummary: json['article_summary'] as String?,
      articleDes: json['article_des'] as String?,
      articleCatId: json['article_cat_id'] as String?,
      articlePic: json['article_pic'] as String?,
      articleVisitor: json['article_visitor'] as String?,
      articleDate: json['article_date'] as String?,
      articleContent: json['article_content'] as String?,
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HabibArticleToJson(_HabibArticle instance) =>
    <String, dynamic>{
      'article_id': instance.articleId,
      'article_title': instance.articleTitle,
      'article_summary': instance.articleSummary,
      'article_des': instance.articleDes,
      'article_cat_id': instance.articleCatId,
      'article_pic': instance.articlePic,
      'article_visitor': instance.articleVisitor,
      'article_date': instance.articleDate,
      'article_content': instance.articleContent,
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

_Pagination _$PaginationFromJson(Map<String, dynamic> json) => _Pagination(
  currentPage: (json['current_page'] as num?)?.toInt(),
  lastPage: (json['last_page'] as num?)?.toInt(),
  perPage: (json['per_page'] as num?)?.toInt(),
  total: (json['total'] as num?)?.toInt(),
  from: (json['from'] as num?)?.toInt(),
  to: (json['to'] as num?)?.toInt(),
);

Map<String, dynamic> _$PaginationToJson(_Pagination instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'last_page': instance.lastPage,
      'per_page': instance.perPage,
      'total': instance.total,
      'from': instance.from,
      'to': instance.to,
    };
