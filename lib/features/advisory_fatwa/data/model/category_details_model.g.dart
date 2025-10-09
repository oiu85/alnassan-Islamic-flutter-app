// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CategoryDetailsModel _$CategoryDetailsModelFromJson(
  Map<String, dynamic> json,
) => _CategoryDetailsModel(
  status: json['status'] as String?,
  data: json['data'] == null
      ? null
      : CategoryDetailsData.fromJson(json['data'] as Map<String, dynamic>),
  pagination: json['pagination'] == null
      ? null
      : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
  meta: json['meta'] == null
      ? null
      : CategoryDetailsMeta.fromJson(json['meta'] as Map<String, dynamic>),
);

Map<String, dynamic> _$CategoryDetailsModelToJson(
  _CategoryDetailsModel instance,
) => <String, dynamic>{
  'status': instance.status,
  'data': instance.data,
  'pagination': instance.pagination,
  'meta': instance.meta,
};

_CategoryDetailsData _$CategoryDetailsDataFromJson(Map<String, dynamic> json) =>
    _CategoryDetailsData(
      parentCategory: json['parent_category'] == null
          ? null
          : ParentCategory.fromJson(
              json['parent_category'] as Map<String, dynamic>,
            ),
      childrenCategories: (json['children_categories'] as List<dynamic>?)
          ?.map((e) => ChildCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoryDetailsDataToJson(
  _CategoryDetailsData instance,
) => <String, dynamic>{
  'parent_category': instance.parentCategory,
  'children_categories': instance.childrenCategories,
};

_ChildCategory _$ChildCategoryFromJson(Map<String, dynamic> json) =>
    _ChildCategory(
      catId: _stringToInt(json['cat_id']),
      catFatherId: _intToString(json['cat_father_id']),
      catTitle: json['cat_title'] as String?,
      catNote: json['cat_note'] as String?,
      catPic: json['cat_pic'] as String?,
      catPos: _intToString(json['cat_pos']),
      catActive: _intToString(json['cat_active']),
      fatwas: (json['fatwas'] as List<dynamic>?)
          ?.map((e) => AdvisoryItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      fatwasCount: (json['fatwas_count'] as num?)?.toInt(),
      debugInfo: json['debug_info'] == null
          ? null
          : ChildCategoryDebugInfo.fromJson(
              json['debug_info'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$ChildCategoryToJson(_ChildCategory instance) =>
    <String, dynamic>{
      'cat_id': instance.catId,
      'cat_father_id': instance.catFatherId,
      'cat_title': instance.catTitle,
      'cat_note': instance.catNote,
      'cat_pic': instance.catPic,
      'cat_pos': instance.catPos,
      'cat_active': instance.catActive,
      'fatwas': instance.fatwas,
      'fatwas_count': instance.fatwasCount,
      'debug_info': instance.debugInfo,
    };

_ChildCategoryDebugInfo _$ChildCategoryDebugInfoFromJson(
  Map<String, dynamic> json,
) => _ChildCategoryDebugInfo(
  totalFatwasInCategory: (json['total_fatwas_in_category'] as num?)?.toInt(),
  publishedFatwasInCategory: (json['published_fatwas_in_category'] as num?)
      ?.toInt(),
  requestedFatwasPerChild: json['requested_fatwas_per_child'] as String?,
  actualFatwasReturned: (json['actual_fatwas_returned'] as num?)?.toInt(),
);

Map<String, dynamic> _$ChildCategoryDebugInfoToJson(
  _ChildCategoryDebugInfo instance,
) => <String, dynamic>{
  'total_fatwas_in_category': instance.totalFatwasInCategory,
  'published_fatwas_in_category': instance.publishedFatwasInCategory,
  'requested_fatwas_per_child': instance.requestedFatwasPerChild,
  'actual_fatwas_returned': instance.actualFatwasReturned,
};

_CategoryDetailsMeta _$CategoryDetailsMetaFromJson(Map<String, dynamic> json) =>
    _CategoryDetailsMeta(
      structure: json['structure'] as String?,
      parentId: json['parent_id'] as String?,
      fatwasPerChild: json['fatwas_per_child'] as String?,
      totalChildrenCategories: (json['total_children_categories'] as num?)
          ?.toInt(),
      debugInfo: json['debug_info'] == null
          ? null
          : CategoryDetailsDebugInfo.fromJson(
              json['debug_info'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$CategoryDetailsMetaToJson(
  _CategoryDetailsMeta instance,
) => <String, dynamic>{
  'structure': instance.structure,
  'parent_id': instance.parentId,
  'fatwas_per_child': instance.fatwasPerChild,
  'total_children_categories': instance.totalChildrenCategories,
  'debug_info': instance.debugInfo,
};

_CategoryDetailsDebugInfo _$CategoryDetailsDebugInfoFromJson(
  Map<String, dynamic> json,
) => _CategoryDetailsDebugInfo(
  parentCategoryFound: json['parent_category_found'] as bool?,
  parentCategoryTitle: json['parent_category_title'] as String?,
  childrenFound: (json['children_found'] as num?)?.toInt(),
  totalChildrenInParent: (json['total_children_in_parent'] as num?)?.toInt(),
  queryUsed: json['query_used'] as String?,
);

Map<String, dynamic> _$CategoryDetailsDebugInfoToJson(
  _CategoryDetailsDebugInfo instance,
) => <String, dynamic>{
  'parent_category_found': instance.parentCategoryFound,
  'parent_category_title': instance.parentCategoryTitle,
  'children_found': instance.childrenFound,
  'total_children_in_parent': instance.totalChildrenInParent,
  'query_used': instance.queryUsed,
};
