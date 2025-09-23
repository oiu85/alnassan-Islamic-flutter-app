import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_model.freezed.dart';
part 'video_model.g.dart';

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

// ===== VIDEO API RESPONSE MODELS =====

@freezed
abstract class VideoResponse with _$VideoResponse {
  const factory VideoResponse({
    required String status,
    required List<VideoData> data,
    VideoMeta? meta,
  }) = _VideoResponse;

  factory VideoResponse.fromJson(Map<String, dynamic> json) =>
      _$VideoResponseFromJson(json);
}

@freezed
abstract class VideoData with _$VideoData {
  const factory VideoData({
    @JsonKey(name: 'video_id') required int videoId,
    @JsonKey(name: 'video_title') required String videoTitle,
    @JsonKey(name: 'video_summary') required String videoSummary,
    @JsonKey(name: 'video_des') required String videoDes,
    @JsonKey(name: 'video_cat_id') @IntStringConverter() required String videoCatId,
    @JsonKey(name: 'video_pic') required String videoPic,
    @JsonKey(name: 'video_visitor') @IntStringConverter() required String videoVisitor,
    @JsonKey(name: 'video_priority') @IntStringConverter() required String videoPriority,
    @JsonKey(name: 'video_date') required String videoDate,
    @JsonKey(name: 'video_active') @IntStringConverter() required String videoActive,
    @JsonKey(name: 'video_youtube_id') required String videoYoutubeId,
    @JsonKey(name: 'video_file') @IntStringConverter() required String videoFile,
    @JsonKey(name: 'video_source') required String videoSource,
    @JsonKey(name: 'video_source_url') required String videoSourceUrl,
    @JsonKey(name: 'video_type') required String videoType,
    @JsonKey(name: 'video_embed_url') required String videoEmbedUrl,
  }) = _VideoData;

  factory VideoData.fromJson(Map<String, dynamic> json) =>
      _$VideoDataFromJson(json);
}

@freezed
abstract class VideoMeta with _$VideoMeta {
  const factory VideoMeta({
    VideoPagination? pagination,
    VideoFilters? filters,
  }) = _VideoMeta;

  factory VideoMeta.fromJson(Map<String, dynamic> json) =>
      _$VideoMetaFromJson(json);
}

@freezed
abstract class VideoPagination with _$VideoPagination {
  const factory VideoPagination({
    required int total,
    required int count,
    @JsonKey(name: 'per_page') required int perPage,
    @JsonKey(name: 'current_page') required int currentPage,
    @JsonKey(name: 'last_page') required int lastPage,
    required int from,
    required int to,
  }) = _VideoPagination;

  factory VideoPagination.fromJson(Map<String, dynamic> json) =>
      _$VideoPaginationFromJson(json);
}

@freezed
abstract class VideoFilters with _$VideoFilters {
  const factory VideoFilters({
    @JsonKey(name: 'applied_filters') VideoAppliedFilters? appliedFilters,
    @JsonKey(name: 'available_sorts') @Default([]) List<String> availableSorts,
  }) = _VideoFilters;

  factory VideoFilters.fromJson(Map<String, dynamic> json) =>
      _$VideoFiltersFromJson(json);
}

@freezed
abstract class VideoAppliedFilters with _$VideoAppliedFilters {
  const factory VideoAppliedFilters({
    required String sort,
    required String perpage,
  }) = _VideoAppliedFilters;

  factory VideoAppliedFilters.fromJson(Map<String, dynamic> json) =>
      _$VideoAppliedFiltersFromJson(json);
}
