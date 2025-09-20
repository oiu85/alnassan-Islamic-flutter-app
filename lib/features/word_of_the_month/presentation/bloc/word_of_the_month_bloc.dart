import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/logger/app_logger.dart';
import '../../../../core/models/page_state/bloc_status.dart';
import '../../../../core/shared/wdigets/filter_button.dart';
import '../../data/repository/word_of_the_month_repository_impl.dart';
import '../../data/model/word_of_the_month_model.dart';
import 'word_of_the_month_event.dart';
import 'word_of_the_month_state.dart';

class WordOfTheMonthBloc extends Bloc<WordOfTheMonthEvent, WordOfTheMonthState> {
  final WordOfTheMonthRepositoryImpl _wordOfTheMonthRepositoryImpl;

  WordOfTheMonthBloc(this._wordOfTheMonthRepositoryImpl) : super(const WordOfTheMonthState()) {
    on<FetchWordOfTheMonthDataEvent>(_onFetchWordOfTheMonthData);
    on<ChangePageEvent>(_onChangePage);
    on<FetchArticleDetailEvent>(_onFetchArticleDetail);
    on<ArticleCardClickEvent>(_onArticleCardClick);
    on<MarkArticleNavigatedEvent>(_onMarkArticleNavigated);
    on<ToggleArticleExpansionEvent>(_onToggleArticleExpansion);
  }

  Future<void> _onFetchWordOfTheMonthData(
    FetchWordOfTheMonthDataEvent event,
    Emitter<WordOfTheMonthState> emit,
  ) async {
    AppLogger.business('Fetching word of the month data', {
      'catId': event.catId,
      'catMenus': event.catMenus,
      'articlesPerPage': event.articlesPerPage,
      'articlesPage': event.articlesPage,
    });
    
    emit(state.copyWith(status: const BlocStatus.loading()));

    final result = await _wordOfTheMonthRepositoryImpl.getWordOfTheMonthData(
      catId: event.catId,
      catMenus: event.catMenus,
      articlesPerPage: event.articlesPerPage,
      articlesPage: event.articlesPage,
    );
    
    result.fold(
      (error) {
        AppLogger.error('Word of the month fetch error: $error');
        emit(
          state.copyWith(
            status: BlocStatus.fail(error: error),
            error: error,
          ),
        );
      },
      (wordOfTheMonthModel) {
        AppLogger.apiResponse('WordOfTheMonthBloc - Processed Model', wordOfTheMonthModel);
        
        if (wordOfTheMonthModel.data == null) {
          AppLogger.error('No data in response');
          emit(
            state.copyWith(
              status: const BlocStatus.fail(
                error: 'Invalid response format',
              ),
              error: 'Invalid response format',
            ),
          );
          return;
        }
        
        if (wordOfTheMonthModel.data?.subCategories == null || 
            wordOfTheMonthModel.data!.subCategories!.isEmpty) {
          AppLogger.warning('No sub categories found');
          emit(
            state.copyWith(
              status: const BlocStatus.fail(
                error: 'No sub categories found',
              ),
              error: 'No sub categories found',
            ),
          );
          return;
        }

        final subCategory = wordOfTheMonthModel.data!.subCategories!.first;
        final articles = subCategory.articles?.data ?? [];

        AppLogger.business('Word of the month data fetch successful', {
          'subCategoryTitle': subCategory.catTitle,
          'articlesCount': articles.length,
        });
        
        emit(
          state.copyWith(
            status: const BlocStatus.success(),
            wordOfTheMonthData: wordOfTheMonthModel,
            articles: articles,
            currentPage: event.articlesPage,
            hasReachedMax: _checkIfReachedMax(wordOfTheMonthModel),
          ),
        );
      },
    );
  }

  Future<void> _onChangePage(
    ChangePageEvent event,
    Emitter<WordOfTheMonthState> emit,
  ) async {
    AppLogger.business('Changing page', {
      'catId': event.catId,
      'catMenus': event.catMenus,
      'articlesPage': event.articlesPage,
      'articlesPerPage': event.articlesPerPage,
    });
    
    emit(state.copyWith(status: const BlocStatus.loading()));

    final result = await _wordOfTheMonthRepositoryImpl.getWordOfTheMonthData(
      catId: event.catId,
      catMenus: event.catMenus,
      articlesPerPage: event.articlesPerPage,
      articlesPage: event.articlesPage,
    );
    
    result.fold(
      (error) {
        AppLogger.error('Change page error: $error');
        emit(
          state.copyWith(
            status: BlocStatus.fail(error: error),
            error: error,
          ),
        );
      },
      (wordOfTheMonthModel) {
        AppLogger.apiResponse('WordOfTheMonthBloc - Change Page Processed Model', wordOfTheMonthModel);
        
        if (wordOfTheMonthModel.data == null) {
          AppLogger.error('No data in response');
          emit(
            state.copyWith(
              status: const BlocStatus.fail(
                error: 'Invalid response format',
              ),
              error: 'Invalid response format',
            ),
          );
          return;
        }
        
        if (wordOfTheMonthModel.data?.subCategories == null || 
            wordOfTheMonthModel.data!.subCategories!.isEmpty) {
          AppLogger.warning('No sub categories found');
          emit(
            state.copyWith(
              status: const BlocStatus.fail(
                error: 'No sub categories found',
              ),
              error: 'No sub categories found',
            ),
          );
          return;
        }

        final subCategory = wordOfTheMonthModel.data!.subCategories!.first;
        final articles = subCategory.articles?.data ?? [];

        AppLogger.business('Page change successful', {
          'subCategoryTitle': subCategory.catTitle,
          'articlesCount': articles.length,
          'page': event.articlesPage,
        });
        
        emit(
          state.copyWith(
            status: const BlocStatus.success(),
            wordOfTheMonthData: wordOfTheMonthModel,
            articles: articles,
            currentPage: event.articlesPage,
            hasReachedMax: _checkIfReachedMax(wordOfTheMonthModel),
          ),
        );
      },
    );
  }

