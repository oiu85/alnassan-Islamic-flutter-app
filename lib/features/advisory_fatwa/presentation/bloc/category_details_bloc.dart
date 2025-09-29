import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/models/page_state/bloc_status.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../../../../core/shared/wdigets/filter_button.dart';
import '../../domain/repository/advisory_categories_repository.dart';
import 'category_details_event.dart';
import 'category_details_state.dart';

class CategoryDetailsBloc extends Bloc<CategoryDetailsEvent, CategoryDetailsState> {
  final AdvisoryCategoriesRepository _repository;

  CategoryDetailsBloc(this._repository) : super(const CategoryDetailsState()) {
    on<FetchCategoryDetailsEvent>(_onFetchCategoryDetails);
    on<LoadMoreCategoryDetailsEvent>(_onLoadMoreCategoryDetails);
  }

  Future<void> _onFetchCategoryDetails(
    FetchCategoryDetailsEvent event,
    Emitter<CategoryDetailsState> emit,
  ) async {
    AppLogger.business('Initiating category details fetch', {
      'categoryId': event.categoryId,
      'childrenPage': event.childrenPage,
      'childrenPerPage': event.childrenPerPage,
      'fatwasPerChild': event.fatwasPerChild,
    });

    emit(state.copyWith(status: const BlocStatus.loading()));

    final result = await _repository.getCategoryDetails(
      categoryId: event.categoryId,
      childrenPerPage: event.childrenPerPage,
      childrenPage: event.childrenPage,
      fatwasPerChild: event.fatwasPerChild,
    );

    result.fold(
      // Left side - Error case
      (error) {
        AppLogger.error('Category details fetch error: $error');
        emit(
          state.copyWith(
            status: BlocStatus.fail(error: error),
            error: error,
          ),
        );
      },
      // Right side - Success case
      (model) {
        AppLogger.apiResponse('CategoryDetailsBloc - Processed Model', model);
        
        if (model.data?.childrenCategories == null || model.data?.parentCategory == null) {
          AppLogger.error('No category details data in response');
          emit(
            state.copyWith(
              status: const BlocStatus.fail(
                error: 'No category details data found',
              ),
              error: 'No category details data found',
            ),
          );
          return;
        }

        final parentCategory = model.data!.parentCategory!;
        final childCategories = model.data!.childrenCategories!;
        final pagination = model.pagination;
        final hasReachedMax = pagination?.currentPage == pagination?.lastPage;

        AppLogger.business('Category details fetch successful', {
          'parentCategory': parentCategory.catTitle,
          'childCategoriesCount': childCategories.length,
          'currentPage': pagination?.currentPage,
          'lastPage': pagination?.lastPage,
        });

        emit(
          state.copyWith(
            status: const BlocStatus.success(),
            parentCategory: parentCategory,
            childCategories: childCategories,
            pagination: pagination,
            hasReachedMax: hasReachedMax,
            currentPage: pagination?.currentPage ?? 1,
            error: null,
          ),
        );
      },
    );
  }

  Future<void> _onLoadMoreCategoryDetails(
    LoadMoreCategoryDetailsEvent event,
    Emitter<CategoryDetailsState> emit,
  ) async {
    if (state.hasReachedMax || state.status.isLoading()) {
      return;
    }

    final nextPage = state.currentPage + 1;
    AppLogger.business('Loading more category details', {
      'categoryId': event.categoryId,
      'nextPage': nextPage,
    });

    emit(state.copyWith(status: const BlocStatus.loadingMore()));

    final result = await _repository.getCategoryDetails(
      categoryId: event.categoryId,
      childrenPerPage: 10,
      childrenPage: nextPage,
      fatwasPerChild: event.fatwasPerChild,
    );

    result.fold(
      // Left side - Error case
      (error) {
        AppLogger.error('Load more category details error: $error');
        emit(
          state.copyWith(
            status: BlocStatus.fail(error: error),
            error: error,
          ),
        );
      },
      // Right side - Success case
      (model) {
        if (model.data?.childrenCategories == null) {
          emit(
            state.copyWith(
              status: const BlocStatus.fail(
                error: 'No more category details data found',
              ),
              error: 'No more category details data found',
            ),
          );
          return;
        }

        final newChildCategories = model.data!.childrenCategories!;
        final pagination = model.pagination;
        final hasReachedMax = pagination?.currentPage == pagination?.lastPage;

        AppLogger.business('Load more category details successful', {
          'newChildCategoriesCount': newChildCategories.length,
          'totalChildCategoriesCount': state.childCategories.length + newChildCategories.length,
          'currentPage': pagination?.currentPage,
        });

        emit(
          state.copyWith(
            status: const BlocStatus.success(),
            childCategories: [...state.childCategories, ...newChildCategories],
            pagination: pagination,
            hasReachedMax: hasReachedMax,
            currentPage: pagination?.currentPage ?? nextPage,
            error: null,
          ),
        );
      },
    );
  }

  // ===== FILTER BUTTON LOGIC =====
  /// Returns filter button options for pagination
  List<Map<String, dynamic>> getFilterButtonOptions() {
    final List<Map<String, dynamic>> options = [];
    
    // Add page options if there are multiple pages
    if (state.pagination != null && state.pagination!.lastPage != null && state.pagination!.lastPage! > 1) {
      for (int i = 1; i <= state.pagination!.lastPage!; i++) {
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
    return state.pagination != null && state.pagination!.lastPage != null && state.pagination!.lastPage! > 1;
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
    required int childrenPerPage,
  }) {
    if (!shouldShowFilterButton()) {
      return const SizedBox.shrink();
    }
    
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
            add(FetchCategoryDetailsEvent(
              categoryId: categoryId,
              childrenPerPage: childrenPerPage,
              childrenPage: page,
            ));
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
