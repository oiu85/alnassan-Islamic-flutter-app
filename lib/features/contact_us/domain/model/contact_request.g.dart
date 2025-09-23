// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ContactRequest _$ContactRequestFromJson(Map<String, dynamic> json) =>
    _ContactRequest(
      name: json['name'] as String,
      email: json['email'] as String,
      message: json['message'] as String,
      phone: json['phone'] as String,
      country: json['country'] as String,
    );

Map<String, dynamic> _$ContactRequestToJson(_ContactRequest instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'message': instance.message,
      'phone': instance.phone,
      'country': instance.country,
    };
