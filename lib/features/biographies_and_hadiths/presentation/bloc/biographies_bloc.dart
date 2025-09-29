import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/logger/app_logger.dart';
import '../../../../core/models/page_state/bloc_status.dart';
import '../../../../core/shared/wdigets/filter_button.dart';
import '../../domain/biographies_repository.dart';
import '../../data/model.dart'; // Import for ArticleDetailModel
import 'biographies_event.dart';
import 'biographies_state.dart';
// ===== HTML VIEWER IMPORTS =====
import '../../../html_viewer/domain/models/html_content.dart';

class BiographiesBloc extends Bloc<BiographiesEvent, BiographiesState> {
  final BiographiesRepository _biographiesRepository;

  BiographiesBloc(this._biographiesRepository) : super(const BiographiesState()) {
    on<FetchBiographiesArticlesEvent>(_onFetchBiographiesArticles);
    on<ChangePageEvent>(_onChangePage);
    on<FetchArticleDetailEvent>(_onFetchArticleDetail);
    on<ArticleCardClickEvent>(_onArticleCardClick);
    on<MarkArticleNavigatedEvent>(_onMarkArticleNavigated);
  }

  // ===== FILTER BUTTON LOGIC =====
  /// Returns filter button options for pagination
  List<Map<String, dynamic>> getFilterButtonOptions() {
    final List<Map<String, dynamic>> options = [];
    
    // Add page options if there are multiple pages
    if (state.totalPages > 1) {
      for (int i = 1; i <= state.totalPages; i++) {
        options.add({
          'value': 'page_$i',
          'label': '$i',
        });
      }
    }
    
    return options;
  }

  /// Returns whether filter button should be shown
  bool shouldShowFilterButton() {
    return state.totalPages > 1;
  }

  /// Returns the current selected page value for filter button
  String getCurrentPageValue() {
    return 'page_${state.currentPage}';
  }

  /// Returns the hint text for filter button
  String getFilterButtonHintText() {
    return '${state.currentPage}';
  }

  /// Builds the complete filter button widget
  Widget buildFilterButton({
    required BuildContext context,
    required int categoryId,
    required int perPage,
  }) {
    // Use BLoC methods to get filter button data
    if (!shouldShowFilterButton()) {
      return const SizedBox.shrink();
    }
    
    final options = getFilterButtonOptions().map((option) => 
      FilterOption<String>(
        value: option['value'] as String,
        label: option['label'] as String,
      )
    ).toList();
    
    return FilterButton<String>(
      options: options,
      selectedValue: getCurrentPageValue(),
      label: 'اختر الصفحة',
      onChanged: state.status.isLoading() ? null : (value) {
        if (value != null && value.startsWith('page_')) {
          final page = int.parse(value.split('_')[1]);
          add(
            ChangePageEvent(
              categoryId: categoryId,
              page: page,
              perPage: perPage,
            ),
          );
        }
      },
      width: 60,
      hintText: getFilterButtonHintText(),
    );
  }

  // ===== ARTICLE DETAIL TO HTML CONTENT MAPPER =====
  /// Converts ArticleDetailModel to HtmlContent for the HTML viewer
  HtmlContent _mapArticleDetailToHtmlContent(ArticleDetailModel articleDetail) {
    final data = articleDetail.data;
    return HtmlContent(
      title: data?.articleTitle ?? 'عنوان غير متوفر',
      htmlContent: data?.articleDes ?? '',
      summary: data?.articleSummary,
      description: data?.articleDes,
      articleId: data?.articleId,
      categoryId: data?.articleCatId?.toString(),
      imageUrl: data?.articlePic,
      date: data?.articleDate,
    );
  }

  // ===== CARD CLICK HANDLER =====
  /// Handles article card click - validates article and triggers detail fetch
  /// This business logic belongs in the BLoC layer, not the UI layer
  Future<void> _onArticleCardClick(
    ArticleCardClickEvent event,
    Emitter<BiographiesState> emit,
  ) async {
    // Validate article has required ID
    if (event.article.articleId == null) {
      emit(state.copyWith(
        articleDetailStatus: const BlocStatus.fail(error: 'Article ID missing'),
        articleDetailError: 'خطأ: معرف المقال غير متوفر',
      ));
      return;
    }

    // Set loading state for article detail
    emit(state.copyWith(
      articleDetailStatus: const BlocStatus.loading(),
      articleDetail: null,
      htmlContent: null,
      articleDetailError: null,
      loadingArticleId: event.article.articleId,
      hasNavigatedToArticle: false,
    ));

    // Trigger article detail fetch
    add(FetchArticleDetailEvent(articleId: event.article.articleId!));
  }

