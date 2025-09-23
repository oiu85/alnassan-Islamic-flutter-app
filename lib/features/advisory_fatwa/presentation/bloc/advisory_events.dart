import 'package:equatable/equatable.dart';

abstract class AdvisoryEvent extends Equatable {
  const AdvisoryEvent();

  @override
  List<Object> get props => [];
}

class FetchRecentAdvisoriesEvent extends AdvisoryEvent {
  const FetchRecentAdvisoriesEvent();
}

class FetchPopularAdvisoriesEvent extends AdvisoryEvent {
  const FetchPopularAdvisoriesEvent();
}

class SubmitAdvisoryQuestionEvent extends AdvisoryEvent {
  final String question;
  final String senderName;
  final String senderEmail;

  const SubmitAdvisoryQuestionEvent({
    required this.question,
    required this.senderName,
    required this.senderEmail,
  });

  @override
  List<Object> get props => [question, senderName, senderEmail];
}

class ResetAdvisorySubmissionEvent extends AdvisoryEvent {
  const ResetAdvisorySubmissionEvent();
}

class ValidateAdvisoryFormEvent extends AdvisoryEvent {
  final String question;
  final String senderName;
  final String senderEmail;
  final String captcha;

  const ValidateAdvisoryFormEvent({
    required this.question,
    required this.senderName,
    required this.senderEmail,
    required this.captcha,
  });

  @override
  List<Object> get props => [question, senderName, senderEmail, captcha];
}

class GenerateAdvisoryCaptchaEvent extends AdvisoryEvent {
  const GenerateAdvisoryCaptchaEvent();
}