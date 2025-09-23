import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_request.freezed.dart';
part 'contact_request.g.dart';

@freezed
abstract class ContactRequest with _$ContactRequest {
  const factory ContactRequest({
    required String name,
    required String email,
    required String message,
    required String phone,
    required String country,
  }) = _ContactRequest;

  factory ContactRequest.fromJson(Map<String, dynamic> json) =>
      _$ContactRequestFromJson(json);
}