  Future<void> _onFetchBiographiesArticles(
    FetchBiographiesArticlesEvent event,
    Emitter<BiographiesState> emit,
  ) async {
    AppLogger.business('Initiating biographies data fetch', {'status': state.status.toString()});
    
    emit(state.copyWith(
      status: const BlocStatus.loading(),
      hasReachedMax: false,
    ));

    final result = await _biographiesRepository.getBiographiesArticles(
      categoryId: event.categoryId,
      page: event.page,
      perPage: event.perPage,
    );

    result.fold(
      // Left side - Error case
      (error) {
        AppLogger.error('Biographies fetch error: $error');
        emit(
          state.copyWith(
            status: BlocStatus.fail(error: error),
          ),
        );
      },
      // Right side - Success case
      (biographiesModel) {
        // Log the response for debugging
        AppLogger.apiResponse('BiographiesBloc - Processed Model', biographiesModel);

        // Check if we have valid data
        if (biographiesModel.data == null) {
          AppLogger.error('No data in response');
          emit(
            state.copyWith(
              status: const BlocStatus.fail(
                error: 'Invalid response format',
              ),
            ),
          );
          return;
        }

        // Get the first category (should contain our articles)
        final categories = biographiesModel.data?.categories;
        if (categories == null || categories.isEmpty) {
          AppLogger.warning('No articles found');
          emit(
            state.copyWith(
              status: const BlocStatus.fail(
                error: 'No categories found',
              ),
            ),
          );
          return;
        }

        final firstCategory = categories.first;
        final articles = firstCategory.articles;
        
        if (articles == null || articles.isEmpty) {
          AppLogger.warning('No articles found');
          emit(
            state.copyWith(
              status: const BlocStatus.fail(
                error: 'No articles found',
              ),
            ),
          );
          return;
        }

        final newArticles = articles;
        // Get pagination from the category instead of meta
        final pagination = firstCategory.pagination;
        final totalPages = pagination?.lastPage ?? 1;
        final totalItems = pagination?.total ?? 0;
        final hasReachedMax = newArticles.length < event.perPage;

        AppLogger.business('Biographies data fetch successful', {'articlesCount': newArticles.length});
        emit(
          state.copyWith(
            status: const BlocStatus.success(),
            biographiesData: biographiesModel,
            articles: newArticles,
            currentPage: event.page,
            perPage: event.perPage,
            totalPages: totalPages,
            totalItems: totalItems,
            hasReachedMax: hasReachedMax,
          ),
        );
      },
    );
  }


  Future<void> _onChangePage(
    ChangePageEvent event,
    Emitter<BiographiesState> emit,
  ) async {
    add(FetchBiographiesArticlesEvent(
      categoryId: event.categoryId,
      page: event.page,
      perPage: event.perPage,
    ));
  }

  // ===== ARTICLE DETAIL HANDLER =====
  Future<void> _onFetchArticleDetail(
    FetchArticleDetailEvent event,
    Emitter<BiographiesState> emit,
  ) async {
    AppLogger.business('Initiating article detail fetch', {'status': state.articleDetailStatus.toString()});

    emit(state.copyWith(
      articleDetailStatus: const BlocStatus.loading(),
      articleDetail: null,
      htmlContent: null,
      articleDetailError: null,
      loadingArticleId: event.articleId,
      hasNavigatedToArticle: false,
    ));

    final result = await _biographiesRepository.getArticleDetail(
      articleId: event.articleId,
    );

    result.fold(
      // Left side - Error case
      (error) {
        AppLogger.error('Article detail fetch error: $error');
        emit(state.copyWith(
          articleDetailStatus: const BlocStatus.fail(error: 'Network error'),
          articleDetailError: 'Network error: $error',
          loadingArticleId: null,
        ));
      },
      // Right side - Success case
      (articleDetailModel) {
        if (articleDetailModel.data == null) {
          AppLogger.warning('No article data received');
          emit(state.copyWith(
            articleDetailStatus: const BlocStatus.fail(error: 'No article data received'),
            articleDetailError: 'No article data received',
            loadingArticleId: null,
          ));
          return;
        }

        // Map the article detail to HTML content
        final htmlContent = _mapArticleDetailToHtmlContent(articleDetailModel);
        
        AppLogger.business('Article detail fetch successful', {'articleId': event.articleId});
        emit(
          state.copyWith(
            articleDetailStatus: const BlocStatus.success(),
            articleDetail: articleDetailModel,
            htmlContent: htmlContent, // Set the mapped HTML content
            articleDetailError: null,
            loadingArticleId: null,
          ),
        );
      },
    );
  }

  // ===== NAVIGATION MARKER =====
  Future<void> _onMarkArticleNavigated(
    MarkArticleNavigatedEvent event,
    Emitter<BiographiesState> emit,
  ) async {
    emit(state.copyWith(
      hasNavigatedToArticle: true,
    ));
  }

}
