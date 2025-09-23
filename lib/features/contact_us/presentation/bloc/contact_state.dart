import 'package:equatable/equatable.dart';
import '../../../../core/models/page_state/bloc_status.dart';
import '../../domain/model/contact_response.dart';

class ContactState extends Equatable {
  final BlocStatus status;
  final ContactResponse? response;
  final String? error;
  final String captchaCode;
  final String enteredCaptcha;
  final bool isFormValid;
  final bool isCaptchaValid;
  final String successMessage;

  const ContactState({
    this.status = const BlocStatus.initial(),
    this.response,
    this.error,
    this.captchaCode = '',
    this.enteredCaptcha = '',
    this.isFormValid = false,
    this.isCaptchaValid = false,
    this.successMessage = '',
  });

  ContactState copyWith({
    BlocStatus? status,
    ContactResponse? response,
    String? error,
    String? captchaCode,
    String? enteredCaptcha,
    bool? isFormValid,
    bool? isCaptchaValid,
    String? successMessage,
  }) {
    return ContactState(
      status: status ?? this.status,
      response: response ?? this.response,
      error: error ?? this.error,
      captchaCode: captchaCode ?? this.captchaCode,
      enteredCaptcha: enteredCaptcha ?? this.enteredCaptcha,
      isFormValid: isFormValid ?? this.isFormValid,
      isCaptchaValid: isCaptchaValid ?? this.isCaptchaValid,
      successMessage: successMessage ?? this.successMessage,
    );
  }

  @override
  List<Object?> get props => [
        status,
        response,
        error,
        captchaCode,
        enteredCaptcha,
        isFormValid,
        isCaptchaValid,
        successMessage,
      ];
}
