// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HierarchicalSoundResponse _$HierarchicalSoundResponseFromJson(
  Map<String, dynamic> json,
) => _HierarchicalSoundResponse(
  status: json['status'] as String,
  data: HierarchicalSoundData.fromJson(json['data'] as Map<String, dynamic>),
  pagination: json['pagination'] == null
      ? null
      : HierarchicalPagination.fromJson(
          json['pagination'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$HierarchicalSoundResponseToJson(
  _HierarchicalSoundResponse instance,
) => <String, dynamic>{
  'status': instance.status,
  'data': instance.data,
  'pagination': instance.pagination,
};

_HierarchicalSoundData _$HierarchicalSoundDataFromJson(
  Map<String, dynamic> json,
) => _HierarchicalSoundData(
  level1RootCategories: (json['level_1_root_categories'] as List<dynamic>)
      .map((e) => Level1RootCategory.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$HierarchicalSoundDataToJson(
  _HierarchicalSoundData instance,
) => <String, dynamic>{
  'level_1_root_categories': instance.level1RootCategories,
};

_Level1RootCategory _$Level1RootCategoryFromJson(Map<String, dynamic> json) =>
    _Level1RootCategory(
      catId: (json['cat_id'] as num).toInt(),
      catFatherId: (json['cat_father_id'] as num).toInt(),
      catTitle: json['cat_title'] as String,
      catNote: json['cat_note'] as String?,
      catPic: json['cat_pic'] as String?,
      catPos: const IntStringConverter().fromJson(json['cat_pos']),
      catActive: json['cat_active'] as bool,
      directSoundsCount: const IntStringConverter().fromJson(
        json['direct_sounds_count'],
      ),
      subtreeSoundsCount: (json['subtree_sounds_count'] as num?)?.toInt(),
      directSounds:
          (json['direct_sounds'] as List<dynamic>?)
              ?.map((e) => SoundData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      directSoundsPagination: json['direct_sounds_pagination'] == null
          ? null
          : PaginationData.fromJson(
              json['direct_sounds_pagination'] as Map<String, dynamic>,
            ),
      level2Children:
          (json['level_2_children'] as List<dynamic>?)
              ?.map((e) => Level2Category.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      level2ChildrenPagination: json['level_2_children_pagination'] == null
          ? null
          : PaginationData.fromJson(
              json['level_2_children_pagination'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$Level1RootCategoryToJson(_Level1RootCategory instance) =>
    <String, dynamic>{
      'cat_id': instance.catId,
      'cat_father_id': instance.catFatherId,
      'cat_title': instance.catTitle,
      'cat_note': instance.catNote,
      'cat_pic': instance.catPic,
      'cat_pos': const IntStringConverter().toJson(instance.catPos),
      'cat_active': instance.catActive,
      'direct_sounds_count': const IntStringConverter().toJson(
        instance.directSoundsCount,
      ),
      'subtree_sounds_count': instance.subtreeSoundsCount,
      'direct_sounds': instance.directSounds,
      'direct_sounds_pagination': instance.directSoundsPagination,
      'level_2_children': instance.level2Children,
      'level_2_children_pagination': instance.level2ChildrenPagination,
    };

_Level2Category _$Level2CategoryFromJson(Map<String, dynamic> json) =>
    _Level2Category(
      catId: (json['cat_id'] as num).toInt(),
      catFatherId: (json['cat_father_id'] as num).toInt(),
      catTitle: json['cat_title'] as String,
      catNote: json['cat_note'] as String?,
      catPic: json['cat_pic'] as String?,
      catPos: const IntStringConverter().fromJson(json['cat_pos']),
      catActive: json['cat_active'] as bool,
      directSoundsCount: const IntStringConverter().fromJson(
        json['direct_sounds_count'],
      ),
      subtreeSoundsCount: (json['subtree_sounds_count'] as num?)?.toInt(),
      directSounds:
          (json['direct_sounds'] as List<dynamic>?)
              ?.map((e) => SoundData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      directSoundsPagination: json['direct_sounds_pagination'] == null
          ? null
          : PaginationData.fromJson(
              json['direct_sounds_pagination'] as Map<String, dynamic>,
            ),
      level3Grandchildren:
          (json['level_3_grandchildren'] as List<dynamic>?)
              ?.map((e) => Level3Category.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      level3GrandchildrenPagination:
          json['level_3_grandchildren_pagination'] == null
          ? null
          : PaginationData.fromJson(
              json['level_3_grandchildren_pagination'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$Level2CategoryToJson(
  _Level2Category instance,
) => <String, dynamic>{
  'cat_id': instance.catId,
  'cat_father_id': instance.catFatherId,
  'cat_title': instance.catTitle,
  'cat_note': instance.catNote,
  'cat_pic': instance.catPic,
  'cat_pos': const IntStringConverter().toJson(instance.catPos),
  'cat_active': instance.catActive,
  'direct_sounds_count': const IntStringConverter().toJson(
    instance.directSoundsCount,
  ),
  'subtree_sounds_count': instance.subtreeSoundsCount,
  'direct_sounds': instance.directSounds,
  'direct_sounds_pagination': instance.directSoundsPagination,
  'level_3_grandchildren': instance.level3Grandchildren,
  'level_3_grandchildren_pagination': instance.level3GrandchildrenPagination,
};

_Level3Category _$Level3CategoryFromJson(Map<String, dynamic> json) =>
    _Level3Category(
      catId: (json['cat_id'] as num).toInt(),
      catFatherId: (json['cat_father_id'] as num).toInt(),
      catTitle: json['cat_title'] as String,
      catNote: json['cat_note'] as String?,
      catPic: json['cat_pic'] as String?,
      catPos: const IntStringConverter().fromJson(json['cat_pos']),
      catActive: json['cat_active'] as bool,
      directSoundsCount: const IntStringConverter().fromJson(
        json['direct_sounds_count'],
      ),
      subtreeSoundsCount: (json['subtree_sounds_count'] as num?)?.toInt(),
      directSounds:
          (json['direct_sounds'] as List<dynamic>?)
              ?.map((e) => SoundData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      directSoundsPagination: json['direct_sounds_pagination'] == null
          ? null
          : PaginationData.fromJson(
              json['direct_sounds_pagination'] as Map<String, dynamic>,
            ),
      level4GreatGrandchildren:
          (json['level_4_great_grandchildren'] as List<dynamic>?)
              ?.map((e) => Level4Category.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$Level3CategoryToJson(_Level3Category instance) =>
    <String, dynamic>{
      'cat_id': instance.catId,
      'cat_father_id': instance.catFatherId,
      'cat_title': instance.catTitle,
      'cat_note': instance.catNote,
      'cat_pic': instance.catPic,
      'cat_pos': const IntStringConverter().toJson(instance.catPos),
      'cat_active': instance.catActive,
      'direct_sounds_count': const IntStringConverter().toJson(
        instance.directSoundsCount,
      ),
      'subtree_sounds_count': instance.subtreeSoundsCount,
      'direct_sounds': instance.directSounds,
      'direct_sounds_pagination': instance.directSoundsPagination,
      'level_4_great_grandchildren': instance.level4GreatGrandchildren,
    };

_Level4Category _$Level4CategoryFromJson(Map<String, dynamic> json) =>
    _Level4Category(
      catId: (json['cat_id'] as num).toInt(),
      catFatherId: (json['cat_father_id'] as num).toInt(),
      catTitle: json['cat_title'] as String,
      catNote: json['cat_note'] as String?,
      catPic: json['cat_pic'] as String?,
      catPos: const IntStringConverter().fromJson(json['cat_pos']),
      catActive: json['cat_active'] as bool,
      directSoundsCount: const IntStringConverter().fromJson(
        json['direct_sounds_count'],
      ),
      subtreeSoundsCount: (json['subtree_sounds_count'] as num?)?.toInt(),
      directSounds:
          (json['direct_sounds'] as List<dynamic>?)
              ?.map((e) => SoundData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      directSoundsPagination: json['direct_sounds_pagination'] == null
          ? null
          : PaginationData.fromJson(
              json['direct_sounds_pagination'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$Level4CategoryToJson(_Level4Category instance) =>
    <String, dynamic>{
      'cat_id': instance.catId,
      'cat_father_id': instance.catFatherId,
      'cat_title': instance.catTitle,
      'cat_note': instance.catNote,
      'cat_pic': instance.catPic,
      'cat_pos': const IntStringConverter().toJson(instance.catPos),
      'cat_active': instance.catActive,
      'direct_sounds_count': const IntStringConverter().toJson(
        instance.directSoundsCount,
      ),
      'subtree_sounds_count': instance.subtreeSoundsCount,
      'direct_sounds': instance.directSounds,
      'direct_sounds_pagination': instance.directSoundsPagination,
    };

_SoundData _$SoundDataFromJson(Map<String, dynamic> json) => _SoundData(
  soundId: (json['sound_id'] as num).toInt(),
  soundTitle: json['sound_title'] as String,
  soundSummary: json['sound_summary'] as String?,
  soundDes: json['sound_des'] as String?,
  soundCatId: (json['sound_cat_id'] as num).toInt(),
  soundPic: json['sound_pic'] as String?,
  soundVisitor: const IntStringConverter().fromJson(json['sound_visitor']),
  soundPriority: (json['sound_priority'] as num?)?.toInt(),
  soundDate: json['sound_date'] as String,
  soundFile: json['sound_file'] as String?,
  soundSourceUrl: json['sound_source_url'] as String?,
  soundYoutubeId: json['sound_youtube_id'] as String?,
  soundActive: json['sound_active'] as bool,
  soundPicUrl: json['sound_pic_url'] as String?,
  soundFileUrl: json['sound_file_url'] as String?,
  category: json['category'] == null
      ? null
      : CategoryData.fromJson(json['category'] as Map<String, dynamic>),
);

Map<String, dynamic> _$SoundDataToJson(_SoundData instance) =>
    <String, dynamic>{
      'sound_id': instance.soundId,
      'sound_title': instance.soundTitle,
      'sound_summary': instance.soundSummary,
      'sound_des': instance.soundDes,
      'sound_cat_id': instance.soundCatId,
      'sound_pic': instance.soundPic,
      'sound_visitor': _$JsonConverterToJson<dynamic, String>(
        instance.soundVisitor,
        const IntStringConverter().toJson,
      ),
      'sound_priority': instance.soundPriority,
      'sound_date': instance.soundDate,
      'sound_file': instance.soundFile,
      'sound_source_url': instance.soundSourceUrl,
      'sound_youtube_id': instance.soundYoutubeId,
      'sound_active': instance.soundActive,
      'sound_pic_url': instance.soundPicUrl,
      'sound_file_url': instance.soundFileUrl,
      'category': instance.category,
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) => value == null ? null : toJson(value);

_CategoryData _$CategoryDataFromJson(Map<String, dynamic> json) =>
    _CategoryData(
      catId: (json['cat_id'] as num).toInt(),
      catTitle: json['cat_title'] as String,
    );

Map<String, dynamic> _$CategoryDataToJson(_CategoryData instance) =>
    <String, dynamic>{'cat_id': instance.catId, 'cat_title': instance.catTitle};

_PaginationData _$PaginationDataFromJson(Map<String, dynamic> json) =>
    _PaginationData(
      total: (json['total'] as num).toInt(),
      count: (json['count'] as num).toInt(),
      perPage: (json['per_page'] as num).toInt(),
      currentPage: (json['current_page'] as num).toInt(),
      lastPage: (json['last_page'] as num).toInt(),
      from: (json['from'] as num?)?.toInt(),
      to: (json['to'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PaginationDataToJson(_PaginationData instance) =>
    <String, dynamic>{
      'total': instance.total,
      'count': instance.count,
      'per_page': instance.perPage,
      'current_page': instance.currentPage,
      'last_page': instance.lastPage,
      'from': instance.from,
      'to': instance.to,
    };

_HierarchicalPagination _$HierarchicalPaginationFromJson(
  Map<String, dynamic> json,
) => _HierarchicalPagination(
  parentsPagination: PaginationData.fromJson(
    json['parents_pagination'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$HierarchicalPaginationToJson(
  _HierarchicalPagination instance,
) => <String, dynamic>{'parents_pagination': instance.parentsPagination};
