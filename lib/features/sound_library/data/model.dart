import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

/// Custom converter that handles both int and String values
class IntStringConverter implements JsonConverter<String, dynamic> {
  const IntStringConverter();

  @override
  String fromJson(dynamic value) {
    if (value is int) {
      return value.toString();
    } else if (value is String) {
      return value;
    }
    return '';
  }

  @override
  dynamic toJson(String value) => value;
}

// ===== NEW HIERARCHICAL API MODELS =====

@freezed
abstract class HierarchicalSoundResponse with _$HierarchicalSoundResponse {
  const factory HierarchicalSoundResponse({
    required String status,
    required HierarchicalSoundData data,
    HierarchicalPagination? pagination,
  }) = _HierarchicalSoundResponse;

  factory HierarchicalSoundResponse.fromJson(Map<String, dynamic> json) =>
      _$HierarchicalSoundResponseFromJson(json);
}

@freezed
abstract class HierarchicalSoundData with _$HierarchicalSoundData {
  const factory HierarchicalSoundData({
    @JsonKey(name: 'level_1_root_categories') required List<Level1RootCategory> level1RootCategories,
  }) = _HierarchicalSoundData;

  factory HierarchicalSoundData.fromJson(Map<String, dynamic> json) =>
      _$HierarchicalSoundDataFromJson(json);
}

@freezed
abstract class Level1RootCategory with _$Level1RootCategory {
  const factory Level1RootCategory({
    @JsonKey(name: 'cat_id') required int catId,
    @JsonKey(name: 'cat_father_id') required int catFatherId,
    @JsonKey(name: 'cat_title') required String catTitle,
    @JsonKey(name: 'cat_note') String? catNote,
    @JsonKey(name: 'cat_pic') String? catPic,
    @JsonKey(name: 'cat_pos') @IntStringConverter() required String catPos,
    @JsonKey(name: 'cat_active') required bool catActive,
    @JsonKey(name: 'direct_sounds_count') @IntStringConverter() required String directSoundsCount,
    @JsonKey(name: 'subtree_sounds_count') int? subtreeSoundsCount,
    @JsonKey(name: 'direct_sounds') @Default([]) List<SoundData> directSounds,
    @JsonKey(name: 'direct_sounds_pagination') PaginationData? directSoundsPagination,
    @JsonKey(name: 'level_2_children') @Default([]) List<Level2Category> level2Children,
    @JsonKey(name: 'level_2_children_pagination') PaginationData? level2ChildrenPagination,
  }) = _Level1RootCategory;

  factory Level1RootCategory.fromJson(Map<String, dynamic> json) =>
      _$Level1RootCategoryFromJson(json);
}

@freezed
abstract class Level2Category with _$Level2Category {
  const factory Level2Category({
    @JsonKey(name: 'cat_id') required int catId,
    @JsonKey(name: 'cat_father_id') required int catFatherId,
    @JsonKey(name: 'cat_title') required String catTitle,
    @JsonKey(name: 'cat_note') String? catNote,
    @JsonKey(name: 'cat_pic') String? catPic,
    @JsonKey(name: 'cat_pos') @IntStringConverter() required String catPos,
    @JsonKey(name: 'cat_active') required bool catActive,
    @JsonKey(name: 'direct_sounds_count') @IntStringConverter() required String directSoundsCount,
    @JsonKey(name: 'subtree_sounds_count') int? subtreeSoundsCount,
    @JsonKey(name: 'direct_sounds') @Default([]) List<SoundData> directSounds,
    @JsonKey(name: 'direct_sounds_pagination') PaginationData? directSoundsPagination,
    @JsonKey(name: 'level_3_grandchildren') @Default([]) List<Level3Category> level3Grandchildren,
    @JsonKey(name: 'level_3_grandchildren_pagination') PaginationData? level3GrandchildrenPagination,
  }) = _Level2Category;

  factory Level2Category.fromJson(Map<String, dynamic> json) =>
      _$Level2CategoryFromJson(json);
}

@freezed
abstract class Level3Category with _$Level3Category {
  const factory Level3Category({
    @JsonKey(name: 'cat_id') required int catId,
    @JsonKey(name: 'cat_father_id') required int catFatherId,
    @JsonKey(name: 'cat_title') required String catTitle,
    @JsonKey(name: 'cat_note') String? catNote,
    @JsonKey(name: 'cat_pic') String? catPic,
    @JsonKey(name: 'cat_pos') @IntStringConverter() required String catPos,
    @JsonKey(name: 'cat_active') required bool catActive,
    @JsonKey(name: 'direct_sounds_count') @IntStringConverter() required String directSoundsCount,
    @JsonKey(name: 'subtree_sounds_count') int? subtreeSoundsCount,
    @JsonKey(name: 'direct_sounds') @Default([]) List<SoundData> directSounds,
    @JsonKey(name: 'direct_sounds_pagination') PaginationData? directSoundsPagination,
    @JsonKey(name: 'level_4_great_grandchildren') @Default([]) List<Level4Category> level4GreatGrandchildren,
  }) = _Level3Category;

