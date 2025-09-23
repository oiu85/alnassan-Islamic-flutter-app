import 'package:equatable/equatable.dart';

class AdvisorySubmissionResponse extends Equatable {
  final String status;
  final String message;
  final AdvisorySubmissionData? data;

  const AdvisorySubmissionResponse({
    required this.status,
    required this.message,
    this.data,
  });

  factory AdvisorySubmissionResponse.fromJson(Map<String, dynamic> json) {
    return AdvisorySubmissionResponse(
      status: json['status'] ?? '',
      message: json['message'] ?? '',
      data: json['data'] != null ? AdvisorySubmissionData.fromJson(json['data']) : null,
    );
  }

  bool get isSuccess => status == 'success';

  @override
  List<Object?> get props => [status, message, data];
}

class AdvisorySubmissionData extends Equatable {
  final int id;
  final String question;
  final String senderName;
  final String senderEmail;
  final String submissionDate;
  final String status;

  const AdvisorySubmissionData({
    required this.id,
    required this.question,
    required this.senderName,
    required this.senderEmail,
    required this.submissionDate,
    required this.status,
  });

  factory AdvisorySubmissionData.fromJson(Map<String, dynamic> json) {
    return AdvisorySubmissionData(
      id: json['id'] ?? 0,
      question: json['question'] ?? '',
      senderName: json['sender_name'] ?? '',
      senderEmail: json['sender_email'] ?? '',
      submissionDate: json['submission_date'] ?? '',
      status: json['status'] ?? '',
    );
  }

  @override
  List<Object?> get props => [id, question, senderName, senderEmail, submissionDate, status];
}
