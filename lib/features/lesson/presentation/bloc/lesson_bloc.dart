import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';

import '../../../../core/utils/logger/app_logger.dart';
import '../../../../core/models/page_state/bloc_status.dart';
import '../../../../core/shared/wdigets/filter_button.dart';
import '../../domain/lesson_repository.dart';
import '../../data/model.dart';
import 'lesson_event.dart';
import 'lesson_state.dart';
// ===== HTML VIEWER IMPORTS =====
import '../../../html_viewer/domain/models/html_content.dart';

class LessonBloc extends Bloc<LessonEvent, LessonState> {
  final LessonRepository _lessonRepository;

  // All category IDs for lessons
  static const List<int> _allCategoryIds = [21, 2, 5, 17, 14, 16, 4, 6, 3, 22, 23, 24, 25, 32];

  LessonBloc(this._lessonRepository) : super(const LessonState()) {
    on<FetchLessonsEvent>(_onFetchLessons);
    on<LoadMoreLessonsEvent>(_onLoadMoreLessons);
    on<ChangePageEvent>(_onChangePage);
    on<FetchLessonArticleDetailEvent>(_onFetchLessonArticleDetail);
    on<LessonCardClickEvent>(_onLessonCardClick);
    on<FetchAllLessonsFromCategoryEvent>(_onFetchAllLessonsFromCategory);
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
            FetchAllLessonsFromCategoryEvent(
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
  /// Converts LessonArticleDetailModel to HtmlContent for the HTML viewer
  HtmlContent _mapArticleDetailToHtmlContent(LessonArticleDetailModel articleDetail) {
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
  /// Handles lesson card click - validates article and triggers detail fetch
  Future<void> _onLessonCardClick(
    LessonCardClickEvent event,
    Emitter<LessonState> emit,
  ) async {
    // Validate article has required ID
    if (event.lesson.articleId == null) {
      emit(state.copyWith(
        articleDetailStatus: const BlocStatus.fail(error: 'Article ID missing'),
        articleDetailError: 'خطأ: معرف المقال غير متوفر',
      ));
      return;
    }

    // Set loading state for article detail
    emit(state.copyWith(
      articleDetailStatus: const BlocStatus.loading(),
      articleDetailError: null,
    ));

    // Trigger article detail fetch
    add(FetchLessonArticleDetailEvent(articleId: event.lesson.articleId!));
  }

  Future<void> _onFetchLessons(
    FetchLessonsEvent event,
    Emitter<LessonState> emit,
  ) async {
    try {
      AppLogger.business('Initiating lessons data fetch', {'status': state.status.toString()});
      
      emit(state.copyWith(
        status: const BlocStatus.loading(),
        hasReachedMax: false,
        allCategoryIds: _allCategoryIds,
        loadedCategoryIds: event.categoryIds,
      ));

      final lessonModel = await _lessonRepository.getLessons(
        categoryIds: event.categoryIds,
        page: event.page,
        perPage: event.perPage,
      );

      // Log the response for debugging
      AppLogger.apiResponse('LessonBloc - Processed Model', lessonModel);

      // Check if we have valid data
      if (lessonModel.data == null) {
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

      // Get categories and extract articles
      final categories = lessonModel.data?.categories;
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

      // Store categories separately for individual display
      final List<LessonCategoryWithArticles> newCategories = [];
      int totalPages = 1;
      int totalItems = 0;

      for (final category in categories) {
        if (category.articles != null && category.articles!.isNotEmpty) {
          newCategories.add(category);
        }
        // Use pagination from the first category for overall pagination
        if (category.pagination != null) {
          totalPages = category.pagination!.lastPage ?? 1;
          totalItems = category.pagination!.total ?? 0;
        }
      }

      if (newCategories.isEmpty) {
        AppLogger.warning('No articles found');
        emit(
          state.copyWith(
            status: const BlocStatus.fail(
              error: 'No categories with articles found',
            ),
          ),
        );
        return;
      }

      // Calculate total articles across all categories
      final totalArticles = newCategories.fold<int>(0, (sum, category) => sum + (category.articles?.length ?? 0));
      final hasReachedMax = totalArticles < event.perPage;

      AppLogger.business('Lessons data fetch successful', {'totalArticles': totalArticles});
      emit(
        state.copyWith(
          status: const BlocStatus.success(),
          lessonData: lessonModel,
          categories: newCategories,
          currentPage: event.page,
          perPage: event.perPage,
          totalPages: totalPages,
          totalItems: totalItems,
          hasReachedMax: hasReachedMax,
        ),
      );
    } on DioException catch (e) {
      AppLogger.apiError('Lessons fetch error', e);
      emit(
        state.copyWith(
          status: BlocStatus.fail(
            error: e.message ?? 'Connection attempt failed',
          ),
        ),
      );
    } catch (e) {
      AppLogger.error(
        'Unexpected error while fetching lessons data',
        e,
        (e as Error).stackTrace,
      );
      emit(
        state.copyWith(
          status: BlocStatus.fail(error: 'Unexpected error occurred'),
        ),
      );
    }
  }

  Future<void> _onLoadMoreLessons(
    LoadMoreLessonsEvent event,
    Emitter<LessonState> emit,
  ) async {
    if (state.hasReachedMax || state.isLoadingMore) return;

    try {
      emit(state.copyWith(isLoadingMore: true));

      // Calculate next batch of categories to load
      final currentLoadedCount = state.loadedCategoryIds.length;
      final nextBatchStart = currentLoadedCount;
      final nextBatchEnd = (nextBatchStart + state.categoriesPerLoad).clamp(0, state.allCategoryIds.length);
      
      if (nextBatchStart >= state.allCategoryIds.length) {
        emit(state.copyWith(
          isLoadingMore: false,
          hasReachedMax: true,
        ));
        return;
      }

      final nextCategoryIds = state.allCategoryIds.sublist(nextBatchStart, nextBatchEnd);
      
      final lessonModel = await _lessonRepository.getLessons(
        categoryIds: nextCategoryIds,
        page: 1, // Always start from page 1 for new categories
        perPage: state.perPage,
      );

      if (lessonModel.data?.categories != null) {
        // Extract categories with articles
        final List<LessonCategoryWithArticles> newCategories = [];
        for (final category in lessonModel.data!.categories!) {
          if (category.articles != null && category.articles!.isNotEmpty) {
            newCategories.add(category);
          }
        }

        // Combine with existing categories
        final updatedCategories = [...state.categories, ...newCategories];
        final updatedLoadedIds = [...state.loadedCategoryIds, ...nextCategoryIds];

        emit(state.copyWith(
          categories: updatedCategories,
          loadedCategoryIds: updatedLoadedIds,
          isLoadingMore: false,
          hasReachedMax: nextBatchEnd >= state.allCategoryIds.length,
        ));
      } else {
        emit(state.copyWith(
          isLoadingMore: false,
          hasReachedMax: true,
        ));
      }
    } catch (e) {
      emit(state.copyWith(
        isLoadingMore: false,
        error: 'Failed to load more lessons: $e',
      ));
    }
  }

  Future<void> _onChangePage(
    ChangePageEvent event,
    Emitter<LessonState> emit,
  ) async {
    // For page changes, we need to reload the current categories
    if (state.loadedCategoryIds.isNotEmpty) {
      add(FetchLessonsEvent(
        categoryIds: state.loadedCategoryIds,
        page: event.page,
        perPage: state.perPage,
      ));
    }
  }

  // ===== ARTICLE DETAIL HANDLER =====
  Future<void> _onFetchLessonArticleDetail(
    FetchLessonArticleDetailEvent event,
    Emitter<LessonState> emit,
  ) async {
    try {
      AppLogger.business('Initiating article detail fetch', {'status': state.articleDetailStatus.toString()});

      emit(state.copyWith(
        articleDetailStatus: const BlocStatus.loading(),
        articleDetailError: null,
      ));

      final articleDetailModel = await _lessonRepository.getLessonArticleDetail(
        articleId: event.articleId,
      );

      if (articleDetailModel.data == null) {
        AppLogger.warning('No article data received');
        emit(state.copyWith(
          articleDetailStatus: const BlocStatus.fail(error: 'No article data received'),
          articleDetailError: 'No article data received',
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
          htmlContent: htmlContent,
          articleDetailError: null,
        ),
      );
    } on DioException catch (e) {
      AppLogger.apiError('Article detail fetch error', e);
      emit(state.copyWith(
        articleDetailStatus: const BlocStatus.fail(error: 'Network error'),
        articleDetailError: 'Network error: ${e.message}',
      ));
    } catch (e) {
      AppLogger.error('Article detail mapping error', e);
      emit(state.copyWith(
        articleDetailStatus: const BlocStatus.fail(error: 'Error loading article'),
        articleDetailError: 'Error loading article: ${e.toString()}',
      ));
    }
  }

  Future<void> _onFetchAllLessonsFromCategory(
    FetchAllLessonsFromCategoryEvent event,
    Emitter<LessonState> emit,
  ) async {
    try {
      AppLogger.business('Initiating lessons data fetch', {'status': state.status.toString()});
      
      emit(state.copyWith(
        status: const BlocStatus.loading(),
        hasReachedMax: false,
      ));

      final lessonModel = await _lessonRepository.getLessons(
        categoryIds: [event.categoryId],
        page: event.page,
        perPage: event.perPage,
      );

      // Check if we have valid data
      if (lessonModel.data == null) {
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
      final categories = lessonModel.data?.categories;
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

      final pagination = firstCategory.pagination;
      final totalPages = pagination?.lastPage ?? 1;
      final totalItems = pagination?.total ?? 0;
      final hasReachedMax = articles.length < event.perPage;

      AppLogger.business('Category lessons fetch successful', {'articlesCount': articles.length});
      emit(
        state.copyWith(
          status: const BlocStatus.success(),
          lessonData: lessonModel,
          articles: articles,
          currentPage: event.page,
          perPage: event.perPage,
          totalPages: totalPages,
          totalItems: totalItems,
          hasReachedMax: hasReachedMax,
          loadedCategoryIds: [event.categoryId], // Set only this category as loaded
        ),
      );
    } on DioException catch (e) {
      AppLogger.apiError('Lessons fetch error', e);
      emit(
        state.copyWith(
          status: BlocStatus.fail(
            error: e.message ?? 'Connection attempt failed',
          ),
        ),
      );
    } catch (e) {
      AppLogger.error(
        'Unexpected error while fetching lessons from category',
        e,
        (e as Error).stackTrace,
      );
      emit(
        state.copyWith(
          status: BlocStatus.fail(error: 'Unexpected error occurred'),
        ),
      );
    }
  }
}
