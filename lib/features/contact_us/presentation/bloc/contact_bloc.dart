import 'dart:math';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/models/page_state/bloc_status.dart';
import '../../domain/repository/contact_repository.dart';
import '../../domain/model/contact_request.dart';
import 'contact_events.dart';
import 'contact_state.dart';

@injectable
class ContactBloc extends Bloc<ContactEvent, ContactState> {
  final ContactRepository _repository;

  ContactBloc(this._repository) : super(const ContactState()) {
    on<SubmitContactFormEvent>(_onSubmitContactForm);
    on<SubmitFormEvent>(_onSubmitForm);
    on<ValidateFormEvent>(_onValidateForm);
    on<ResetContactFormEvent>(_onResetContactForm);
    on<GenerateCaptchaEvent>(_onGenerateCaptcha);
    on<UpdateFormValidationEvent>(_onUpdateFormValidation);
    on<GetSuccessMessageEvent>(_onGetSuccessMessage);
  }

  Future<void> _onSubmitContactForm(
    SubmitContactFormEvent event,
    Emitter<ContactState> emit,
  ) async {
    emit(state.copyWith(status: const BlocStatus.loading()));

    try {
      final response = await _repository.submitContactForm(event.request);
      emit(state.copyWith(
        status: const BlocStatus.success(),
        response: response,
      ));
    } catch (e) {
      String errorMessage = 'عذراً، حدث خطأ غير متوقع. يرجى المحاولة مرة أخرى';
      
      // Handle specific DioException errors with friendly messages
      if (e.toString().contains('422')) {
        errorMessage = 'يرجى التأكد من صحة البيانات المدخلة:\n• الرسالة يجب أن تكون 10 أحرف على الأقل\n• تأكد من صحة البريد الإلكتروني';
      } else if (e.toString().contains('400')) {
        errorMessage = 'البيانات المدخلة غير صحيحة. يرجى التحقق من:\n• صحة البريد الإلكتروني\n• صحة رقم الهاتف\n• طول الرسالة';
      } else if (e.toString().contains('401')) {
        errorMessage = 'انتهت صلاحية الجلسة. يرجى إعادة المحاولة';
      } else if (e.toString().contains('403')) {
        errorMessage = 'ليس لديك صلاحية لإرسال الرسالة';
      } else if (e.toString().contains('404')) {
        errorMessage = 'خدمة الاتصال غير متاحة حالياً';
      } else if (e.toString().contains('500')) {
        errorMessage = 'عذراً، حدث خطأ في الخادم. يرجى المحاولة لاحقاً أو التواصل مع الدعم الفني';
      } else if (e.toString().contains('timeout')) {
        errorMessage = 'انتهت مهلة الاتصال. يرجى التحقق من الإنترنت والمحاولة مرة أخرى';
      } else if (e.toString().contains('network') || e.toString().contains('connection') || e.toString().contains('No internet')) {
        errorMessage = 'لا يوجد اتصال بالإنترنت. يرجى:\n• التحقق من اتصال الإنترنت\n• إعادة المحاولة';
      } else if (e.toString().contains('The message field must be at least 10 characters')) {
        errorMessage = 'الرسالة قصيرة جداً. يرجى كتابة رسالة أطول (10 أحرف على الأقل)';
      } else if (e.toString().contains('Validation failed')) {
        errorMessage = 'يرجى التحقق من صحة البيانات المدخلة وإعادة المحاولة';
      }
      
      emit(state.copyWith(
        status: BlocStatus.fail(error: errorMessage),
        error: errorMessage,
      ));
    }
  }

  void _onResetContactForm(
    ResetContactFormEvent event,
    Emitter<ContactState> emit,
  ) {
    emit(const ContactState());
  }

  void _onGenerateCaptcha(
    GenerateCaptchaEvent event,
    Emitter<ContactState> emit,
  ) {
    final random = Random();
    final captchaCode = (1000 + random.nextInt(9000)).toString();
    emit(state.copyWith(captchaCode: captchaCode));
  }

  void _onUpdateFormValidation(
    UpdateFormValidationEvent event,
    Emitter<ContactState> emit,
  ) {
    emit(state.copyWith(
      isFormValid: event.isFormValid,
      isCaptchaValid: event.isCaptchaValid,
    ));
  }

  void _onValidateForm(
    ValidateFormEvent event,
    Emitter<ContactState> emit,
  ) {
    final isFormValid = _validateFormFields(
      event.name,
      event.email,
      event.phone,
      event.country,
      event.message,
    );

    final isCaptchaValid = event.captcha == state.captchaCode;

    emit(state.copyWith(
      isFormValid: isFormValid,
      isCaptchaValid: isCaptchaValid,
    ));
  }

