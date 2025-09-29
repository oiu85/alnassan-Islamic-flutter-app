import '../model/biography_article.dart';

abstract class BiographyRepository {
  Future<BiographyArticle> getBiographyArticle();
}
