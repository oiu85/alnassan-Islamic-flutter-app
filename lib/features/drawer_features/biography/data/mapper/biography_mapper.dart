import '../../domain/model/biography_article.dart';
import '../response/article_response.dart';

class BiographyMapper {
  static BiographyArticle mapFromResponse(ArticleData? response) {
    if (response == null) {
      return const BiographyArticle();
    }
    
    return BiographyArticle(
      id: response.articleId,
      title: response.articleTitle,
      summary: response.articleSummary,
      content: response.articleDes,
      categoryId: response.articleCatId,
      imageUrl: response.articlePic,
      visitCount: response.articleVisitor,
      date: response.articleDate,
    );
  }
}
