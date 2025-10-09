// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fatwa_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FatwaListModel _$FatwaListModelFromJson(Map<String, dynamic> json) =>
    _FatwaListModel(
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : FatwaListData.fromJson(json['data'] as Map<String, dynamic>),
      pagination: json['pagination'] == null
          ? null
          : FatwaListPagination.fromJson(
              json['pagination'] as Map<String, dynamic>,
            ),
      meta: json['meta'] == null
          ? null
          : FatwaListMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FatwaListModelToJson(_FatwaListModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'pagination': instance.pagination,
      'meta': instance.meta,
    };

_FatwaListData _$FatwaListDataFromJson(Map<String, dynamic> json) =>
    _FatwaListData(
      childCategory: json['child_category'] == null
          ? null
          : FatwaListCategory.fromJson(
              json['child_category'] as Map<String, dynamic>,
            ),
      fatwas: json['fatwas'] == null
          ? null
          : FatwaListFatwas.fromJson(json['fatwas'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FatwaListDataToJson(_FatwaListData instance) =>
    <String, dynamic>{
      'child_category': instance.childCategory,
      'fatwas': instance.fatwas,
    };

_FatwaListFatwas _$FatwaListFatwasFromJson(Map<String, dynamic> json) =>
    _FatwaListFatwas(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => AdvisoryItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : FatwaListPagination.fromJson(
              json['pagination'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$FatwaListFatwasToJson(_FatwaListFatwas instance) =>
    <String, dynamic>{'data': instance.data, 'pagination': instance.pagination};

_FatwaListCategory _$FatwaListCategoryFromJson(Map<String, dynamic> json) =>
    _FatwaListCategory(
      catId: _stringToInt(json['cat_id']),
      catFatherId: _intToString(json['cat_father_id']),
      catTitle: json['cat_title'] as String?,
      catNote: json['cat_note'] as String?,
      catPic: json['cat_pic'] as String?,
      catPos: _intToString(json['cat_pos']),
      catActive: _intToString(json['cat_active']),
    );

Map<String, dynamic> _$FatwaListCategoryToJson(_FatwaListCategory instance) =>
    <String, dynamic>{
      'cat_id': instance.catId,
      'cat_father_id': instance.catFatherId,
      'cat_title': instance.catTitle,
      'cat_note': instance.catNote,
      'cat_pic': instance.catPic,
      'cat_pos': instance.catPos,
      'cat_active': instance.catActive,
    };

_FatwaListPagination _$FatwaListPaginationFromJson(Map<String, dynamic> json) =>
    _FatwaListPagination(
      currentPage: (json['current_page'] as num?)?.toInt(),
      lastPage: (json['last_page'] as num?)?.toInt(),
      perPage: (json['per_page'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      from: (json['from'] as num?)?.toInt(),
      to: (json['to'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FatwaListPaginationToJson(
  _FatwaListPagination instance,
) => <String, dynamic>{
  'current_page': instance.currentPage,
  'last_page': instance.lastPage,
  'per_page': instance.perPage,
  'total': instance.total,
  'from': instance.from,
  'to': instance.to,
};

_FatwaListMeta _$FatwaListMetaFromJson(Map<String, dynamic> json) =>
    _FatwaListMeta(
      sortBy: json['sort_by'] as String?,
      sortOrder: json['sort_order'] as String?,
      totalFatwas: (json['total_fatwas'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FatwaListMetaToJson(_FatwaListMeta instance) =>
    <String, dynamic>{
      'sort_by': instance.sortBy,
      'sort_order': instance.sortOrder,
      'total_fatwas': instance.totalFatwas,
    };