  Future<void> _onFetchArticleDetail(
    FetchArticleDetailEvent event,
    Emitter<WordOfTheMonthState> emit,
  ) async {
    AppLogger.business('Fetching article detail', {
      'articleId': event.articleId,
    });
    
    emit(state.copyWith(
      articleDetailStatus: const BlocStatus.loading(),
      loadingArticleId: event.articleId,
    ));

    // For now, we'll simulate success since we already have the article data
    // In a real implementation, you might want to fetch detailed content
    await Future.delayed(const Duration(milliseconds: 500));
    
    emit(state.copyWith(
      articleDetailStatus: const BlocStatus.success(),
      loadingArticleId: null,
    ));
  }

  void _onArticleCardClick(
    ArticleCardClickEvent event,
    Emitter<WordOfTheMonthState> emit,
  ) {
    AppLogger.business('Article card clicked', {
      'articleId': event.article.articleId,
      'articleTitle': event.article.articleTitle,
    });
    
    emit(
      state.copyWith(
        selectedArticle: event.article,
        hasNavigatedToArticle: false,
      ),
    );
    
    // Trigger article detail fetch
    add(FetchArticleDetailEvent(articleId: event.article.articleId ?? 0));
  }

  void _onMarkArticleNavigated(
    MarkArticleNavigatedEvent event,
    Emitter<WordOfTheMonthState> emit,
  ) {
    emit(state.copyWith(hasNavigatedToArticle: true));
  }

  void _onToggleArticleExpansion(
    ToggleArticleExpansionEvent event,
    Emitter<WordOfTheMonthState> emit,
  ) {
    final newExpandedArticles = Set<int>.from(state.expandedArticles);
    
    if (newExpandedArticles.contains(event.articleId)) {
      newExpandedArticles.remove(event.articleId);
    } else {
      newExpandedArticles.add(event.articleId);
    }
    
    emit(state.copyWith(expandedArticles: newExpandedArticles));
  }

  bool _checkIfReachedMax(WordOfTheMonthModel model) {
    final pagination = model.data?.subCategories?.first.articles?.pagination;
    if (pagination == null) return true;
    
    return pagination.currentPage != null && 
           pagination.lastPage != null && 
           pagination.currentPage! >= pagination.lastPage!;
  }

  // ===== FILTER BUTTON LOGIC =====
  /// Returns filter button options for pagination
  List<Map<String, dynamic>> getFilterButtonOptions() {
    final List<Map<String, dynamic>> options = [];
    
    // Add page options if there are pages available
    if (state.wordOfTheMonthData?.data?.subCategories?.first.articles?.pagination?.lastPage != null) {
      final totalPages = state.wordOfTheMonthData!.data!.subCategories!.first.articles!.pagination!.lastPage!;
      for (int i = 1; i <= totalPages; i++) {
        options.add({
          'value': 'page_$i',
          'label': '$i',
        });
      }
    } else {
      // If no pagination data available yet, show at least current page
      options.add({
        'value': 'page_${state.currentPage}',
        'label': '${state.currentPage}',
      });
    }
    
    return options;
  }

  /// Returns whether filter button should be shown
  bool shouldShowFilterButton() {
    final totalPages = state.wordOfTheMonthData?.data?.subCategories?.first.articles?.pagination?.lastPage;
    return totalPages != null && totalPages > 1;
  }

  /// Returns the current selected page value for filter button
  String getCurrentPageValue() {
    return 'page_${state.currentPage}';
  }

  /// Returns the hint text for filter button
  String getFilterButtonHintText() {
    return '${state.currentPage}';
  }

  /// Returns the total number of pages
  int get totalPages {
    return state.wordOfTheMonthData?.data?.subCategories?.first.articles?.pagination?.lastPage ?? 1;
  }

  /// Builds the complete filter button widget
  Widget buildFilterButton({
    required BuildContext context,
    required int catId,
    required String catMenus,
    required int articlesPerPage,
  }) {
    final options = getFilterButtonOptions().map((option) => 
      FilterOption<String>(
        value: option['value'] as String,
        label: option['label'] as String,
      )
    ).toList();
    
    // Don't show filter button if no options available
    if (options.isEmpty) {
      return const SizedBox.shrink();
    }
    
    return FilterButton<String>(
      options: options,
      selectedValue: getCurrentPageValue(),
      label: 'اختر الصفحة',
      onChanged: state.status.isLoading() ? null : (value) {
        if (value != null && value.startsWith('page_')) {
          try {
            final page = int.parse(value.split('_')[1]);
            // Only trigger page change if it's different from current page
            if (page != state.currentPage && page >= 1 && page <= totalPages) {
              add(
                ChangePageEvent(
                  catId: catId,
                  catMenus: catMenus,
                  articlesPerPage: articlesPerPage,
                  articlesPage: page,
                ),
              );
            }
          } catch (e) {
            AppLogger.error('Invalid page value in filter button: $value', e);
          }
        }
      },
      width: 60,
      hintText: getFilterButtonHintText(),
    );
  }
}
