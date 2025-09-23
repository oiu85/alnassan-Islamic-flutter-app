// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advisory_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdvisoryResponseDto _$AdvisoryResponseDtoFromJson(Map<String, dynamic> json) =>
    AdvisoryResponseDto(
      status: json['status'] as String,
      data: (json['data'] as List<dynamic>)
          .map((e) => AdvisoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AdvisoryResponseDtoToJson(
  AdvisoryResponseDto instance,
) => <String, dynamic>{'status': instance.status, 'data': instance.data};
