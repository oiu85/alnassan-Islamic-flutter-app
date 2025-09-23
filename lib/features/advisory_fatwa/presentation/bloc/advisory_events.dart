import 'package:equatable/equatable.dart';

abstract class AdvisoryEvent extends Equatable {
  const AdvisoryEvent();

  @override
  List<Object?> get props => [];
}

class FetchRecentAdvisoriesEvent extends AdvisoryEvent {
  const FetchRecentAdvisoriesEvent();
}

class FetchPopularAdvisoriesEvent extends AdvisoryEvent {
  const FetchPopularAdvisoriesEvent();
}

class SubmitAdvisoryEvent extends AdvisoryEvent {
  final String advisoryQuestion;
  final String advisorySenderName;
  final String advisorySenderEmail;
  final String captchaCode;

  const SubmitAdvisoryEvent({
    required this.advisoryQuestion,
    required this.advisorySenderName,
    required this.advisorySenderEmail,
    required this.captchaCode,
  });

  @override
  List<Object?> get props => [advisoryQuestion, advisorySenderName, advisorySenderEmail, captchaCode];
}

class GenerateAdvisoryCaptchaEvent extends AdvisoryEvent {
  const GenerateAdvisoryCaptchaEvent();
}

class ValidateAdvisoryFormEvent extends AdvisoryEvent {
  final String advisoryQuestion;
  final String advisorySenderName;
  final String advisorySenderEmail;
  final String captchaCode;

  const ValidateAdvisoryFormEvent({
    required this.advisoryQuestion,
    required this.advisorySenderName,
    required this.advisorySenderEmail,
    required this.captchaCode,
  });

  @override
  List<Object?> get props => [advisoryQuestion, advisorySenderName, advisorySenderEmail, captchaCode];
}

class ClearAdvisoryFormEvent extends AdvisoryEvent {
  const ClearAdvisoryFormEvent();
}