  Future<void> _onSubmitForm(
    SubmitFormEvent event,
    Emitter<ContactState> emit,
  ) async {
    // Validate form before submission
    final isFormValid = _validateFormFields(
      event.name,
      event.email,
      event.phone,
      event.country,
      event.message,
    );

    if (!isFormValid) {
      emit(state.copyWith(
        status: BlocStatus.fail(
          error: 'يرجى ملء جميع الحقول المطلوبة بشكل صحيح',
        ),
        error: 'يرجى ملء جميع الحقول المطلوبة بشكل صحيح',
      ));
      return;
    }

    // Create request and submit
    final request = ContactRequest(
      name: event.name.trim(),
      email: event.email.trim(),
      phone: event.phone.trim(),
      country: event.country.trim(),
      message: event.message.trim(),
    );

    emit(state.copyWith(status: const BlocStatus.loading()));

    try {
      final response = await _repository.submitContactForm(request);
      emit(state.copyWith(
        status: const BlocStatus.success(),
        response: response,
      ));
    } catch (e) {
      String errorMessage = 'عذراً، حدث خطأ غير متوقع. يرجى المحاولة مرة أخرى';
      
      // Handle specific DioException errors with friendly messages
      if (e.toString().contains('422')) {
        errorMessage = 'يرجى التأكد من صحة البيانات المدخلة:\n• الرسالة يجب أن تكون 10 أحرف على الأقل\n• تأكد من صحة البريد الإلكتروني';
      } else if (e.toString().contains('400')) {
        errorMessage = 'البيانات المدخلة غير صحيحة. يرجى التحقق من:\n• صحة البريد الإلكتروني\n• صحة رقم الهاتف\n• طول الرسالة';
      } else if (e.toString().contains('401')) {
        errorMessage = 'انتهت صلاحية الجلسة. يرجى إعادة المحاولة';
      } else if (e.toString().contains('403')) {
        errorMessage = 'ليس لديك صلاحية لإرسال الرسالة';
      } else if (e.toString().contains('404')) {
        errorMessage = 'خدمة الاتصال غير متاحة حالياً';
      } else if (e.toString().contains('500')) {
        errorMessage = 'عذراً، حدث خطأ في الخادم. يرجى المحاولة لاحقاً أو التواصل مع الدعم الفني';
      } else if (e.toString().contains('timeout')) {
        errorMessage = 'انتهت مهلة الاتصال. يرجى التحقق من الإنترنت والمحاولة مرة أخرى';
      } else if (e.toString().contains('network') || e.toString().contains('connection') || e.toString().contains('No internet')) {
        errorMessage = 'لا يوجد اتصال بالإنترنت. يرجى:\n• التحقق من اتصال الإنترنت\n• إعادة المحاولة';
      } else if (e.toString().contains('The message field must be at least 10 characters')) {
        errorMessage = 'الرسالة قصيرة جداً. يرجى كتابة رسالة أطول (10 أحرف على الأقل)';
      } else if (e.toString().contains('Validation failed')) {
        errorMessage = 'يرجى التحقق من صحة البيانات المدخلة وإعادة المحاولة';
      }
      
      emit(state.copyWith(
        status: BlocStatus.fail(error: errorMessage),
        error: errorMessage,
      ));
    }
  }

  bool _validateFormFields(
    String name,
    String email,
    String phone,
    String country,
    String message,
  ) {
    return name.trim().isNotEmpty &&
        name.trim().length >= 2 &&
        email.trim().isNotEmpty &&
        _isValidEmail(email.trim()) &&
        phone.trim().isNotEmpty &&
        phone.trim().length >= 8 &&
        country.trim().isNotEmpty &&
        country.trim().length >= 2 &&
        message.trim().isNotEmpty &&
        message.trim().length >= 10;
  }

  bool _isValidEmail(String email) {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }

  void _onGetSuccessMessage(
    GetSuccessMessageEvent event,
    Emitter<ContactState> emit,
  ) {
    final messages = [
      'تم إرسال رسالتك بنجاح! سنتواصل معك قريباً',
      'شكراً لك! تم إرسال رسالتك وسنرد عليك في أقرب وقت',
      'ممتاز! رسالتك وصلت إلينا بنجاح',
      'تم إرسال رسالتك! سنكون سعداء بالتواصل معك',
      'شكراً لثقتك بنا! سنتواصل معك قريباً',
    ];
    final randomMessage = messages[DateTime.now().millisecond % messages.length];
    emit(state.copyWith(successMessage: randomMessage));
  }
}
