import 'package:equatable/equatable.dart';

class ContactRequest extends Equatable {
  final String name;
  final String email;
  final String message;
  final String phone;
  final String country;

  const ContactRequest({
    required this.name,
    required this.email,
    required this.message,
    required this.phone,
    required this.country,
  });

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'message': message,
      'phone': phone,
      'country': country,
    };
  }

  @override
  List<Object?> get props => [name, email, message, phone, country];
}
