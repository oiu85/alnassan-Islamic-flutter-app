import 'dart:math';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/models/page_state/bloc_status.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../../domain/model/contact_request.dart';
import '../../domain/repository/contact_repository.dart';
import 'contact_event.dart';
import 'contact_state.dart';

@injectable
class ContactBloc extends Bloc<ContactEvent, ContactState> {
  final ContactRepository _repository;

  ContactBloc(this._repository) : super(const ContactState()) {
    on<SubmitContactFormEvent>(_onSubmitContactForm);
    on<GenerateCaptchaEvent>(_onGenerateCaptcha);
    on<ValidateFormEvent>(_onValidateForm);
    on<ClearFormEvent>(_onClearForm);
  }

  Future<void> _onSubmitContactForm(
    SubmitContactFormEvent event,
    Emitter<ContactState> emit,
  ) async {
    AppLogger.business('Initiating contact form submission', {
      'name': event.name,
      'email': event.email,
      'phone': event.phone,
      'country': event.country,
    });

    emit(state.copyWith(status: const BlocStatus.loading()));

    final request = ContactRequest(
      name: event.name,
      email: event.email,
      message: event.message,
      phone: event.phone,
      country: event.country,
    );

    final result = await _repository.submitContactForm(request);

    result.fold(
      // Left side - Error case
      (error) {
        AppLogger.error('Contact form submission error: $error');
        emit(
          state.copyWith(
            status: BlocStatus.fail(error: error),
            error: error,
          ),
        );
      },
      // Right side - Success case
      (response) {
        AppLogger.apiResponse('ContactBloc - Form submitted successfully', response);
        
        if (response.isSuccess) {
          AppLogger.business('Contact form submission successful', {
            'message': response.message,
            'submissionId': response.data?.id,
          });
          emit(
            state.copyWith(
              status: const BlocStatus.success(),
              successMessage: response.message,
              error: null,
            ),
          );
        } else {
          AppLogger.error('Contact form submission failed: ${response.message}');
          emit(
            state.copyWith(
              status: BlocStatus.fail(error: response.message),
              error: response.message,
            ),
          );
        }
      },
    );
  }

  void _onGenerateCaptcha(
    GenerateCaptchaEvent event,
    Emitter<ContactState> emit,
  ) {
    final random = Random();
    final captchaCode = (1000 + random.nextInt(9000)).toString();
    
    AppLogger.business('Generated new captcha code', {'code': captchaCode});
    
    emit(
      state.copyWith(
        captchaCode: captchaCode,
        isCaptchaValid: false,
      ),
    );
  }

  void _onValidateForm(
    ValidateFormEvent event,
    Emitter<ContactState> emit,
  ) {
    // Validate all fields
    final isNameValid = event.name.trim().isNotEmpty;
    final isEmailValid = _isValidEmail(event.email.trim());
    final isMessageValid = event.message.trim().isNotEmpty;
    final isPhoneValid = event.phone.trim().isNotEmpty;
    final isCountryValid = event.country.trim().isNotEmpty;
    final isCaptchaValid = event.captchaCode.trim() == state.captchaCode;

    final isFormValid = isNameValid && 
                       isEmailValid && 
                       isMessageValid && 
                       isPhoneValid && 
                       isCountryValid;

    AppLogger.business('Form validation completed', {
      'isFormValid': isFormValid,
      'isCaptchaValid': isCaptchaValid,
      'isNameValid': isNameValid,
      'isEmailValid': isEmailValid,
      'isMessageValid': isMessageValid,
      'isPhoneValid': isPhoneValid,
      'isCountryValid': isCountryValid,
    });

    emit(
      state.copyWith(
        isFormValid: isFormValid,
        isCaptchaValid: isCaptchaValid,
      ),
    );
  }

  void _onClearForm(
    ClearFormEvent event,
    Emitter<ContactState> emit,
  ) {
    AppLogger.business('Clearing contact form', {});
    
    // Generate new captcha and reset form state
    final random = Random();
    final captchaCode = (1000 + random.nextInt(9000)).toString();
    
    emit(
      state.copyWith(
        captchaCode: captchaCode,
        isCaptchaValid: false,
        isFormValid: false,
        error: null,
        successMessage: null,
      ),
    );
  }

  bool _isValidEmail(String email) {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }
}