  factory Level3Category.fromJson(Map<String, dynamic> json) =>
      _$Level3CategoryFromJson(json);
}

@freezed
abstract class Level4Category with _$Level4Category {
  const factory Level4Category({
    @JsonKey(name: 'cat_id') required int catId,
    @JsonKey(name: 'cat_father_id') required int catFatherId,
    @JsonKey(name: 'cat_title') required String catTitle,
    @JsonKey(name: 'cat_note') String? catNote,
    @JsonKey(name: 'cat_pic') String? catPic,
    @JsonKey(name: 'cat_pos') @IntStringConverter() required String catPos,
    @JsonKey(name: 'cat_active') required bool catActive,
    @JsonKey(name: 'direct_sounds_count') @IntStringConverter() required String directSoundsCount,
    @JsonKey(name: 'subtree_sounds_count') int? subtreeSoundsCount,
    @JsonKey(name: 'direct_sounds') @Default([]) List<SoundData> directSounds,
    @JsonKey(name: 'direct_sounds_pagination') PaginationData? directSoundsPagination,
  }) = _Level4Category;

  factory Level4Category.fromJson(Map<String, dynamic> json) =>
      _$Level4CategoryFromJson(json);
}

@freezed
abstract class SoundData with _$SoundData {
  const factory SoundData({
    @JsonKey(name: 'sound_id') required int soundId,
    @JsonKey(name: 'sound_title') required String soundTitle,
    @JsonKey(name: 'sound_summary') String? soundSummary,
    @JsonKey(name: 'sound_des') String? soundDes,
    @JsonKey(name: 'sound_cat_id') required int soundCatId,
    @JsonKey(name: 'sound_pic') String? soundPic,
    @JsonKey(name: 'sound_visitor') @IntStringConverter() String? soundVisitor,
    @JsonKey(name: 'sound_priority') int? soundPriority,
    @JsonKey(name: 'sound_date') required String soundDate,
    @JsonKey(name: 'sound_file') String? soundFile,
    @JsonKey(name: 'sound_source_url') String? soundSourceUrl,
    @JsonKey(name: 'sound_youtube_id') String? soundYoutubeId,
    @JsonKey(name: 'sound_active') required bool soundActive,
    @JsonKey(name: 'sound_pic_url') String? soundPicUrl,
    @JsonKey(name: 'sound_file_url') String? soundFileUrl,
    CategoryData? category,
  }) = _SoundData;

  factory SoundData.fromJson(Map<String, dynamic> json) =>
      _$SoundDataFromJson(json);
}

@freezed
abstract class CategoryData with _$CategoryData {
  const factory CategoryData({
    @JsonKey(name: 'cat_id') required int catId,
    @JsonKey(name: 'cat_title') required String catTitle,
  }) = _CategoryData;

  factory CategoryData.fromJson(Map<String, dynamic> json) =>
      _$CategoryDataFromJson(json);
}

@freezed
abstract class PaginationData with _$PaginationData {
  const factory PaginationData({
    required int total,
    required int count,
    @JsonKey(name: 'per_page') required int perPage,
    @JsonKey(name: 'current_page') required int currentPage,
    @JsonKey(name: 'last_page') required int lastPage,
    required int? from,
    required int? to,
  }) = _PaginationData;

  factory PaginationData.fromJson(Map<String, dynamic> json) =>
      _$PaginationDataFromJson(json);
}

@freezed
abstract class HierarchicalPagination with _$HierarchicalPagination {
  const factory HierarchicalPagination({
    @JsonKey(name: 'parents_pagination') required PaginationData parentsPagination,
  }) = _HierarchicalPagination;

  factory HierarchicalPagination.fromJson(Map<String, dynamic> json) =>
      _$HierarchicalPaginationFromJson(json);
}

// ===== UTILITY EXTENSION =====

extension SoundDataToSoundItem on SoundData {
  // Utility method to convert SoundData to legacy SoundItem if needed
  Map<String, dynamic> toSoundItemJson() {
    return {
      'sound_id': soundId,
      'sound_title': soundTitle,
      'sound_url': soundFileUrl != null && soundFile != null 
          ? '$soundFileUrl$soundFile' 
          : null,
      'sound_description': soundDes,
      'sound_visitor': soundVisitor,
      'sound_date': soundDate,
      'sound_active': soundActive.toString(),
      'sound_cat_id': soundCatId.toString(),
    };
  }
}