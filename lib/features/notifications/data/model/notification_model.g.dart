// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) =>
    _NotificationModel(
      status: json['status'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => NotificationItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : NotificationMeta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NotificationModelToJson(_NotificationModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'meta': instance.meta,
    };

_NotificationItem _$NotificationItemFromJson(Map<String, dynamic> json) =>
    _NotificationItem(
      id: (json['id'] as num?)?.toInt(),
      type: json['type'] as String?,
      title: json['title'] as String?,
      message: json['message'] as String?,
      icon: json['icon'] as String?,
      url: json['url'] as String?,
      data: json['data'] == null
          ? null
          : NotificationData.fromJson(json['data'] as Map<String, dynamic>),
      isPublic: json['is_public'] as bool?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$NotificationItemToJson(_NotificationItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'title': instance.title,
      'message': instance.message,
      'icon': instance.icon,
      'url': instance.url,
      'data': instance.data,
      'is_public': instance.isPublic,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_NotificationData _$NotificationDataFromJson(Map<String, dynamic> json) =>
    _NotificationData(
      contentId: (json['content_id'] as num?)?.toInt(),
      contentType: json['content_type'] as String?,
      categoryId: (json['category_id'] as num?)?.toInt(),
      priority: json['priority'] as String?,
      author: json['author'] as String?,
      pages: (json['pages'] as num?)?.toInt(),
    );

Map<String, dynamic> _$NotificationDataToJson(_NotificationData instance) =>
    <String, dynamic>{
      'content_id': instance.contentId,
      'content_type': instance.contentType,
      'category_id': instance.categoryId,
      'priority': instance.priority,
      'author': instance.author,
      'pages': instance.pages,
    };

_NotificationMeta _$NotificationMetaFromJson(Map<String, dynamic> json) =>
    _NotificationMeta(
      pagination: json['pagination'] == null
          ? null
          : NotificationPagination.fromJson(
              json['pagination'] as Map<String, dynamic>,
            ),
      totalCount: (json['total_count'] as num?)?.toInt(),
      deviceId: json['device_id'] as String?,
      responseInfo: json['response_info'] == null
          ? null
          : NotificationResponseInfo.fromJson(
              json['response_info'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$NotificationMetaToJson(_NotificationMeta instance) =>
    <String, dynamic>{
      'pagination': instance.pagination,
      'total_count': instance.totalCount,
      'device_id': instance.deviceId,
      'response_info': instance.responseInfo,
    };

_NotificationPagination _$NotificationPaginationFromJson(
  Map<String, dynamic> json,
) => _NotificationPagination(
  total: (json['total'] as num?)?.toInt(),
  count: (json['count'] as num?)?.toInt(),
  perPage: (json['per_page'] as num?)?.toInt(),
  currentPage: (json['current_page'] as num?)?.toInt(),
  lastPage: (json['last_page'] as num?)?.toInt(),
  from: (json['from'] as num?)?.toInt(),
  to: (json['to'] as num?)?.toInt(),
);

Map<String, dynamic> _$NotificationPaginationToJson(
  _NotificationPagination instance,
) => <String, dynamic>{
  'total': instance.total,
  'count': instance.count,
  'per_page': instance.perPage,
  'current_page': instance.currentPage,
  'last_page': instance.lastPage,
  'from': instance.from,
  'to': instance.to,
};

_NotificationResponseInfo _$NotificationResponseInfoFromJson(
  Map<String, dynamic> json,
) => _NotificationResponseInfo(
  timestamp: json['timestamp'] as String?,
  apiVersion: json['api_version'] as String?,
  endpoint: json['endpoint'] as String?,
  contentType: json['content_type'] as String?,
);

Map<String, dynamic> _$NotificationResponseInfoToJson(
  _NotificationResponseInfo instance,
) => <String, dynamic>{
  'timestamp': instance.timestamp,
  'api_version': instance.apiVersion,
  'endpoint': instance.endpoint,
  'content_type': instance.contentType,
};
