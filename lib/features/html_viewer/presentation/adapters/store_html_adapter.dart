import 'package:flutter/material.dart';

import '../../domain/models/html_content.dart';
import '../pages/html_book_viewer_page.dart';

/// A replacement for the original store_html.dart that uses our new HTML viewer component
class HtmlExtractorPageAdapter extends StatefulWidget {
  final String? htmlResponse;

  final String? title;

  final int? articleId;

  const HtmlExtractorPageAdapter({
    Key? key,
    required this.htmlResponse,
    this.title,
    this.articleId,
  }) : super(key: key);

  @override
  _HtmlExtractorPageAdapterState createState() => _HtmlExtractorPageAdapterState();
}

class _HtmlExtractorPageAdapterState extends State<HtmlExtractorPageAdapter> {
  @override
  Widget build(BuildContext context) {
    final HtmlContent htmlContent = HtmlContent(
      title: widget.title ?? 'Article',
      htmlContent: widget.htmlResponse ?? '',
      articleId: widget.articleId,
    );

    // Use our new HTML book viewer component
    return HtmlBookViewerPage(
      htmlContent: htmlContent,
    );
  }
}
