import 'package:equatable/equatable.dart';

import '../../../../core/models/page_state/bloc_status.dart';
import '../../data/model/advisory_categories_model.dart';

class AdvisoryState extends Equatable {
  final BlocStatus recentStatus;
  final BlocStatus popularStatus;
  final BlocStatus submissionStatus;
  final BlocStatus searchStatus;
  final List<AdvisoryItem> recentAdvisories;
  final List<AdvisoryItem> popularAdvisories;
  final List<AdvisoryItem> searchResults;
  final String? recentError;
  final String? popularError;
  final String? submissionError;
  final String? searchError;
  final AdvisorySubmissionResponse? submissionResponse;
  final bool isFormValid;
  final bool isCaptchaValid;
  final String captchaCode;
  final String successMessage;
  final String? searchQuery;
  final int? searchAdvisoryId;
  final int searchCurrentPage;
  final int searchPerPage;
  final Pagination? searchPagination;

  const AdvisoryState({
    this.recentStatus = const BlocStatus.initial(),
    this.popularStatus = const BlocStatus.initial(),
    this.submissionStatus = const BlocStatus.initial(),
    this.searchStatus = const BlocStatus.initial(),
    this.recentAdvisories = const [],
    this.popularAdvisories = const [],
    this.searchResults = const [],
    this.recentError,
    this.popularError,
    this.submissionError,
    this.searchError,
    this.submissionResponse,
    this.isFormValid = false,
    this.isCaptchaValid = false,
    this.captchaCode = '',
    this.successMessage = '',
    this.searchQuery,
    this.searchAdvisoryId,
    this.searchCurrentPage = 1,
    this.searchPerPage = 10,
    this.searchPagination,
  });

  AdvisoryState copyWith({
    BlocStatus? recentStatus,
    BlocStatus? popularStatus,
    BlocStatus? submissionStatus,
    BlocStatus? searchStatus,
    List<AdvisoryItem>? recentAdvisories,
    List<AdvisoryItem>? popularAdvisories,
    List<AdvisoryItem>? searchResults,
    String? recentError,
    String? popularError,
    String? submissionError,
    String? searchError,
    AdvisorySubmissionResponse? submissionResponse,
    bool? isFormValid,
    bool? isCaptchaValid,
    String? captchaCode,
    String? successMessage,
    String? searchQuery,
    int? searchAdvisoryId,
    int? searchCurrentPage,
    int? searchPerPage,
    Pagination? searchPagination,
  }) {
    return AdvisoryState(
      recentStatus: recentStatus ?? this.recentStatus,
      popularStatus: popularStatus ?? this.popularStatus,
      submissionStatus: submissionStatus ?? this.submissionStatus,
      searchStatus: searchStatus ?? this.searchStatus,
      recentAdvisories: recentAdvisories ?? this.recentAdvisories,
      popularAdvisories: popularAdvisories ?? this.popularAdvisories,
      searchResults: searchResults ?? this.searchResults,
      recentError: recentError ?? this.recentError,
      popularError: popularError ?? this.popularError,
      submissionError: submissionError ?? this.submissionError,
      searchError: searchError ?? this.searchError,
      submissionResponse: submissionResponse ?? this.submissionResponse,
      isFormValid: isFormValid ?? this.isFormValid,
      isCaptchaValid: isCaptchaValid ?? this.isCaptchaValid,
      captchaCode: captchaCode ?? this.captchaCode,
      successMessage: successMessage ?? this.successMessage,
      searchQuery: searchQuery ?? this.searchQuery,
      searchAdvisoryId: searchAdvisoryId ?? this.searchAdvisoryId,
      searchCurrentPage: searchCurrentPage ?? this.searchCurrentPage,
      searchPerPage: searchPerPage ?? this.searchPerPage,
      searchPagination: searchPagination ?? this.searchPagination,
    );
  }

  @override
  List<Object?> get props => [
        recentStatus,
        popularStatus,
        submissionStatus,
        searchStatus,
        recentAdvisories,
        popularAdvisories,
        searchResults,
        recentError,
        popularError,
        submissionError,
        searchError,
        submissionResponse,
        isFormValid,
        isCaptchaValid,
        captchaCode,
        successMessage,
        searchQuery,
        searchAdvisoryId,
        searchCurrentPage,
        searchPerPage,
        searchPagination,
      ];
}
