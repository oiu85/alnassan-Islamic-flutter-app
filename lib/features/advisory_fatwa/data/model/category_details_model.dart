import 'package:freezed_annotation/freezed_annotation.dart';

import 'advisory_categories_model.dart';

part 'category_details_model.freezed.dart';
part 'category_details_model.g.dart';

@freezed
abstract class CategoryDetailsModel with _$CategoryDetailsModel {
  const factory CategoryDetailsModel({
    String? status,
    CategoryDetailsData? data,
    Pagination? pagination,
    CategoryDetailsMeta? meta,
  }) = _CategoryDetailsModel;

  factory CategoryDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryDetailsModelFromJson(json);
}

@freezed
abstract class CategoryDetailsData with _$CategoryDetailsData {
  const factory CategoryDetailsData({
    @JsonKey(name: 'parent_category')
    ParentCategory? parentCategory,
    @JsonKey(name: 'children_categories')
    List<ChildCategory>? childrenCategories,
  }) = _CategoryDetailsData;

  factory CategoryDetailsData.fromJson(Map<String, dynamic> json) =>
      _$CategoryDetailsDataFromJson(json);
}

@freezed
abstract class ChildCategory with _$ChildCategory {
  const factory ChildCategory({
    @JsonKey(name: 'cat_id', fromJson: _stringToInt)
    int? catId,
    @JsonKey(name: 'cat_father_id', fromJson: _intToString)
    String? catFatherId,
    @JsonKey(name: 'cat_title')
    String? catTitle,
    @JsonKey(name: 'cat_note')
    String? catNote,
    @JsonKey(name: 'cat_pic')
    String? catPic,
    @JsonKey(name: 'cat_pos', fromJson: _intToString)
    String? catPos,
    @JsonKey(name: 'cat_active', fromJson: _intToString)
    String? catActive,
    List<AdvisoryItem>? fatwas,
    @JsonKey(name: 'fatwas_count')
    int? fatwasCount,
    @JsonKey(name: 'debug_info')
    ChildCategoryDebugInfo? debugInfo,
  }) = _ChildCategory;

  factory ChildCategory.fromJson(Map<String, dynamic> json) =>
      _$ChildCategoryFromJson(json);
}

@freezed
abstract class ChildCategoryDebugInfo with _$ChildCategoryDebugInfo {
  const factory ChildCategoryDebugInfo({
    @JsonKey(name: 'total_fatwas_in_category')
    int? totalFatwasInCategory,
    @JsonKey(name: 'published_fatwas_in_category')
    int? publishedFatwasInCategory,
    @JsonKey(name: 'requested_fatwas_per_child')
    String? requestedFatwasPerChild,
    @JsonKey(name: 'actual_fatwas_returned')
    int? actualFatwasReturned,
  }) = _ChildCategoryDebugInfo;

  factory ChildCategoryDebugInfo.fromJson(Map<String, dynamic> json) =>
      _$ChildCategoryDebugInfoFromJson(json);
}

@freezed
abstract class CategoryDetailsMeta with _$CategoryDetailsMeta {
  const factory CategoryDetailsMeta({
    String? structure,
    @JsonKey(name: 'parent_id')
    String? parentId,
    @JsonKey(name: 'fatwas_per_child')
    String? fatwasPerChild,
    @JsonKey(name: 'total_children_categories')
    int? totalChildrenCategories,
    @JsonKey(name: 'debug_info')
    CategoryDetailsDebugInfo? debugInfo,
  }) = _CategoryDetailsMeta;

  factory CategoryDetailsMeta.fromJson(Map<String, dynamic> json) =>
      _$CategoryDetailsMetaFromJson(json);
}

@freezed
abstract class CategoryDetailsDebugInfo with _$CategoryDetailsDebugInfo {
  const factory CategoryDetailsDebugInfo({
    @JsonKey(name: 'parent_category_found')
    bool? parentCategoryFound,
    @JsonKey(name: 'parent_category_title')
    String? parentCategoryTitle,
    @JsonKey(name: 'children_found')
    int? childrenFound,
    @JsonKey(name: 'total_children_in_parent')
    int? totalChildrenInParent,
    @JsonKey(name: 'query_used')
    String? queryUsed,
  }) = _CategoryDetailsDebugInfo;

  factory CategoryDetailsDebugInfo.fromJson(Map<String, dynamic> json) =>
      _$CategoryDetailsDebugInfoFromJson(json);
}

// Helper function to convert string to int
int? _stringToInt(dynamic value) {
  if (value == null) return null;
  if (value is int) return value;
  if (value is String) return int.tryParse(value);
  return null;
}

// Helper function to convert int to String
String? _intToString(dynamic value) {
  if (value == null) return null;
  if (value is String) return value;
  if (value is int) return value.toString();
  return value.toString();
}
