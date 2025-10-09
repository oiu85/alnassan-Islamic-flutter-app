import 'package:freezed_annotation/freezed_annotation.dart';
import 'advisory_categories_model.dart';

part 'fatwa_list_model.freezed.dart';
part 'fatwa_list_model.g.dart';

@freezed
abstract class FatwaListModel with _$FatwaListModel {
  const factory FatwaListModel({
    String? status,
    FatwaListData? data,
    FatwaListPagination? pagination,
    FatwaListMeta? meta,
  }) = _FatwaListModel;

  factory FatwaListModel.fromJson(Map<String, dynamic> json) =>
      _$FatwaListModelFromJson(json);
}

@freezed
abstract class FatwaListData with _$FatwaListData {
  const factory FatwaListData({
    @JsonKey(name: 'child_category')
    FatwaListCategory? childCategory,
    @JsonKey(name: 'fatwas')
    FatwaListFatwas? fatwas,
  }) = _FatwaListData;

  factory FatwaListData.fromJson(Map<String, dynamic> json) =>
      _$FatwaListDataFromJson(json);
}

@freezed
abstract class FatwaListFatwas with _$FatwaListFatwas {
  const factory FatwaListFatwas({
    @JsonKey(name: 'data')
    List<AdvisoryItem>? data,
    @JsonKey(name: 'pagination')
    FatwaListPagination? pagination,
  }) = _FatwaListFatwas;

  factory FatwaListFatwas.fromJson(Map<String, dynamic> json) =>
      _$FatwaListFatwasFromJson(json);
}

@freezed
abstract class FatwaListCategory with _$FatwaListCategory {
  const factory FatwaListCategory({
    @JsonKey(name: 'cat_id', fromJson: _stringToInt) int? catId,
    @JsonKey(name: 'cat_father_id', fromJson: _intToString) String? catFatherId,
    @JsonKey(name: 'cat_title') String? catTitle,
    @JsonKey(name: 'cat_note') String? catNote,
    @JsonKey(name: 'cat_pic') String? catPic,
    @JsonKey(name: 'cat_pos', fromJson: _intToString) String? catPos,
    @JsonKey(name: 'cat_active', fromJson: _intToString) String? catActive,
  }) = _FatwaListCategory;

  factory FatwaListCategory.fromJson(Map<String, dynamic> json) =>
      _$FatwaListCategoryFromJson(json);
}

@freezed
abstract class FatwaListPagination with _$FatwaListPagination {
  const factory FatwaListPagination({
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'last_page') int? lastPage,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'total') int? total,
    @JsonKey(name: 'from') int? from,
    @JsonKey(name: 'to') int? to,
  }) = _FatwaListPagination;

  factory FatwaListPagination.fromJson(Map<String, dynamic> json) =>
      _$FatwaListPaginationFromJson(json);
}

@freezed
abstract class FatwaListMeta with _$FatwaListMeta {
  const factory FatwaListMeta({
    @JsonKey(name: 'sort_by') String? sortBy,
    @JsonKey(name: 'sort_order') String? sortOrder,
    @JsonKey(name: 'total_fatwas') int? totalFatwas,
  }) = _FatwaListMeta;

  factory FatwaListMeta.fromJson(Map<String, dynamic> json) =>
      _$FatwaListMetaFromJson(json);
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
