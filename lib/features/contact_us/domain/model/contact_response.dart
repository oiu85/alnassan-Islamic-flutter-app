import 'package:equatable/equatable.dart';

class ContactResponse extends Equatable {
  final String status;
  final String message;
  final ContactData? data;

  const ContactResponse({
    required this.status,
    required this.message,
    this.data,
  });

  factory ContactResponse.fromJson(Map<String, dynamic> json) {
    return ContactResponse(
      status: json['status'] ?? '',
      message: json['message'] ?? '',
      data: json['data'] != null ? ContactData.fromJson(json['data']) : null,
    );
  }

  bool get isSuccess => status == 'success';

  @override
  List<Object?> get props => [status, message, data];
}

class ContactData extends Equatable {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String country;
  final String message;
  final String submissionDate;
  final String status;

  const ContactData({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.country,
    required this.message,
    required this.submissionDate,
    required this.status,
  });

  factory ContactData.fromJson(Map<String, dynamic> json) {
    return ContactData(
      id: json['id'] ?? 0,
      name: json['name'] ?? '',
      email: json['email'] ?? '',
      phone: json['phone'] ?? '',
      country: json['country'] ?? '',
      message: json['message'] ?? '',
      submissionDate: json['submission_date'] ?? '',
      status: json['status'] ?? '',
    );
  }

  @override
  List<Object?> get props => [id, name, email, phone, country, message, submissionDate, status];
}
