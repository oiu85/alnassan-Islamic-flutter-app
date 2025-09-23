import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/models/page_state/bloc_status.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../../domain/repository/advisory_categories_repository.dart';
import 'advisory_categories_event.dart';
import 'advisory_categories_state.dart';

class AdvisoryCategoriesBloc extends Bloc<AdvisoryCategoriesEvent, AdvisoryCategoriesState> {
  final AdvisoryCategoriesRepository _repository;

  AdvisoryCategoriesBloc(this._repository) : super(const AdvisoryCategoriesState()) {
    on<FetchAdvisoryCategoriesEvent>(_onFetchAdvisoryCategories);
    on<LoadMoreAdvisoryCategoriesEvent>(_onLoadMoreAdvisoryCategories);
  }

  Future<void> _onFetchAdvisoryCategories(
    FetchAdvisoryCategoriesEvent event,
    Emitter<AdvisoryCategoriesState> emit,
  ) async {
    AppLogger.business('Initiating advisory categories fetch', {
      'page': event.categoriesPage,
      'perPage': event.categoriesPerPage,
    });

    emit(state.copyWith(status: const BlocStatus.loading()));

    final result = await _repository.getAdvisoryCategories(
      categoriesPerPage: event.categoriesPerPage,
      categoriesPage: event.categoriesPage,
    );

    result.fold(
      // Left side - Error case
      (error) {
        AppLogger.error('Advisory categories fetch error: $error');
        emit(
          state.copyWith(
            status: BlocStatus.fail(error: error),
            error: error,
          ),
        );
      },
      // Right side - Success case
      (model) {
        AppLogger.apiResponse('AdvisoryCategoriesBloc - Processed Model', model);
        
        if (model.data?.parentCategories == null) {
          AppLogger.error('No categories data in response');
          emit(
            state.copyWith(
              status: const BlocStatus.fail(
                error: 'No categories data found',
              ),
              error: 'No categories data found',
            ),
          );
          return;
        }

        final categories = model.data!.parentCategories!;
        final pagination = model.pagination;
        final hasReachedMax = pagination?.currentPage == pagination?.lastPage;

        AppLogger.business('Advisory categories fetch successful', {
          'categoriesCount': categories.length,
          'currentPage': pagination?.currentPage,
          'lastPage': pagination?.lastPage,
        });

        emit(
          state.copyWith(
            status: const BlocStatus.success(),
            categories: categories,
            pagination: pagination,
            hasReachedMax: hasReachedMax,
            currentPage: pagination?.currentPage ?? 1,
            error: null,
          ),
        );
      },
    );
  }

  Future<void> _onLoadMoreAdvisoryCategories(
    LoadMoreAdvisoryCategoriesEvent event,
    Emitter<AdvisoryCategoriesState> emit,
  ) async {
    if (state.hasReachedMax || state.status.isLoading()) {
      return;
    }

    final nextPage = state.currentPage + 1;
    AppLogger.business('Loading more advisory categories', {'nextPage': nextPage});

    emit(state.copyWith(status: const BlocStatus.loadingMore()));

    final result = await _repository.getAdvisoryCategories(
      categoriesPerPage: 3,
      categoriesPage: nextPage,
    );

    result.fold(
      // Left side - Error case
      (error) {
        AppLogger.error('Load more advisory categories error: $error');
        emit(
          state.copyWith(
            status: BlocStatus.fail(error: error),
            error: error,
          ),
        );
      },
      // Right side - Success case
      (model) {
        if (model.data?.parentCategories == null) {
          emit(
            state.copyWith(
              status: const BlocStatus.fail(
                error: 'No more categories data found',
              ),
              error: 'No more categories data found',
            ),
          );
          return;
        }

        final newCategories = model.data!.parentCategories!;
        final pagination = model.pagination;
        final hasReachedMax = pagination?.currentPage == pagination?.lastPage;

        AppLogger.business('Load more advisory categories successful', {
          'newCategoriesCount': newCategories.length,
          'totalCategoriesCount': state.categories.length + newCategories.length,
          'currentPage': pagination?.currentPage,
        });

        emit(
          state.copyWith(
            status: const BlocStatus.success(),
            categories: [...state.categories, ...newCategories],
            pagination: pagination,
            hasReachedMax: hasReachedMax,
            currentPage: pagination?.currentPage ?? nextPage,
            error: null,
          ),
        );
      },
    );
  }
}
