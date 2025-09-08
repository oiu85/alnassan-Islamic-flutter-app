import '../../../../core/models/page_state/bloc_status.dart';
import '../../data/model.dart';
import '../../../html_viewer/domain/models/html_content.dart';

class LessonState {
  final BlocStatus status;
  final BlocStatus articleDetailStatus;
  final List<LessonArticle> articles;
  final List<LessonCategoryWithArticles> categories;
  final List<int> allCategoryIds;
  final List<int> loadedCategoryIds;
  final int currentPage;
  final int perPage;
  final int totalPages;
  final int totalItems;
  final bool hasReachedMax;
  final bool isLoadingMore;
  final LessonModel? lessonData;
  final LessonArticleDetailModel? articleDetail;
  final HtmlContent? htmlContent;
  final String? error;
  final String? articleDetailError;
  final int? loadingArticleId;
  final bool hasNavigatedToArticle;
  final int categoriesPerLoad;

  const LessonState({
    this.status = const BlocStatus.initial(),
    this.articleDetailStatus = const BlocStatus.initial(),
    this.articles = const [],
    this.categories = const [],
    this.allCategoryIds = const [],
    this.loadedCategoryIds = const [],
    this.currentPage = 1,
    this.perPage = 2,
    this.totalPages = 1,
    this.totalItems = 0,
    this.hasReachedMax = false,
    this.isLoadingMore = false,
    this.lessonData,
    this.articleDetail,
    this.htmlContent,
    this.error,
    this.articleDetailError,
    this.loadingArticleId,
    this.hasNavigatedToArticle = false,
    this.categoriesPerLoad = 3,
  });

  LessonState copyWith({
    BlocStatus? status,
    BlocStatus? articleDetailStatus,
    List<LessonArticle>? articles,
    List<LessonCategoryWithArticles>? categories,
    List<int>? allCategoryIds,
    List<int>? loadedCategoryIds,
    int? currentPage,
    int? perPage,
    int? totalPages,
    int? totalItems,
    bool? hasReachedMax,
    bool? isLoadingMore,
    LessonModel? lessonData,
    LessonArticleDetailModel? articleDetail,
    HtmlContent? htmlContent,
    String? error,
    String? articleDetailError,
    int? loadingArticleId,
    bool? hasNavigatedToArticle,
    int? categoriesPerLoad,
  }) {
    return LessonState(
      status: status ?? this.status,
      articleDetailStatus: articleDetailStatus ?? this.articleDetailStatus,
      articles: articles ?? this.articles,
      categories: categories ?? this.categories,
      allCategoryIds: allCategoryIds ?? this.allCategoryIds,
      loadedCategoryIds: loadedCategoryIds ?? this.loadedCategoryIds,
      currentPage: currentPage ?? this.currentPage,
      perPage: perPage ?? this.perPage,
      totalPages: totalPages ?? this.totalPages,
      totalItems: totalItems ?? this.totalItems,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      lessonData: lessonData ?? this.lessonData,
      articleDetail: articleDetail ?? this.articleDetail,
      htmlContent: htmlContent ?? this.htmlContent,
      error: error ?? this.error,
      articleDetailError: articleDetailError ?? this.articleDetailError,
      loadingArticleId: loadingArticleId ?? this.loadingArticleId,
      hasNavigatedToArticle: hasNavigatedToArticle ?? this.hasNavigatedToArticle,
      categoriesPerLoad: categoriesPerLoad ?? this.categoriesPerLoad,
    );
  }
}
