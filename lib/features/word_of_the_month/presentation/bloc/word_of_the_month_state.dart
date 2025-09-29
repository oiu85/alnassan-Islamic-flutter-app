import 'package:equatable/equatable.dart';

import '../../../../core/models/page_state/bloc_status.dart';
import '../../data/model/word_of_the_month_model.dart';
// ===== HTML VIEWER IMPORTS =====
import '../../../html_viewer/domain/models/html_content.dart';

class WordOfTheMonthState extends Equatable {
  final BlocStatus status;
  final WordOfTheMonthModel? wordOfTheMonthData;
  final List<WordOfTheMonthArticle> articles;
  final int currentPage;
  final bool hasReachedMax;
  final String? error;
  
  // Article Detail State
  final BlocStatus articleDetailStatus;
  final WordOfTheMonthArticle? selectedArticle;
  final bool hasNavigatedToArticle;
  final int? loadingArticleId;
  final Set<int> expandedArticles;

  const WordOfTheMonthState({
    this.status = const BlocStatus.initial(),
    this.wordOfTheMonthData,
    this.articles = const [],
    this.currentPage = 1,
    this.hasReachedMax = false,
    this.error,
    this.articleDetailStatus = const BlocStatus.initial(),
    this.selectedArticle,
    this.hasNavigatedToArticle = false,
    this.loadingArticleId,
    this.expandedArticles = const {},
  });

  WordOfTheMonthState copyWith({
    BlocStatus? status,
    WordOfTheMonthModel? wordOfTheMonthData,
    List<WordOfTheMonthArticle>? articles,
    int? currentPage,
    bool? hasReachedMax,
    String? error,
    BlocStatus? articleDetailStatus,
    WordOfTheMonthArticle? selectedArticle,
    bool? hasNavigatedToArticle,
    int? loadingArticleId,
    Set<int>? expandedArticles,
  }) {
    return WordOfTheMonthState(
      status: status ?? this.status,
      wordOfTheMonthData: wordOfTheMonthData ?? this.wordOfTheMonthData,
      articles: articles ?? this.articles,
      currentPage: currentPage ?? this.currentPage,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      error: error ?? this.error,
      articleDetailStatus: articleDetailStatus ?? this.articleDetailStatus,
      selectedArticle: selectedArticle ?? this.selectedArticle,
      hasNavigatedToArticle: hasNavigatedToArticle ?? this.hasNavigatedToArticle,
      loadingArticleId: loadingArticleId ?? this.loadingArticleId,
      expandedArticles: expandedArticles ?? this.expandedArticles,
    );
  }

  @override
  List<Object?> get props => [
        status,
        wordOfTheMonthData,
        articles,
        currentPage,
        hasReachedMax,
        error,
        articleDetailStatus,
        selectedArticle,
        hasNavigatedToArticle,
        loadingArticleId,
        expandedArticles,
      ];

  // ===== HTML CONTENT MAPPER =====
  /// Converts WordOfTheMonthArticle to HtmlContent for the HTML viewer
  HtmlContent? get htmlContent {
    if (selectedArticle == null) return null;
    
    return HtmlContent(
      title: selectedArticle!.articleTitle ?? 'Untitled',
      htmlContent: selectedArticle!.articleDes ?? '',
      summary: selectedArticle!.articleSummary,
      description: selectedArticle!.articleDes,
      articleId: selectedArticle!.articleId,
      categoryId: selectedArticle!.articleCatId,
      imageUrl: selectedArticle!.articlePic,
      date: selectedArticle!.articleDate,
    );
  }
}

