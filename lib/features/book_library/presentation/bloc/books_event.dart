import 'package:freezed_annotation/freezed_annotation.dart';

part 'books_event.freezed.dart';

/// Events for the BooksBloc
@freezed
abstract class BooksEvent with _$BooksEvent {
  /// Fetches books from the API
  const factory BooksEvent.fetchBooks({
    @Default(1) int page,
    @Default(10) int perPage,
    @Default('category') String include,
  }) = FetchBooksEvent;

  /// Refreshes the books list
  const factory BooksEvent.refreshBooks() = RefreshBooksEvent;

  /// Loads more books (pagination)
  const factory BooksEvent.loadMoreBooks() = LoadMoreBooksEvent;

  /// Resets the books state
  const factory BooksEvent.resetBooks() = ResetBooksEvent;
}





