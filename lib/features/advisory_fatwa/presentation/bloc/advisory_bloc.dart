import 'dart:math';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/repositories/advisory_repository.dart';
import '../../data/models/advisory_submission_request.dart';
import '../../data/models/advisory_model.dart' as models;
import '../../data/model/advisory_categories_model.dart';
import '../../../../core/models/page_state/bloc_status.dart';
import '../../../../core/utils/logger/app_logger.dart';
import 'advisory_events.dart';
import 'advisory_states.dart';

class AdvisoryBloc extends Bloc<AdvisoryEvent, AdvisoryState> {
  final AdvisoryRepository _advisoryRepository;

  AdvisoryBloc(this._advisoryRepository) : super(const AdvisoryState()) {
    on<FetchRecentAdvisoriesEvent>(_onLoadRecentAdvisories);
    on<FetchPopularAdvisoriesEvent>(_onLoadPopularAdvisories);
    on<SubmitAdvisoryEvent>(_onSubmitAdvisory);
    on<GenerateAdvisoryCaptchaEvent>(_onGenerateCaptcha);
    on<ValidateAdvisoryFormEvent>(_onValidateForm);
    on<ClearAdvisoryFormEvent>(_onClearForm);
  }

  Future<void> _onLoadRecentAdvisories(
    FetchRecentAdvisoriesEvent event,
    Emitter<AdvisoryState> emit,
  ) async {
    emit(state.copyWith(recentStatus: const BlocStatus.loading()));

    try {
      final response = await _advisoryRepository.getRecentAdvisories();
      final advisoryItems = response.data.map((model) => _convertToAdvisoryItem(model)).toList();
      emit(state.copyWith(
        recentStatus: const BlocStatus.success(),
        recentAdvisories: advisoryItems,
      ));
    } catch (e) {
      emit(state.copyWith(
        recentStatus: BlocStatus.fail(error: e.toString()),
        recentError: e.toString(),
      ));
    }
  }

  Future<void> _onLoadPopularAdvisories(
    FetchPopularAdvisoriesEvent event,
    Emitter<AdvisoryState> emit,
  ) async {
    emit(state.copyWith(popularStatus: const BlocStatus.loading()));

    try {
      final response = await _advisoryRepository.getPopularAdvisories();
      final advisoryItems = response.data.map((model) => _convertToAdvisoryItem(model)).toList();
      emit(state.copyWith(
        popularStatus: const BlocStatus.success(),
        popularAdvisories: advisoryItems,
      ));
    } catch (e) {
      emit(state.copyWith(
        popularStatus: BlocStatus.fail(error: e.toString()),
        popularError: e.toString(),
      ));
    }
  }

  Future<void> _onSubmitAdvisory(
    SubmitAdvisoryEvent event,
    Emitter<AdvisoryState> emit,
  ) async {
    AppLogger.business('Initiating advisory submission', {
      'question': event.advisoryQuestion,
      'senderName': event.advisorySenderName,
      'senderEmail': event.advisorySenderEmail,
    });

    emit(state.copyWith(submissionStatus: const BlocStatus.loading()));

    final request = AdvisorySubmissionRequest(
      advisoryQuestion: event.advisoryQuestion,
      advisorySenderName: event.advisorySenderName,
      advisorySenderEmail: event.advisorySenderEmail,
    );

    try {
      final response = await _advisoryRepository.submitAdvisory(request);
      
      if (response.isSuccess) {
        AppLogger.business('Advisory submission successful', {
          'message': response.message,
          'submissionId': response.data?.id,
        });
        emit(state.copyWith(
          submissionStatus: const BlocStatus.success(),
          successMessage: response.message,
          submissionError: null,
        ));
      } else {
        AppLogger.error('Advisory submission failed: ${response.message}');
        emit(state.copyWith(
          submissionStatus: BlocStatus.fail(error: response.message),
          submissionError: response.message,
        ));
      }
    } catch (e) {
      AppLogger.error('Advisory submission error: $e');
      emit(state.copyWith(
        submissionStatus: BlocStatus.fail(error: e.toString()),
        submissionError: e.toString(),
      ));
    }
  }

