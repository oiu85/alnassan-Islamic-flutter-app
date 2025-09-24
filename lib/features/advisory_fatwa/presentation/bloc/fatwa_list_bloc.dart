import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/models/page_state/bloc_status.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../../../../core/shared/wdigets/filter_button.dart';
import '../../domain/repository/advisory_categories_repository.dart';
import '../../data/model/advisory_categories_model.dart';
import 'fatwa_list_event.dart';
import 'fatwa_list_state.dart';

class FatwaListBloc extends Bloc<FatwaListEvent, FatwaListState> {
  final AdvisoryCategoriesRepository _repository;
  int _categoryId = 0;
  int _perPage = 5;
  String _sortBy = 'priority';
  String _sortOrder = 'desc';

  FatwaListBloc(this._repository) : super(const FatwaListState()) {
    on<FetchFatwaListEvent>(_onFetchFatwaList);
    on<LoadMoreFatwasEvent>(_onLoadMoreFatwas);
    on<RefreshFatwaListEvent>(_onRefreshFatwaList);
  }

  Future<void> _onFetchFatwaList(
    FetchFatwaListEvent event,
    Emitter<FatwaListState> emit,
  ) async {
    _categoryId = event.categoryId;
    _perPage = event.perPage;
    _sortBy = event.sortBy;
    _sortOrder = event.sortOrder;

    emit(state.copyWith(status: const BlocStatus.loading()));

    try {
      final result = await _repository.getFatwasByCategory(
        categoryId: event.categoryId,
        perPage: event.perPage,
        page: event.page,
        sortBy: event.sortBy,
        sortOrder: event.sortOrder,
      );

      result.fold(
        (error) {
          AppLogger.error('Failed to fetch fatwa list', {'error': error});
          emit(state.copyWith(
            status: BlocStatus.fail(error: error),
            error: error,
          ));
        },
        (response) {
          if (response.data != null) {
            AppLogger.info('Fatwa list fetched successfully', {
              'categoryId': response.data?.childCategory?.catId,
              'fatwasCount': response.data?.fatwas?.data?.length ?? 0,
            });
            
            final hasReachedMax = response.data?.fatwas?.pagination?.currentPage == response.data?.fatwas?.pagination?.lastPage;
            
            emit(state.copyWith(
              status: const BlocStatus.success(),
              category: response.data?.childCategory,
              fatwas: response.data?.fatwas?.data?.cast<AdvisoryItem>() ?? <AdvisoryItem>[],
              pagination: response.data?.fatwas?.pagination,
              meta: response.meta,
              hasReachedMax: hasReachedMax,
              currentPage: response.data?.fatwas?.pagination?.currentPage ?? 1,
            ));
          } else {
            AppLogger.warning('Fatwa list response is empty');
            emit(state.copyWith(
              status: BlocStatus.fail(error: 'لم يتم العثور على فتاوى'),
              error: 'لم يتم العثور على فتاوى',
            ));
          }
        },
      );
    } catch (e) {
      AppLogger.error('Error fetching fatwa list', {'error': e.toString()});
      emit(state.copyWith(
        status: BlocStatus.fail(error: 'حدث خطأ أثناء تحميل الفتاوى'),
        error: 'حدث خطأ أثناء تحميل الفتاوى',
      ));
    }
  }

  Future<void> _onLoadMoreFatwas(
    LoadMoreFatwasEvent event,
    Emitter<FatwaListState> emit,
  ) async {
    if (state.hasReachedMax || state.status.isLoading() || state.status.isLoadingMore()) {
      return;
    }

    emit(state.copyWith(status: const BlocStatus.loadingMore()));

    try {
      final nextPage = state.currentPage + 1;
      final result = await _repository.getFatwasByCategory(
        categoryId: _categoryId,
        perPage: _perPage,
        page: nextPage,
        sortBy: _sortBy,
        sortOrder: _sortOrder,
      );

      result.fold(
        (error) {
          AppLogger.error('Failed to load more fatwas', {'error': error});
          emit(state.copyWith(
            status: BlocStatus.fail(error: error),
            error: error,
          ));
        },
        (response) {
          if (response.data != null) {
            AppLogger.info('More fatwas loaded successfully', {
              'page': nextPage,
              'newFatwasCount': response.data?.fatwas?.data?.length ?? 0,
            });
            
            final hasReachedMax = response.data?.fatwas?.pagination?.currentPage == response.data?.fatwas?.pagination?.lastPage;
            final newFatwas = response.data?.fatwas?.data?.cast<AdvisoryItem>() ?? <AdvisoryItem>[];
            final updatedFatwas = [...state.fatwas, ...newFatwas];
            
            emit(state.copyWith(
              status: const BlocStatus.success(),
              fatwas: updatedFatwas,
              pagination: response.data?.fatwas?.pagination,
              hasReachedMax: hasReachedMax,
              currentPage: response.data?.fatwas?.pagination?.currentPage ?? nextPage,
            ));
          } else {
            emit(state.copyWith(
              status: const BlocStatus.success(),
              hasReachedMax: true,
            ));
          }
        },
      );
    } catch (e) {
      AppLogger.error('Error loading more fatwas', {'error': e.toString()});
      emit(state.copyWith(
        status: BlocStatus.fail(error: 'حدث خطأ أثناء تحميل المزيد من الفتاوى'),
        error: 'حدث خطأ أثناء تحميل المزيد من الفتاوى',
      ));
    }
  }

  Future<void> _onRefreshFatwaList(
    RefreshFatwaListEvent event,
    Emitter<FatwaListState> emit,
  ) async {
    add(FetchFatwaListEvent(
      categoryId: _categoryId,
      perPage: _perPage,
      page: 1,
      sortBy: _sortBy,
      sortOrder: _sortOrder,
    ));
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
    required int perPage,
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
            add(FetchFatwaListEvent(
              categoryId: _categoryId,
              perPage: perPage,
              page: page,
              sortBy: _sortBy,
              sortOrder: _sortOrder,
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
