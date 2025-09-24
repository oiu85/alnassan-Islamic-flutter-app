import 'package:dartz/dartz.dart';
import '../../data/model/book_model.dart';

/// Repository interface for books feature
/// Handles all book-related data operations
abstract class BooksRepository {
  /// Fetches books with pagination and category information
  /// 
  /// [page] - Page number for pagination (default: 1)
  /// [perPage] - Number of books per page (default: 10)
  /// [include] - What to include in response (default: 'category')
  /// 
  /// Returns [Right] with [BooksResponse] on success
  /// Returns [Left] with error message on failure
  Future<Either<String, BooksResponse>> getBooks({
    int page = 1,
    int perPage = 10,
    String include = 'category',
  });
}
