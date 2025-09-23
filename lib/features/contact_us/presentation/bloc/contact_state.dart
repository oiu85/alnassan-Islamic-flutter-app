import 'package:equatable/equatable.dart';
import '../../../../core/models/page_state/bloc_status.dart';

class ContactState extends Equatable {
  final BlocStatus status;
  final String? error;
  final bool isFormValid;
  final String captchaCode;
  final bool isCaptchaValid;
  final String? successMessage;

  const ContactState({
    this.status = const BlocStatus.initial(),
    this.error,
    this.isFormValid = false,
    this.captchaCode = '',
    this.isCaptchaValid = false,
    this.successMessage,
  });

  ContactState copyWith({
    BlocStatus? status,
    String? error,
    bool? isFormValid,
    String? captchaCode,
    bool? isCaptchaValid,
    String? successMessage,
  }) {
    return ContactState(
      status: status ?? this.status,
      error: error ?? this.error,
      isFormValid: isFormValid ?? this.isFormValid,
      captchaCode: captchaCode ?? this.captchaCode,
      isCaptchaValid: isCaptchaValid ?? this.isCaptchaValid,
      successMessage: successMessage ?? this.successMessage,
    );
  }

  bool get canSubmit => isFormValid && isCaptchaValid && !status.isLoading();

  @override
  List<Object?> get props => [
        status,
        error,
        isFormValid,
        captchaCode,
        isCaptchaValid,
        successMessage,
      ];
}
