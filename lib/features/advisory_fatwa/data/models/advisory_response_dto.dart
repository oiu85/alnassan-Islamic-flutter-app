import 'package:json_annotation/json_annotation.dart';
import 'advisory_model.dart';

part 'advisory_response_dto.g.dart';

@JsonSerializable()
class AdvisoryResponseDto {
  final String status;
  final List<AdvisoryModel> data;

  const AdvisoryResponseDto({
    required this.status,
    required this.data,
  });

  factory AdvisoryResponseDto.fromJson(Map<String, dynamic> json) =>
      _$AdvisoryResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AdvisoryResponseDtoToJson(this);
}
