import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/models/page_state/bloc_status.dart';
import '../../data/model/book_model.dart';

part 'books_state.freezed.dart';

/// State for the BooksBloc
@freezed
abstract class BooksState with _$BooksState {
  const factory BooksState({
    @Default(BlocStatus.initial()) BlocStatus status,
    @Default([]) List<BookData> books,
    @Default(1) int currentPage,
    @Default(10) int perPage,
    @Default(false) bool hasReachedMax,
    @Default(false) bool isLoadingMore,
    String? errorMessage,
    BooksMeta? meta,
  }) = _BooksState;
}





