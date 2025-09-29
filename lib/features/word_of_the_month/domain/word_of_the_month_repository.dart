import 'package:dartz/dartz.dart';

import '../../word_of_the_month/data/model/word_of_the_month_model.dart';

/// Abstract repository for Word of the Month feature
abstract class WordOfTheMonthRepository {
  /// Fetches word of the month data from the API
  ///
  /// Returns [Right<WordOfTheMonthModel>] containing the word of the month data on success
  /// Returns [Left<String>] with error message on failure
  Future<Either<String, WordOfTheMonthModel>> getWordOfTheMonthData({
    required int catId,
    required String catMenus,
    required int articlesPerPage,
    required int articlesPage,
  });
}