  void _onGenerateCaptcha(
    GenerateAdvisoryCaptchaEvent event,
    Emitter<AdvisoryState> emit,
  ) {
    final random = Random();
    final captchaCode = (1000 + random.nextInt(9000)).toString();
    
    AppLogger.business('Generated new advisory captcha code', {'code': captchaCode});
    
    emit(
      state.copyWith(
        captchaCode: captchaCode,
        isCaptchaValid: false,
      ),
    );
  }

  void _onValidateForm(
    ValidateAdvisoryFormEvent event,
    Emitter<AdvisoryState> emit,
  ) {
    // Validate all fields
    final isQuestionValid = event.advisoryQuestion.trim().isNotEmpty;
    final isNameValid = event.advisorySenderName.trim().isNotEmpty;
    final isEmailValid = _isValidEmail(event.advisorySenderEmail.trim());
    final isCaptchaValid = event.captchaCode.trim() == state.captchaCode;

    final isFormValid = isQuestionValid && isNameValid && isEmailValid;

    AppLogger.business('Advisory form validation completed', {
      'isFormValid': isFormValid,
      'isCaptchaValid': isCaptchaValid,
      'isQuestionValid': isQuestionValid,
      'isNameValid': isNameValid,
      'isEmailValid': isEmailValid,
    });

    emit(
      state.copyWith(
        isFormValid: isFormValid,
        isCaptchaValid: isCaptchaValid,
      ),
    );
  }

  void _onClearForm(
    ClearAdvisoryFormEvent event,
    Emitter<AdvisoryState> emit,
  ) {
    AppLogger.business('Clearing advisory form', {});
    
    // Generate new captcha and reset form state
    final random = Random();
    final captchaCode = (1000 + random.nextInt(9000)).toString();
    
    emit(
      state.copyWith(
        captchaCode: captchaCode,
        isCaptchaValid: false,
        isFormValid: false,
        submissionError: null,
        successMessage: null,
      ),
    );
  }

  bool _isValidEmail(String email) {
    return RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email);
  }

  AdvisoryItem _convertToAdvisoryItem(models.AdvisoryModel model) {
    return AdvisoryItem(
      advisoryId: model.advisoryId,
      advisoryCatId: model.advisoryCatId,
      advisorySoundId: model.advisorySoundId,
      advisoryTitle: model.advisoryTitle,
      advisoryQuestion: model.advisoryQuestion,
      advisoryQuestionDate: model.advisoryQuestionDate,
      advisoryAnswer: model.advisoryAnswer,
      advisoryAnswerDate: model.advisoryAnswerDate,
      advisoryVisitor: model.advisoryVisitor,
      advisoryLastAdvisory: model.advisoryLastAdvisory,
      advisoryPriority: model.advisoryPriority,
      advisoryActiveVote: model.advisoryActiveVote,
      advisoryActiveHint: model.advisoryActiveHint,
      advisoryPic: model.advisoryPic,
      advisoryPicActive: model.advisoryPicActive,
      advisoryPicPos: model.advisoryPicPos,
      advisorySenderName: model.advisorySenderName,
      advisorySenderEmail: model.advisorySenderEmail,
      advisoryPublisherId: model.advisoryPublisherId,
      advisorySource: model.advisorySource,
      advisorySourceUrl: model.advisorySourceUrl,
      advisoryYoutubeId: model.advisoryYoutubeId,
      advisoryFile: model.advisoryFile,
      advisoryUserAddHintNsup: model.advisoryUserAddHintNsup,
      advisoryIsNew: model.advisoryIsNew,
      advisoryActive: model.advisoryActive,
      category: model.category != null ? AdvisoryCategory(
        catId: model.category!.catId,
        catFatherId: model.category!.catFatherId,
        catMenus: model.category!.catMenus,
        catTitle: model.category!.catTitle,
        catNote: model.category!.catNote,
        catPic: model.category!.catPic,
        catSup: model.category!.catSup,
        catDate: model.category!.catDate,
        catPicActive: model.category!.catPicActive,
        catLan: model.category!.catLan,
        catPos: model.category!.catPos,
        catActive: model.category!.catActive,
        catShowMenu: model.category!.catShowMenu,
        catShowMain: model.category!.catShowMain,
        catAgent: model.category!.catAgent,
      ) : null,
    );
  }
}
