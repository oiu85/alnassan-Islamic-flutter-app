import 'package:dartz/dartz.dart';

import '../../../../config/api_config.dart';
import '../../../../core/network/network_client.dart';
import '../../domain/repository/books_repository.dart';
import '../model/book_model.dart';

/// Implementation of BooksRepository
/// Handles API calls for books data
class BooksRepositoryImpl implements BooksRepository {
  final NetworkClient _networkClient;

  BooksRepositoryImpl(this._networkClient);

  @override
  Future<Either<String, BooksResponse>> getBooks({
    int page = 1,
    int perPage = 10,
    String include = 'category',
  }) async {
    try {
      final url = ApiConfig.getBooks(
        page: page,
        perPage: perPage,
        include: include,
      );

      print('📚 Fetching books from: $url');

      final response = await _networkClient.get(url);

      if (response.statusCode == 200) {
        final booksResponse = BooksResponse.fromJson(response.data);
        print('✅ Successfully fetched ${booksResponse.data.length} books');
        return Right(booksResponse);
      } else {
        final errorMessage = 'Failed to fetch books: ${response.statusCode}';
        print('❌ $errorMessage');
        return Left(errorMessage);
      }
    } catch (e) {
      String errorMessage;
      
      if (e.toString().contains('Connection timeout')) {
        errorMessage = 'انتهت مهلة الاتصال. يرجى المحاولة مرة أخرى.';
      } else if (e.toString().contains('No internet connection')) {
        errorMessage = 'خطأ في الاتصال. تحقق من اتصال الإنترنت.';
      } else if (e.toString().contains('Server error')) {
        errorMessage = 'خطأ في الخادم. يرجى المحاولة مرة أخرى.';
      } else {
        errorMessage = 'حدث خطأ غير متوقع: $e';
      }
      
      print('❌ Network error: $errorMessage');
      return Left(errorMessage);
    }
  }
}
