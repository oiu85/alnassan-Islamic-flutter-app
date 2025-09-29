import 'dart:math';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/features/advisory_fatwa/data/model/advisory_categories_model.dart';

import '../../../../core/models/page_state/bloc_status.dart';
import '../../domain/repository/advisory_categories_repository.dart';
import 'advisory_events.dart';
import 'advisory_states.dart';

class AdvisoryBloc extends Bloc<AdvisoryEvent, AdvisoryState> {
  final AdvisoryCategoriesRepository _repository;

  AdvisoryBloc(this._repository) : super(const AdvisoryState()) {
    on<FetchRecentAdvisoriesEvent>(_onFetchRecentAdvisories);
    on<FetchPopularAdvisoriesEvent>(_onFetchPopularAdvisories);
    on<SubmitAdvisoryQuestionEvent>(_onSubmitAdvisoryQuestion);
    on<ResetAdvisorySubmissionEvent>(_onResetAdvisorySubmission);
    on<ValidateAdvisoryFormEvent>(_onValidateAdvisoryForm);
    on<GenerateAdvisoryCaptchaEvent>(_onGenerateAdvisoryCaptcha);
  }

  Future<void> _onFetchRecentAdvisories(
    FetchRecentAdvisoriesEvent event,
    Emitter<AdvisoryState> emit,
  ) async {
    emit(state.copyWith(recentStatus: const BlocStatus.loading()));

    final result = await _repository.getRecentAdvisories();

    result.fold(
      (error) {
        emit(state.copyWith(
          recentStatus: BlocStatus.fail(error: error),
          recentError: error,
        ));
      },
      (model) {
        final advisories = model.data ?? [];
        emit(state.copyWith(
          recentStatus: const BlocStatus.success(),
          recentAdvisories: advisories,
          recentError: null,
        ));
      },
    );
  }

  Future<void> _onFetchPopularAdvisories(
    FetchPopularAdvisoriesEvent event,
    Emitter<AdvisoryState> emit,
  ) async {
    emit(state.copyWith(popularStatus: const BlocStatus.loading()));

    final result = await _repository.getPopularAdvisories();

    result.fold(
      (error) {
        emit(state.copyWith(
          popularStatus: BlocStatus.fail(error: error),
          popularError: error,
        ));
      },
      (model) {
        final advisories = model.data ?? [];
        emit(state.copyWith(
          popularStatus: const BlocStatus.success(),
          popularAdvisories: advisories,
          popularError: null,
        ));
      },
    );
  }

  Future<void> _onSubmitAdvisoryQuestion(
    SubmitAdvisoryQuestionEvent event,
    Emitter<AdvisoryState> emit,
  ) async {
    // Validate form before submission
    final isFormValid = _validateAdvisoryForm(
      event.question,
      event.senderName,
      event.senderEmail,
    );

    if (!isFormValid) {
      emit(state.copyWith(
        submissionStatus: BlocStatus.fail(
          error: 'يرجى ملء جميع الحقول المطلوبة بشكل صحيح',
        ),
        submissionError: 'يرجى ملء جميع الحقول المطلوبة بشكل صحيح',
      ));
      return;
    }

    emit(state.copyWith(submissionStatus: const BlocStatus.loading()));

    final request = AdvisorySubmissionRequest(
      advisoryQuestion: event.question.trim(),
      advisorySenderName: event.senderName.trim(),
      advisorySenderEmail: event.senderEmail.trim(),
    );

    final result = await _repository.submitAdvisoryQuestion(request);

    result.fold(
      (error) {
        emit(state.copyWith(
          submissionStatus: BlocStatus.fail(error: error),
          submissionError: error,
        ));
      },
      (response) {
        final messages = [
          'تم إرسال سؤالك بنجاح! سنتواصل معك قريباً',
          'شكراً لك! تم إرسال سؤالك وسنرد عليك في أقرب وقت',
          'ممتاز! سؤالك وصل إلينا بنجاح',
          'تم إرسال سؤالك! سنكون سعداء بالتواصل معك',
          'شكراً لثقتك بنا! سنتواصل معك قريباً',
        ];
        final randomMessage = messages[DateTime.now().millisecond % messages.length];
        
        emit(state.copyWith(
          submissionStatus: const BlocStatus.success(),
          submissionResponse: response,
          submissionError: null,
          successMessage: randomMessage,
        ));
      },
    );
  }

  void _onResetAdvisorySubmission(
    ResetAdvisorySubmissionEvent event,
    Emitter<AdvisoryState> emit,
  ) {
    emit(state.copyWith(
      submissionStatus: const BlocStatus.initial(),
      submissionError: null,
      submissionResponse: null,
      isFormValid: false,
      successMessage: '',
    ));
  }

  void _onValidateAdvisoryForm(
    ValidateAdvisoryFormEvent event,
    Emitter<AdvisoryState> emit,
  ) {
    final isFormValid = _validateAdvisoryForm(
      event.question,
      event.senderName,
      event.senderEmail,
    );

    final isCaptchaValid = event.captcha == state.captchaCode;

    emit(state.copyWith(
      isFormValid: isFormValid,
      isCaptchaValid: isCaptchaValid,
    ));
  }

  void _onGenerateAdvisoryCaptcha(
    GenerateAdvisoryCaptchaEvent event,
    Emitter<AdvisoryState> emit,
  ) {
    final random = Random();
    final captchaCode = (1000 + random.nextInt(9000)).toString();
    emit(state.copyWith(captchaCode: captchaCode));
  }

  bool _validateAdvisoryForm(
    String question,
    String senderName,
    String senderEmail,
  ) {
    return question.trim().isNotEmpty &&
        question.trim().length >= 10 &&
        senderName.trim().isNotEmpty &&
        senderName.trim().length >= 2 &&
        senderEmail.trim().isNotEmpty &&
        _isValidEmail(senderEmail.trim());
  }

  bool _isValidEmail(String email) {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }
}
