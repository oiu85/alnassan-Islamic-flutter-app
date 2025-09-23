import 'package:equatable/equatable.dart';

abstract class ContactEvent extends Equatable {
  const ContactEvent();

  @override
  List<Object?> get props => [];
}

class SubmitContactFormEvent extends ContactEvent {
  final String name;
  final String email;
  final String message;
  final String phone;
  final String country;
  final String captchaCode;

  const SubmitContactFormEvent({
    required this.name,
    required this.email,
    required this.message,
    required this.phone,
    required this.country,
    required this.captchaCode,
  });

  @override
  List<Object?> get props => [name, email, message, phone, country, captchaCode];
}

class GenerateCaptchaEvent extends ContactEvent {
  const GenerateCaptchaEvent();
}

class ValidateFormEvent extends ContactEvent {
  final String name;
  final String email;
  final String message;
  final String phone;
  final String country;
  final String captchaCode;

  const ValidateFormEvent({
    required this.name,
    required this.email,
    required this.message,
    required this.phone,
    required this.country,
    required this.captchaCode,
  });

  @override
  List<Object?> get props => [name, email, message, phone, country, captchaCode];
}

class ClearFormEvent extends ContactEvent {
  const ClearFormEvent();
}
