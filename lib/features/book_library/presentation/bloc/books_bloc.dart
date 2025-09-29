import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/models/page_state/bloc_status.dart';
import '../../domain/repository/books_repository.dart';
import 'books_event.dart';
import 'books_state.dart';

/// Bloc for managing books state and business logic
class BooksBloc extends Bloc<BooksEvent, BooksState> {
  final BooksRepository _repository;

  BooksBloc(this._repository) : super(const BooksState()) {
    on<FetchBooksEvent>(_onFetchBooks);
    on<RefreshBooksEvent>(_onRefreshBooks);
    on<LoadMoreBooksEvent>(_onLoadMoreBooks);
    on<ResetBooksEvent>(_onResetBooks);
  }

  /// Fetches books from the API
  Future<void> _onFetchBooks(
    FetchBooksEvent event,
    Emitter<BooksState> emit,
  ) async {
    // If we already have data and it's not a refresh, don't fetch again
    if (state.books.isNotEmpty && state.status.isSuccess() && event.page == 1) {
      return;
    }

    emit(state.copyWith(
      status: const BlocStatus.loading(),
      errorMessage: null,
    ));

    try {
      final result = await _repository.getBooks(
        page: event.page,
        perPage: event.perPage,
        include: event.include,
      );

      result.fold(
        (error) => emit(state.copyWith(
          status: BlocStatus.fail(error: error),
          errorMessage: error,
        )),
        (response) {
          final books = response.data;
          final meta = response.meta;
          final pagination = meta?.pagination;

          emit(state.copyWith(
            status: const BlocStatus.success(),
            books: event.page == 1 ? books : [...state.books, ...books],
            currentPage: event.page,
            perPage: event.perPage,
            hasReachedMax: pagination?.currentPage == pagination?.lastPage,
            meta: meta,
            errorMessage: null,
          ));
        },
      );
    } catch (e) {
      emit(state.copyWith(
        status: BlocStatus.fail(error: e.toString()),
        errorMessage: e.toString(),
      ));
    }
  }

  /// Refreshes the books list
  Future<void> _onRefreshBooks(
    RefreshBooksEvent event,
    Emitter<BooksState> emit,
  ) async {
    emit(const BooksState());
    add(const FetchBooksEvent());
  }

  /// Loads more books for pagination
  Future<void> _onLoadMoreBooks(
    LoadMoreBooksEvent event,
    Emitter<BooksState> emit,
  ) async {
    if (state.isLoadingMore || state.hasReachedMax) {
      return;
    }

    emit(state.copyWith(isLoadingMore: true));

    try {
      final nextPage = state.currentPage + 1;
      final result = await _repository.getBooks(
        page: nextPage,
        perPage: state.perPage,
        include: 'category',
      );

      result.fold(
        (error) => emit(state.copyWith(
          isLoadingMore: false,
          errorMessage: error,
        )),
        (response) {
          final books = response.data;
          final meta = response.meta;
          final pagination = meta?.pagination;

          emit(state.copyWith(
            books: [...state.books, ...books],
            currentPage: nextPage,
            hasReachedMax: pagination?.currentPage == pagination?.lastPage,
            isLoadingMore: false,
            meta: meta,
            errorMessage: null,
          ));
        },
      );
    } catch (e) {
      emit(state.copyWith(
        isLoadingMore: false,
        errorMessage: e.toString(),
      ));
    }
  }

  /// Resets the books state
  void _onResetBooks(
    ResetBooksEvent event,
    Emitter<BooksState> emit,
  ) {
    emit(const BooksState());
  }

  // ===== UI Helper Methods =====

  /// Checks if loading state should be shown
  bool shouldShowLoading() => state.status.isLoading() && state.books.isEmpty;

  /// Checks if error state should be shown
  bool shouldShowError() => state.status.isFail() && state.books.isEmpty;

  /// Checks if books list should be shown
  bool shouldShowBooks() => state.books.isNotEmpty;

  /// Checks if empty state should be shown
  bool shouldShowEmpty() => 
      state.status.isSuccess() && state.books.isEmpty && !state.status.isLoading();

  /// Checks if load more button should be shown
  bool shouldShowLoadMore() => 
      state.books.isNotEmpty && 
      !state.hasReachedMax && 
      !state.isLoadingMore;

  /// Checks if loading more indicator should be shown
  bool shouldShowLoadingMore() => state.isLoadingMore;

  /// Gets error message
  String getErrorMessage() => state.errorMessage ?? 'حدث خطأ غير متوقع';

  /// Gets empty state message
  String getEmptyMessage() => 'لا توجد كتب متاحة';

  /// Gets total books count
  int getTotalBooks() => state.books.length;

  /// Gets pagination info
  String getPaginationInfo() {
    final pagination = state.meta?.pagination;
    if (pagination == null) return '';
    
    return 'عرض ${pagination.from}-${pagination.to} من ${pagination.total}';
  }

  /// Checks if there are more pages
  bool hasMorePages() => !state.hasReachedMax;

  /// Gets current page
  int getCurrentPage() => state.currentPage;

  /// Gets total pages
  int getTotalPages() => state.meta?.pagination?.lastPage ?? 0;
}
