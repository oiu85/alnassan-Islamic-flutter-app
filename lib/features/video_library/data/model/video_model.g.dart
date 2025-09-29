// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VideoResponse _$VideoResponseFromJson(Map<String, dynamic> json) =>
    _VideoResponse(
      status: json['status'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => VideoData.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : VideoMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VideoResponseToJson(_VideoResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'meta': instance.meta,
    };

_VideoData _$VideoDataFromJson(Map<String, dynamic> json) => _VideoData(
  videoId: (json['video_id'] as num).toInt(),
  videoTitle: json['video_title'] as String,
  videoSummary: json['video_summary'] as String,
  videoDes: json['video_des'] as String,
  videoCatId: const IntStringConverter().fromJson(json['video_cat_id']),
  videoPic: json['video_pic'] as String,
  videoVisitor: const IntStringConverter().fromJson(json['video_visitor']),
  videoPriority: const IntStringConverter().fromJson(json['video_priority']),
  videoDate: json['video_date'] as String,
  videoActive: const IntStringConverter().fromJson(json['video_active']),
  videoYoutubeId: json['video_youtube_id'] as String,
  videoFile: const IntStringConverter().fromJson(json['video_file']),
  videoSource: json['video_source'] as String,
  videoSourceUrl: json['video_source_url'] as String,
  videoType: json['video_type'] as String,
  videoEmbedUrl: json['video_embed_url'] as String,
);

Map<String, dynamic> _$VideoDataToJson(
  _VideoData instance,
) => <String, dynamic>{
  'video_id': instance.videoId,
  'video_title': instance.videoTitle,
  'video_summary': instance.videoSummary,
  'video_des': instance.videoDes,
  'video_cat_id': const IntStringConverter().toJson(instance.videoCatId),
  'video_pic': instance.videoPic,
  'video_visitor': const IntStringConverter().toJson(instance.videoVisitor),
  'video_priority': const IntStringConverter().toJson(instance.videoPriority),
  'video_date': instance.videoDate,
  'video_active': const IntStringConverter().toJson(instance.videoActive),
  'video_youtube_id': instance.videoYoutubeId,
  'video_file': const IntStringConverter().toJson(instance.videoFile),
  'video_source': instance.videoSource,
  'video_source_url': instance.videoSourceUrl,
  'video_type': instance.videoType,
  'video_embed_url': instance.videoEmbedUrl,
};

_VideoMeta _$VideoMetaFromJson(Map<String, dynamic> json) => _VideoMeta(
  pagination: json['pagination'] == null
      ? null
      : VideoPagination.fromJson(json['pagination'] as Map<String, dynamic>),
  filters: json['filters'] == null
      ? null
      : VideoFilters.fromJson(json['filters'] as Map<String, dynamic>),
);

Map<String, dynamic> _$VideoMetaToJson(_VideoMeta instance) =>
    <String, dynamic>{
      'pagination': instance.pagination,
      'filters': instance.filters,
    };

_VideoPagination _$VideoPaginationFromJson(Map<String, dynamic> json) =>
    _VideoPagination(
      total: (json['total'] as num).toInt(),
      count: (json['count'] as num).toInt(),
      perPage: (json['per_page'] as num).toInt(),
      currentPage: (json['current_page'] as num).toInt(),
      lastPage: (json['last_page'] as num).toInt(),
      from: (json['from'] as num).toInt(),
      to: (json['to'] as num).toInt(),
    );

Map<String, dynamic> _$VideoPaginationToJson(_VideoPagination instance) =>
    <String, dynamic>{
      'total': instance.total,
      'count': instance.count,
      'per_page': instance.perPage,
      'current_page': instance.currentPage,
      'last_page': instance.lastPage,
      'from': instance.from,
      'to': instance.to,
    };

_VideoFilters _$VideoFiltersFromJson(Map<String, dynamic> json) =>
    _VideoFilters(
      appliedFilters: json['applied_filters'] == null
          ? null
          : VideoAppliedFilters.fromJson(
              json['applied_filters'] as Map<String, dynamic>,
            ),
      availableSorts:
          (json['available_sorts'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$VideoFiltersToJson(_VideoFilters instance) =>
    <String, dynamic>{
      'applied_filters': instance.appliedFilters,
      'available_sorts': instance.availableSorts,
    };

_VideoAppliedFilters _$VideoAppliedFiltersFromJson(Map<String, dynamic> json) =>
    _VideoAppliedFilters(
      sort: json['sort'] as String,
      perpage: json['perpage'] as String,
    );

Map<String, dynamic> _$VideoAppliedFiltersToJson(
  _VideoAppliedFilters instance,
) => <String, dynamic>{'sort': instance.sort, 'perpage': instance.perpage};
