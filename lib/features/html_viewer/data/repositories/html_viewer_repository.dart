import '../../domain/models/html_content.dart';
import '../../domain/models/page_content.dart';

/// Interface for HTML viewer repository
abstract class HtmlViewerRepository {
  List<PageContent> parseHtmlToPages(HtmlContent htmlContent);
  String extractTextFromHtml(String html);
  List<String> getContentWithSelector(String html, String selector);
}
