import 'package:equatable/equatable.dart';

import '../../../../core/models/page_state/bloc_status.dart';
import '../../data/model.dart';
// ===== HTML VIEWER IMPORTS =====
import '../../../html_viewer/domain/models/html_content.dart';

class BiographiesState extends Equatable {
  final BlocStatus status;
  final BiographiesAndHadithsModel? biographiesData;
  final List<BiographiesArticle> articles;
  final int currentPage;
  final int perPage;
  final int totalPages;
  final int totalItems;
  final bool hasReachedMax;
  final String? error;
  
  // ===== ARTICLE DETAIL STATE =====
  final BlocStatus articleDetailStatus;
  final ArticleDetailModel? articleDetail;
  final HtmlContent? htmlContent; // Mapped HTML content ready for viewer
  final String? articleDetailError;

  const BiographiesState({
    this.status = const BlocStatus.initial(),
    this.biographiesData,
    this.articles = const [],
    this.currentPage = 1,
    this.perPage = 2, // Fixed to 2 items per page
    this.totalPages = 1,
    this.totalItems = 0,
    this.hasReachedMax = false,
    this.error,
    this.articleDetailStatus = const BlocStatus.initial(),
    this.articleDetail,
    this.htmlContent,
    this.articleDetailError,
  });

  BiographiesState copyWith({
    BlocStatus? status,
    BiographiesAndHadithsModel? biographiesData,
    List<BiographiesArticle>? articles,
    int? currentPage,
    int? perPage,
    int? totalPages,
    int? totalItems,
    bool? hasReachedMax,
    String? error,
    BlocStatus? articleDetailStatus,
    ArticleDetailModel? articleDetail,
    HtmlContent? htmlContent,
    String? articleDetailError,
  }) {
    return BiographiesState(
      status: status ?? this.status,
      biographiesData: biographiesData ?? this.biographiesData,
      articles: articles ?? this.articles,
      currentPage: currentPage ?? this.currentPage,
      perPage: perPage ?? this.perPage,
      totalPages: totalPages ?? this.totalPages,
      totalItems: totalItems ?? this.totalItems,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      error: error ?? this.error,
      articleDetailStatus: articleDetailStatus ?? this.articleDetailStatus,
      articleDetail: articleDetail ?? this.articleDetail,
      htmlContent: htmlContent ?? this.htmlContent,
      articleDetailError: articleDetailError ?? this.articleDetailError,
    );
  }

  @override
  List<Object?> get props => [
        status,
        biographiesData,
        articles,
        currentPage,
        perPage,
        totalPages,
        totalItems,
        hasReachedMax,
        error,
        articleDetailStatus,
        articleDetail,
        htmlContent,
        articleDetailError,
      ];
}
