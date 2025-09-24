import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@freezed
abstract class NotificationModel with _$NotificationModel {
  const factory NotificationModel({
    String? status,
    List<NotificationItem>? data,
    NotificationMeta? meta,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$NotificationModelFromJson(json);
}

@freezed
abstract class NotificationItem with _$NotificationItem {
  const factory NotificationItem({
    int? id,
    String? type,
    String? title,
    String? message,
    String? icon,
    String? url,
    NotificationData? data,
    @JsonKey(name: 'is_public') bool? isPublic,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _NotificationItem;

  factory NotificationItem.fromJson(Map<String, dynamic> json) =>
      _$NotificationItemFromJson(json);
}

@freezed
abstract class NotificationData with _$NotificationData {
  const factory NotificationData({
    @JsonKey(name: 'content_id') int? contentId,
    @JsonKey(name: 'content_type') String? contentType,
    @JsonKey(name: 'category_id') int? categoryId,
    String? priority,
    String? author,
    int? pages,
  }) = _NotificationData;

  factory NotificationData.fromJson(Map<String, dynamic> json) =>
      _$NotificationDataFromJson(json);
}

@freezed
abstract class NotificationMeta with _$NotificationMeta {
  const factory NotificationMeta({
    NotificationPagination? pagination,
    @JsonKey(name: 'total_count') int? totalCount,
    @JsonKey(name: 'device_id') String? deviceId,
    @JsonKey(name: 'response_info') NotificationResponseInfo? responseInfo,
  }) = _NotificationMeta;

  factory NotificationMeta.fromJson(Map<String, dynamic> json) =>
      _$NotificationMetaFromJson(json);
}

@freezed
abstract class NotificationPagination with _$NotificationPagination {
  const factory NotificationPagination({
    int? total,
    int? count,
    @JsonKey(name: 'per_page') int? perPage,
    @JsonKey(name: 'current_page') int? currentPage,
    @JsonKey(name: 'last_page') int? lastPage,
    int? from,
    int? to,
  }) = _NotificationPagination;

  factory NotificationPagination.fromJson(Map<String, dynamic> json) =>
      _$NotificationPaginationFromJson(json);
}

@freezed
abstract class NotificationResponseInfo with _$NotificationResponseInfo {
  const factory NotificationResponseInfo({
    String? timestamp,
    @JsonKey(name: 'api_version') String? apiVersion,
    @JsonKey(name: 'endpoint') String? endpoint,
    @JsonKey(name: 'content_type') String? contentType,
  }) = _NotificationResponseInfo;

  factory NotificationResponseInfo.fromJson(Map<String, dynamic> json) =>
      _$NotificationResponseInfoFromJson(json);
}


