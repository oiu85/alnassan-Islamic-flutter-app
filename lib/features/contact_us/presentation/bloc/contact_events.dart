import 'package:equatable/equatable.dart';
import '../../domain/model/contact_request.dart';

abstract class ContactEvent extends Equatable {
  const ContactEvent();

  @override
  List<Object?> get props => [];
}

class SubmitContactFormEvent extends ContactEvent {
  final ContactRequest request;

  const SubmitContactFormEvent({required this.request});

  @override
  List<Object?> get props => [request];
}

class ResetContactFormEvent extends ContactEvent {
  const ResetContactFormEvent();
}

class GenerateCaptchaEvent extends ContactEvent {
  const GenerateCaptchaEvent();
}

class UpdateFormValidationEvent extends ContactEvent {
  final bool isFormValid;
  final bool isCaptchaValid;

  const UpdateFormValidationEvent({
    required this.isFormValid,
    required this.isCaptchaValid,
  });

  @override
  List<Object?> get props => [isFormValid, isCaptchaValid];
}

class ValidateFormEvent extends ContactEvent {
  final String name;
  final String email;
  final String phone;
  final String country;
  final String message;
  final String captcha;

  const ValidateFormEvent({
    required this.name,
    required this.email,
    required this.phone,
    required this.country,
    required this.message,
    required this.captcha,
  });

  @override
  List<Object?> get props => [name, email, phone, country, message, captcha];
}

class SubmitFormEvent extends ContactEvent {
  final String name;
  final String email;
  final String phone;
  final String country;
  final String message;

  const SubmitFormEvent({
    required this.name,
    required this.email,
    required this.phone,
    required this.country,
    required this.message,
  });

  @override
  List<Object?> get props => [name, email, phone, country, message];
}

class GetSuccessMessageEvent extends ContactEvent {
  const GetSuccessMessageEvent();
}
