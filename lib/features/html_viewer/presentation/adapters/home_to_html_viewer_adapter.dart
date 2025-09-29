import 'package:flutter/material.dart';
import '../../data/mappers/article_to_html_content_mapper.dart';
import '../../domain/models/html_content.dart';
import '../pages/html_book_viewer_page.dart';

class HomeToHtmlViewerAdapter {
  //*Navigate to the HTML viewer from a recent article
  static void navigateToHtmlViewerFromArticle(BuildContext context, dynamic article) {
    if (article == null) return;
    
    final HtmlContent htmlContent = ArticleToHtmlContentMapper.fromArticle(article);
    // Navigate to the HTML viewer
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HtmlBookViewerPage(
          htmlContent: htmlContent,
        ),
      ),
    );
  }
  
  /// Create a function to navigate to HTML viewer
  /// 
  /// Returns a function that can be called to navigate to the HTML viewer
  static Function(BuildContext) createHtmlViewerNavigator(dynamic article) {
    return (BuildContext context) {
      navigateToHtmlViewerFromArticle(context, article);
    };
  }
}
