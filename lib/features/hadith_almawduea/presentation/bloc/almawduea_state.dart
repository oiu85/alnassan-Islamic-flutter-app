import 'package:equatable/equatable.dart';

import '../../../../core/models/page_state/bloc_status.dart';
import '../../data/model.dart';
// ===== HTML VIEWER IMPORTS =====
import '../../../html_viewer/domain/models/html_content.dart';

class AlmawdueaState extends Equatable {
  final BlocStatus status;
  final AlmawdueaModel? almawdueaData;
  final List<AlmawdueaArticle> articles;
  final int currentPage;
  final int perPage;
  final int totalPages;
  final int totalItems;
  final bool hasReachedMax;
  final String? error;
  
  // ===== ARTICLE DETAIL STATE =====
  final BlocStatus articleDetailStatus;
  final AlmawdueaArticleDetailModel? articleDetail;
  final HtmlContent? htmlContent; // Mapped HTML content ready for viewer
  final String? articleDetailError;
  final int? loadingArticleId;
  final bool hasNavigatedToArticle;
  
  // ===== EXPAND/COLLAPSE STATE =====
  final Set<int> expandedArticles;

  const AlmawdueaState({
    this.status = const BlocStatus.initial(),
    this.almawdueaData,
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
    this.loadingArticleId,
    this.hasNavigatedToArticle = false,
    this.expandedArticles = const <int>{},
  });

  AlmawdueaState copyWith({
    BlocStatus? status,
    AlmawdueaModel? almawdueaData,
    List<AlmawdueaArticle>? articles,
    int? currentPage,
    int? perPage,
    int? totalPages,
    int? totalItems,
    bool? hasReachedMax,
    String? error,
    BlocStatus? articleDetailStatus,
    AlmawdueaArticleDetailModel? articleDetail,
    HtmlContent? htmlContent,
    String? articleDetailError,
    int? loadingArticleId,
    bool? hasNavigatedToArticle,
    Set<int>? expandedArticles,
  }) {
    return AlmawdueaState(
      status: status ?? this.status,
      almawdueaData: almawdueaData ?? this.almawdueaData,
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
      loadingArticleId: loadingArticleId ?? this.loadingArticleId,
      hasNavigatedToArticle: hasNavigatedToArticle ?? this.hasNavigatedToArticle,
      expandedArticles: expandedArticles ?? this.expandedArticles,
    );
  }

  @override
  List<Object?> get props => [
        status,
        almawdueaData,
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
        loadingArticleId,
        hasNavigatedToArticle,
        expandedArticles,
      ];
}
