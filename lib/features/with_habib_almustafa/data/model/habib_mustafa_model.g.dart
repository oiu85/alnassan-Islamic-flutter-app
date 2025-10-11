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
      subCategories: (json['sub_categories'] as List<dynamic>?)
          ?.map((e) => SubCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HabibMustafaDataToJson(_HabibMustafaData instance) =>
    <String, dynamic>{'sub_categories': instance.subCategories};

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
      articlesPerPage: _intToString(json['articles_per_page']),
      categoriesPerPage: _intToString(json['categories_per_page']),
      articlesPage: _intToString(json['articles_page']),
      categoriesPage: _intToString(json['categories_page']),
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
  catMenus: _intToString(json['cat_menus']),
  catPos: _intToString(json['cat_pos']),
  catInSubMenu: _intToString(json['cat_in_sub_menu']),
  articles: json['articles'] == null
      ? null
      : ArticlesWrapper.fromJson(json['articles'] as Map<String, dynamic>),
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

_ArticlesWrapper _$ArticlesWrapperFromJson(Map<String, dynamic> json) =>
    _ArticlesWrapper(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => HabibArticle.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ArticlesWrapperToJson(_ArticlesWrapper instance) =>
    <String, dynamic>{'data': instance.data, 'pagination': instance.pagination};

_HabibArticle _$HabibArticleFromJson(Map<String, dynamic> json) =>
    _HabibArticle(
      articleId: (json['article_id'] as num?)?.toInt(),
      articleTitle: json['article_title'] as String?,
      articleSummary: json['article_summary'] as String?,
      articleDes: json['article_des'] as String?,
      articleCatId: _intToString(json['article_cat_id']),
      articlePic: json['article_pic'] as String?,
      articleVisitor: _intToString(json['article_visitor']),
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

_CategoryArticlesModel _$CategoryArticlesModelFromJson(
  Map<String, dynamic> json,
) => _CategoryArticlesModel(
  status: json['status'] as String?,
  data: json['data'] == null
      ? null
      : CategoryArticlesData.fromJson(json['data'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CategoryArticlesModelToJson(
  _CategoryArticlesModel instance,
) => <String, dynamic>{'status': instance.status, 'data': instance.data};

_CategoryArticlesData _$CategoryArticlesDataFromJson(
  Map<String, dynamic> json,
) => _CategoryArticlesData(
  categories: (json['categories'] as List<dynamic>?)
      ?.map((e) => CategoryWithArticles.fromJson(e as Map<String, dynamic>))
      .toList(),
  isMultipleCategories: json['is_multiple_categories'] as bool?,
);

Map<String, dynamic> _$CategoryArticlesDataToJson(
  _CategoryArticlesData instance,
) => <String, dynamic>{
  'categories': instance.categories,
  'is_multiple_categories': instance.isMultipleCategories,
};

_CategoryWithArticles _$CategoryWithArticlesFromJson(
  Map<String, dynamic> json,
) => _CategoryWithArticles(
  catId: (json['cat_id'] as num?)?.toInt(),
  catTitle: json['cat_title'] as String?,
  catNote: json['cat_note'] as String?,
  catPic: json['cat_pic'] as String?,
  catPos: _intToString(json['cat_pos']),
  parent: json['parent'],
  children: json['children'] as List<dynamic>?,
  articles: (json['articles'] as List<dynamic>?)
      ?.map((e) => HabibArticle.fromJson(e as Map<String, dynamic>))
      .toList(),
  pagination: json['pagination'] == null
      ? null
      : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CategoryWithArticlesToJson(
  _CategoryWithArticles instance,
) => <String, dynamic>{
  'cat_id': instance.catId,
  'cat_title': instance.catTitle,
  'cat_note': instance.catNote,
  'cat_pic': instance.catPic,
  'cat_pos': instance.catPos,
  'parent': instance.parent,
  'children': instance.children,
  'articles': instance.articles,
  'pagination': instance.pagination,
};

_ArticleDetailModel _$ArticleDetailModelFromJson(Map<String, dynamic> json) =>
    _ArticleDetailModel(
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : ArticleDetailData.fromJson(json['data'] as Map<String, dynamic>),
      meta: json['meta'] == null
          ? null
          : ArticleDetailMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ArticleDetailModelToJson(_ArticleDetailModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'meta': instance.meta,
    };

_ArticleDetailData _$ArticleDetailDataFromJson(Map<String, dynamic> json) =>
    _ArticleDetailData(
      articleId: (json['article_id'] as num?)?.toInt(),
      articleCatId: _intToString(json['article_cat_id']),
      articleTitle: json['article_title'] as String?,
      articleTs: json['article_ts'] as String?,
      articleSummary: json['article_summary'] as String?,
      articlePic: json['article_pic'] as String?,
      articleDes: json['article_des'] as String?,
      articlePicPos: _intToString(json['article_pic_pos']),
      articleVisitor: _intToString(json['article_visitor']),
      articleIsNew: _intToString(json['article_is_new']),
      articlePriority: _intToString(json['article_priority']),
      articleActiveVote: _intToString(json['article_active_vote']),
      articleActiveHint: _intToString(json['article_active_hint']),
      articleActive: _intToString(json['article_active']),
      articleDate: json['article_date'] as String?,
      articlePicActive: _intToString(json['article_pic_active']),
      articleLastArticle: _intToString(json['article_last_article']),
      articlePublisherId: _intToString(json['article_publisher_id']),
      articleSource: json['article_source'] as String?,
      articleSourceUrl: json['article_source_url'] as String?,
      articleYoutubeId: json['article_youtube_id'] as String?,
      articleFile: json['article_file'] as String?,
      articleUserAddHintNsup: _intToString(json['article_user_add_hint_nsup']),
      category: json['category'] == null
          ? null
          : ArticleDetailCategory.fromJson(
              json['category'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$ArticleDetailDataToJson(_ArticleDetailData instance) =>
    <String, dynamic>{
      'article_id': instance.articleId,
      'article_cat_id': instance.articleCatId,
      'article_title': instance.articleTitle,
      'article_ts': instance.articleTs,
      'article_summary': instance.articleSummary,
      'article_pic': instance.articlePic,
      'article_des': instance.articleDes,
      'article_pic_pos': instance.articlePicPos,
      'article_visitor': instance.articleVisitor,
      'article_is_new': instance.articleIsNew,
      'article_priority': instance.articlePriority,
      'article_active_vote': instance.articleActiveVote,
      'article_active_hint': instance.articleActiveHint,
      'article_active': instance.articleActive,
      'article_date': instance.articleDate,
      'article_pic_active': instance.articlePicActive,
      'article_last_article': instance.articleLastArticle,
      'article_publisher_id': instance.articlePublisherId,
      'article_source': instance.articleSource,
      'article_source_url': instance.articleSourceUrl,
      'article_youtube_id': instance.articleYoutubeId,
      'article_file': instance.articleFile,
      'article_user_add_hint_nsup': instance.articleUserAddHintNsup,
      'category': instance.category,
    };

_ArticleDetailCategory _$ArticleDetailCategoryFromJson(
  Map<String, dynamic> json,
) => _ArticleDetailCategory(
  catId: (json['cat_id'] as num?)?.toInt(),
  catFatherId: _intToString(json['cat_father_id']),
  catMenus: _intToString(json['cat_menus']),
  catTitle: json['cat_title'] as String?,
  catNote: json['cat_note'] as String?,
  catPic: json['cat_pic'] as String?,
  catSup: _intToString(json['cat_sup']),
  catDate: json['cat_date'] as String?,
  catPicActive: _intToString(json['cat_pic_active']),
  catLan: _intToString(json['cat_lan']),
  catPos: _intToString(json['cat_pos']),
  catActive: _intToString(json['cat_active']),
  catShowMenu: _intToString(json['cat_show_menu']),
  catShowMain: _intToString(json['cat_show_main']),
  catAgent: _intToString(json['cat_agent']),
  catInSubMenu: _intToString(json['cat_in_sub_menu']),
);

Map<String, dynamic> _$ArticleDetailCategoryToJson(
  _ArticleDetailCategory instance,
) => <String, dynamic>{
  'cat_id': instance.catId,
  'cat_father_id': instance.catFatherId,
  'cat_menus': instance.catMenus,
  'cat_title': instance.catTitle,
  'cat_note': instance.catNote,
  'cat_pic': instance.catPic,
  'cat_sup': instance.catSup,
  'cat_date': instance.catDate,
  'cat_pic_active': instance.catPicActive,
  'cat_lan': instance.catLan,
  'cat_pos': instance.catPos,
  'cat_active': instance.catActive,
  'cat_show_menu': instance.catShowMenu,
  'cat_show_main': instance.catShowMain,
  'cat_agent': instance.catAgent,
  'cat_in_sub_menu': instance.catInSubMenu,
};

_ArticleDetailMeta _$ArticleDetailMetaFromJson(Map<String, dynamic> json) =>
    _ArticleDetailMeta(
      responseInfo: json['response_info'] == null
          ? null
          : ArticleDetailResponseInfo.fromJson(
              json['response_info'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$ArticleDetailMetaToJson(_ArticleDetailMeta instance) =>
    <String, dynamic>{'response_info': instance.responseInfo};

_ArticleDetailResponseInfo _$ArticleDetailResponseInfoFromJson(
  Map<String, dynamic> json,
) => _ArticleDetailResponseInfo(
  timestamp: json['timestamp'] as String?,
  apiVersion: json['api_version'] as String?,
  endpoint: json['endpoint'] as String?,
  contentType: json['content_type'] as String?,
);

Map<String, dynamic> _$ArticleDetailResponseInfoToJson(
  _ArticleDetailResponseInfo instance,
) => <String, dynamic>{
  'timestamp': instance.timestamp,
  'api_version': instance.apiVersion,
  'endpoint': instance.endpoint,
  'content_type': instance.contentType,
};
