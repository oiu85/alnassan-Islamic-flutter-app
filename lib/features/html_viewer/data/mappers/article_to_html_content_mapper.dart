import '../../domain/models/html_content.dart';

/// Mapper to convert article data to HtmlContent
class ArticleToHtmlContentMapper {
  /// Convert from article to HtmlContent
  static HtmlContent fromArticle(dynamic article) {
    return HtmlContent(
      title: article.articleTitle ?? 'Untitled',
      htmlContent: article.articleDes ?? '',
      summary: article.articleSummary,
      description: article.articleDes,
      articleId: article.articleId,
      categoryId: article.articleCatId,
      imageUrl: article.articlePic,
      date: article.articleDate,
    );
  }

  /// Convert from a map to HtmlContent
  static HtmlContent fromMap(Map<String, dynamic> map) {
    return HtmlContent(
      title: map['title'] ?? 'Untitled',
      htmlContent: map['htmlContent'] ?? '',
      summary: map['summary'],
      description: map['description'],
      articleId: map['articleId'],
      categoryId: map['categoryId'],
      imageUrl: map['imageUrl'],
      date: map['date'],
    );
  }
}


