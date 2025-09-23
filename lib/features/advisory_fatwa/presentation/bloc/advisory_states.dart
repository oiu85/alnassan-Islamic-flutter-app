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
  final String? successMessage;
  final bool isFormValid;
  final String captchaCode;
  final bool isCaptchaValid;

  const AdvisoryState({
    this.recentStatus = const BlocStatus.initial(),
    this.popularStatus = const BlocStatus.initial(),
    this.submissionStatus = const BlocStatus.initial(),
    this.recentAdvisories = const [],
    this.popularAdvisories = const [],
    this.recentError,
    this.popularError,
    this.submissionError,
    this.successMessage,
    this.isFormValid = false,
    this.captchaCode = '',
    this.isCaptchaValid = false,
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
    String? successMessage,
    bool? isFormValid,
    String? captchaCode,
    bool? isCaptchaValid,
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
      successMessage: successMessage ?? this.successMessage,
      isFormValid: isFormValid ?? this.isFormValid,
      captchaCode: captchaCode ?? this.captchaCode,
      isCaptchaValid: isCaptchaValid ?? this.isCaptchaValid,
    );
  }

  bool get canSubmit => isFormValid && isCaptchaValid && !submissionStatus.isLoading();

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
        successMessage,
        isFormValid,
        captchaCode,
        isCaptchaValid,
      ];
}
