import 'package:dartz/dartz.dart';
import '../data/model/words_on_occasions_model.dart';

abstract class WordsOnOccasionsRepository {
  Future<Either<String, WordsOnOccasionsModel>> getWordsOnOccasionsData({
    required int catId,
    required int catMenus,
    required int articlesPerPage,
    required int categoriesPerPage,
    required int articlesPage,
    required int categoriesPage,
  });

  Future<Either<String, WordsOnOccasionsArticle>> getArticleDetail({
    required int articleId,
  });
}
