import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_response.freezed.dart';
part 'contact_response.g.dart';

@freezed
abstract class ContactResponse with _$ContactResponse {
  const factory ContactResponse({
    String? status,
    String? message,
    bool? success,
  }) = _ContactResponse;

  factory ContactResponse.fromJson(Map<String, dynamic> json) =>
      _$ContactResponseFromJson(json);
}
