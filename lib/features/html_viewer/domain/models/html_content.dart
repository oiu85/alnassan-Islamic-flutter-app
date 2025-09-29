import 'package:equatable/equatable.dart';


class HtmlContent extends Equatable {
  final String title;
  final String htmlContent;
  final String? summary;
  final String? description;
  final int? articleId;
  final String? categoryId;
  final String? imageUrl;
  final String? date;
  const HtmlContent({
    required this.title,
    required this.htmlContent,
    this.summary,
    this.description,
    this.articleId,
    this.categoryId,
    this.imageUrl,
    this.date,
  });

  HtmlContent copyWith({
    String? title,
    String? htmlContent,
    String? summary,
    String? description,
    int? articleId,
    String? categoryId,
    String? imageUrl,
    String? date,
  }) {
    return HtmlContent(
      title: title ?? this.title,
      htmlContent: htmlContent ?? this.htmlContent,
      summary: summary ?? this.summary,
      description: description ?? this.description,
      articleId: articleId ?? this.articleId,
      categoryId: categoryId ?? this.categoryId,
      imageUrl: imageUrl ?? this.imageUrl,
      date: date ?? this.date,
    );
  }

  @override
  List<Object?> get props => [
    title, 
    htmlContent, 
    summary, 
    description, 
    articleId, 
    categoryId, 
    imageUrl, 
    date
  ];
  
  /// Create an HtmlContent from a RecentArticles object
  factory HtmlContent.fromArticle(dynamic article) {
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
}




