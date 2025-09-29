import 'package:html/parser.dart' as html_parser;
import 'package:html/dom.dart' as dom;
import 'package:injectable/injectable.dart';

import '../models/html_content.dart';
import '../models/page_content.dart';
import '../../data/repositories/html_viewer_repository.dart';

/// Implementation of the [HtmlViewerRepository]
///
///
///
@Injectable(as: HtmlViewerRepository)
class HtmlViewerRepositoryImpl implements HtmlViewerRepository {
  /// The approximate number of characters per page
  /// This will be adjusted based on screen size
  static const int _charactersPerPage = 3500; // Increased from 1200 to reduce pagination

  @override
  List<PageContent> parseHtmlToPages(HtmlContent htmlContent) {
    final document = html_parser.parse(htmlContent.htmlContent);


    final String textContent = document.body?.text ?? '';

    // Calculate the number of pages needed
    final int contentLength = textContent.length;
    final int estimatedTotalPages = (contentLength / _charactersPerPage).ceil();

    // If there's no content, return a single empty page
    if (contentLength == 0) {
      return [
        PageContent(
          pageNumber: 1,
          content: '',
          totalPages: 1,
        )
      ];
    }

    final List<PageContent> pages = [];

    // Try to split on paragraphs first for more natural page breaks
    final paragraphs = document.querySelectorAll('p');

    if (paragraphs.isNotEmpty) {
      String currentPageContent = '';
      int currentPageNumber = 1;

      for (var paragraph in paragraphs) {
        final String paragraphHtml = paragraph.outerHtml;

        // If adding this paragraph would exceed the page size and we already have content,
        // create a new page
        if (currentPageContent.isNotEmpty &&
            currentPageContent.length + paragraphHtml.length > _charactersPerPage) {
          pages.add(
              PageContent(
                pageNumber: currentPageNumber,
                content: '<div>$currentPageContent</div>',
                totalPages: estimatedTotalPages,
              )
          );

          currentPageNumber++;
          currentPageContent = paragraphHtml;
        } else {
          currentPageContent += paragraphHtml;
        }
      }

      // Add the last page if there's any content left
      if (currentPageContent.isNotEmpty) {
        pages.add(
            PageContent(
              pageNumber: currentPageNumber,
              content: '<div>$currentPageContent</div>',
              totalPages: pages.length + 1,
            )
        );
      }
    } else {
      // Fall back to splitting by character count if no paragraphs
      for (int i = 0; i < estimatedTotalPages; i++) {
        final int start = i * _charactersPerPage;
        final int end = (start + _charactersPerPage) < contentLength
            ? start + _charactersPerPage
            : contentLength;

        pages.add(
            PageContent(
              pageNumber: i + 1,
              content: '<div>${textContent.substring(start, end)}</div>',
              totalPages: estimatedTotalPages,
            )
        );
      }
    }

    // Update the total pages count now that we know exactly
    final int actualTotalPages = pages.length;
    return pages.map((page) => PageContent(
      pageNumber: page.pageNumber,
      content: page.content,
      totalPages: actualTotalPages,
    )).toList();
  }

  @override
  String extractTextFromHtml(String html) {
    final document = html_parser.parse(html);
    return document.body?.text ?? '';
  }

  @override
  List<String> getContentWithSelector(String html, String selector) {
    final document = html_parser.parse(html);
    final List<dom.Element> elements = document.querySelectorAll(selector);

    return elements.map((element) => element.outerHtml).toList();
  }
}
