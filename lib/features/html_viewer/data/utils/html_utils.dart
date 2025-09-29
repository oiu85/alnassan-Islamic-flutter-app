import 'package:html/parser.dart' as html_parser;
import 'package:html/dom.dart' as dom;

/// Utility class for HTML operations
class HtmlUtils {
  /// Extract text from HTML while preserving basic structure
  static String extractTextFromHtml(String html) {
    final document = html_parser.parse(html);
    return document.body?.text ?? '';
  }

  /// Extract only specific elements from HTML using a CSS selector
  static List<String> extractElementsFromHtml(String html, String selector) {
    final document = html_parser.parse(html);
    final List<dom.Element> elements = document.querySelectorAll(selector);
    return elements.map((element) => element.text).toList();
  }

  /// Extract the title from HTML
  static String? extractTitleFromHtml(String html) {
    final document = html_parser.parse(html);
    final titleElements = document.querySelectorAll('h1, h2, title');
    
    if (titleElements.isNotEmpty) {
      return titleElements.first.text;
    }
    
    return null;
  }

  /// Extract images from HTML
  static List<String> extractImagesFromHtml(String html) {
    final document = html_parser.parse(html);
    final List<dom.Element> imgElements = document.querySelectorAll('img');
    
    return imgElements
        .map((img) => img.attributes['src'] ?? '')
        .where((src) => src.isNotEmpty)
        .toList();
  }

  /// Add custom CSS to HTML
  static String addCustomCssToHtml(String html, String css) {
    if (html.contains('</head>')) {
      return html.replaceFirst('</head>', '<style>$css</style></head>');
    } else if (html.contains('<body')) {
      return html.replaceFirst('<body', '<head><style>$css</style></head><body');
    } else {
      return '<head><style>$css</style></head>$html';
    }
  }

  /// Split HTML into roughly equal chunks by paragraphs
  static List<String> splitHtmlByParagraphs(String html, int chunks) {
    final document = html_parser.parse(html);
    final paragraphs = document.querySelectorAll('p');
    
    if (paragraphs.isEmpty || chunks <= 1) {
      return [html];
    }
    
    final int paragraphsPerChunk = (paragraphs.length / chunks).ceil();
    final List<String> result = [];
    
    for (int i = 0; i < chunks; i++) {
      final int start = i * paragraphsPerChunk;
      final int end = (start + paragraphsPerChunk) < paragraphs.length 
          ? start + paragraphsPerChunk 
          : paragraphs.length;
      
      if (start >= paragraphs.length) break;
      
      final StringBuffer chunkHtml = StringBuffer();
      for (int j = start; j < end; j++) {
        chunkHtml.write(paragraphs[j].outerHtml);
      }
      
      result.add('<div>${chunkHtml.toString()}</div>');
    }
    
    return result;
  }
}




