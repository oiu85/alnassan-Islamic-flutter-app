// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BooksResponse _$BooksResponseFromJson(Map<String, dynamic> json) =>
    _BooksResponse(
      status: json['status'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => BookData.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : BooksMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BooksResponseToJson(_BooksResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'meta': instance.meta,
    };

_BookData _$BookDataFromJson(Map<String, dynamic> json) => _BookData(
  bookId: (json['book_id'] as num).toInt(),
  bookTitle: json['book_title'] as String,
  bookSummary: json['book_summary'] as String?,
  bookDes: json['book_des'] as String?,
  bookCatId: const IntStringConverter().fromJson(json['book_cat_id']),
  bookPic: json['book_pic'] as String?,
  bookFile: json['book_file'] as String?,
  bookVisitor: const IntStringConverter().fromJson(json['book_visitor']),
  bookPriority: const IntStringConverter().fromJson(json['book_priority']),
  bookDate: json['book_date'] as String,
  bookActive: const IntStringConverter().fromJson(json['book_active']),
  bookSource: json['book_source'] as String?,
  bookFileUrl: json['book_file_url'] as String?,
  bookPicUrl: json['book_pic_url'] as String?,
  bookType: json['book_type'] as String?,
  bookDownloadUrl: json['book_download_url'] as String?,
  category: json['category'] == null
      ? null
      : BookCategory.fromJson(json['category'] as Map<String, dynamic>),
);

Map<String, dynamic> _$BookDataToJson(_BookData instance) => <String, dynamic>{
  'book_id': instance.bookId,
  'book_title': instance.bookTitle,
  'book_summary': instance.bookSummary,
  'book_des': instance.bookDes,
  'book_cat_id': const IntStringConverter().toJson(instance.bookCatId),
  'book_pic': instance.bookPic,
  'book_file': instance.bookFile,
  'book_visitor': const IntStringConverter().toJson(instance.bookVisitor),
  'book_priority': const IntStringConverter().toJson(instance.bookPriority),
  'book_date': instance.bookDate,
  'book_active': const IntStringConverter().toJson(instance.bookActive),
  'book_source': instance.bookSource,
  'book_file_url': instance.bookFileUrl,
  'book_pic_url': instance.bookPicUrl,
  'book_type': instance.bookType,
  'book_download_url': instance.bookDownloadUrl,
  'category': instance.category,
};

_BookCategory _$BookCategoryFromJson(Map<String, dynamic> json) =>
    _BookCategory(
      catId: (json['cat_id'] as num).toInt(),
      catFatherId: const IntStringConverter().fromJson(json['cat_father_id']),
      catMenus: const IntStringConverter().fromJson(json['cat_menus']),
      catTitle: json['cat_title'] as String,
      catNote: json['cat_note'] as String?,
      catPic: json['cat_pic'] as String?,
      catSup: const IntStringConverter().fromJson(json['cat_sup']),
      catDate: json['cat_date'] as String,
      catPicActive: const IntStringConverter().fromJson(json['cat_pic_active']),
      catLan: json['cat_lan'] as String,
      catPos: const IntStringConverter().fromJson(json['cat_pos']),
      catActive: const IntStringConverter().fromJson(json['cat_active']),
      catShowMenu: const IntStringConverter().fromJson(json['cat_show_menu']),
      catShowMain: const IntStringConverter().fromJson(json['cat_show_main']),
      catAgent: json['cat_agent'] as String?,
    );

Map<String, dynamic> _$BookCategoryToJson(
  _BookCategory instance,
) => <String, dynamic>{
  'cat_id': instance.catId,
  'cat_father_id': const IntStringConverter().toJson(instance.catFatherId),
  'cat_menus': const IntStringConverter().toJson(instance.catMenus),
  'cat_title': instance.catTitle,
  'cat_note': instance.catNote,
  'cat_pic': instance.catPic,
  'cat_sup': const IntStringConverter().toJson(instance.catSup),
  'cat_date': instance.catDate,
  'cat_pic_active': const IntStringConverter().toJson(instance.catPicActive),
  'cat_lan': instance.catLan,
  'cat_pos': const IntStringConverter().toJson(instance.catPos),
  'cat_active': const IntStringConverter().toJson(instance.catActive),
  'cat_show_menu': const IntStringConverter().toJson(instance.catShowMenu),
  'cat_show_main': const IntStringConverter().toJson(instance.catShowMain),
  'cat_agent': instance.catAgent,
};

_BooksMeta _$BooksMetaFromJson(Map<String, dynamic> json) => _BooksMeta(
  pagination: json['pagination'] == null
      ? null
      : BooksPagination.fromJson(json['pagination'] as Map<String, dynamic>),
  filters: json['filters'] == null
      ? null
      : BooksFilters.fromJson(json['filters'] as Map<String, dynamic>),
  responseInfo: json['response_info'] == null
      ? null
      : BooksResponseInfo.fromJson(
          json['response_info'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$BooksMetaToJson(_BooksMeta instance) =>
    <String, dynamic>{
      'pagination': instance.pagination,
      'filters': instance.filters,
      'response_info': instance.responseInfo,
    };

_BooksPagination _$BooksPaginationFromJson(Map<String, dynamic> json) =>
    _BooksPagination(
      total: (json['total'] as num).toInt(),
      count: (json['count'] as num).toInt(),
      perPage: (json['per_page'] as num).toInt(),
      currentPage: (json['current_page'] as num).toInt(),
      lastPage: (json['last_page'] as num).toInt(),
      from: (json['from'] as num?)?.toInt(),
      to: (json['to'] as num?)?.toInt(),
    );

Map<String, dynamic> _$BooksPaginationToJson(_BooksPagination instance) =>
    <String, dynamic>{
      'total': instance.total,
      'count': instance.count,
      'per_page': instance.perPage,
      'current_page': instance.currentPage,
      'last_page': instance.lastPage,
      'from': instance.from,
      'to': instance.to,
    };

_BooksFilters _$BooksFiltersFromJson(Map<String, dynamic> json) =>
    _BooksFilters(
      appliedFilters: json['applied_filters'] as Map<String, dynamic>?,
      availableSorts: (json['available_sorts'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$BooksFiltersToJson(_BooksFilters instance) =>
    <String, dynamic>{
      'applied_filters': instance.appliedFilters,
      'available_sorts': instance.availableSorts,
    };

_BooksResponseInfo _$BooksResponseInfoFromJson(Map<String, dynamic> json) =>
    _BooksResponseInfo(
      timestamp: json['timestamp'] as String,
      apiVersion: json['api_version'] as String,
      endpoint: json['endpoint'] as String,
      contentType: json['content_type'] as String,
    );

Map<String, dynamic> _$BooksResponseInfoToJson(_BooksResponseInfo instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'api_version': instance.apiVersion,
      'endpoint': instance.endpoint,
      'content_type': instance.contentType,
    };
