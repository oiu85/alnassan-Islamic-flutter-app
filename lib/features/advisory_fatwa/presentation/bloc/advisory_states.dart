import 'package:equatable/equatable.dart';

import '../../../../core/models/page_state/bloc_status.dart';
import '../../data/model/advisory_categories_model.dart';

class AdvisoryState extends Equatable {
  final BlocStatus recentStatus;
  final BlocStatus popularStatus;
  final BlocStatus submissionStatus;
  final List<AdvisoryItem> recentAdvisories;
  final List<AdvisoryItem> popularAdvisories;
  final String? recentError;
  final String? popularError;
  final String? submissionError;
  final AdvisorySubmissionResponse? submissionResponse;
  final bool isFormValid;
  final bool isCaptchaValid;
  final String captchaCode;
  final String successMessage;

  const AdvisoryState({
    this.recentStatus = const BlocStatus.initial(),
    this.popularStatus = const BlocStatus.initial(),
    this.submissionStatus = const BlocStatus.initial(),
    this.recentAdvisories = const [],
    this.popularAdvisories = const [],
    this.recentError,
    this.popularError,
    this.submissionError,
    this.submissionResponse,
    this.isFormValid = false,
    this.isCaptchaValid = false,
    this.captchaCode = '',
    this.successMessage = '',
  });

  AdvisoryState copyWith({
    BlocStatus? recentStatus,
    BlocStatus? popularStatus,
    BlocStatus? submissionStatus,
    List<AdvisoryItem>? recentAdvisories,
    List<AdvisoryItem>? popularAdvisories,
    String? recentError,
    String? popularError,
    String? submissionError,
    AdvisorySubmissionResponse? submissionResponse,
    bool? isFormValid,
    bool? isCaptchaValid,
    String? captchaCode,
    String? successMessage,
  }) {
    return AdvisoryState(
      recentStatus: recentStatus ?? this.recentStatus,
      popularStatus: popularStatus ?? this.popularStatus,
      submissionStatus: submissionStatus ?? this.submissionStatus,
      recentAdvisories: recentAdvisories ?? this.recentAdvisories,
      popularAdvisories: popularAdvisories ?? this.popularAdvisories,
      recentError: recentError ?? this.recentError,
      popularError: popularError ?? this.popularError,
      submissionError: submissionError ?? this.submissionError,
      submissionResponse: submissionResponse ?? this.submissionResponse,
      isFormValid: isFormValid ?? this.isFormValid,
      isCaptchaValid: isCaptchaValid ?? this.isCaptchaValid,
      captchaCode: captchaCode ?? this.captchaCode,
      successMessage: successMessage ?? this.successMessage,
    );
  }

  @override
  List<Object?> get props => [
        recentStatus,
        popularStatus,
        submissionStatus,
        recentAdvisories,
        popularAdvisories,
        recentError,
        popularError,
        submissionError,
        submissionResponse,
        isFormValid,
        isCaptchaValid,
        captchaCode,
        successMessage,
      ];
}
