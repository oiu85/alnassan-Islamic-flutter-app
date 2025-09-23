import 'package:equatable/equatable.dart';

class AdvisorySubmissionRequest extends Equatable {
  final String advisoryQuestion;
  final String advisorySenderName;
  final String advisorySenderEmail;

  const AdvisorySubmissionRequest({
    required this.advisoryQuestion,
    required this.advisorySenderName,
    required this.advisorySenderEmail,
  });

  Map<String, dynamic> toJson() {
    return {
      'advisory_question': advisoryQuestion,
      'advisory_sender_name': advisorySenderName,
      'advisory_sender_email': advisorySenderEmail,
    };
  }

  @override
  List<Object?> get props => [advisoryQuestion, advisorySenderName, advisorySenderEmail];
}
