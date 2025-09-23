// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ContactResponse _$ContactResponseFromJson(Map<String, dynamic> json) =>
    _ContactResponse(
      status: json['status'] as String?,
      message: json['message'] as String?,
      success: json['success'] as bool?,
    );

Map<String, dynamic> _$ContactResponseToJson(_ContactResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'success': instance.success,
    };
