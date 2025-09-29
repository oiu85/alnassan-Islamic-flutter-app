import 'package:equatable/equatable.dart';

import '../../domain/models/html_content.dart';
import '../../domain/models/page_content.dart';

enum HtmlViewerStatus {
  initial,
  loading,
  loaded,
  error,
}

class HtmlViewerState extends Equatable {
  final HtmlViewerStatus status;
  
  final HtmlContent? htmlContent;
  final PageContent? currentPage;
  final List<PageContent> pages;
  final String? errorMessage;
  final double textSize;
  final bool isDarkMode;
  final bool isSharing;
  final String? extractedText;


  const HtmlViewerState({
    this.status = HtmlViewerStatus.initial,
    this.htmlContent,
    this.currentPage,
    this.pages = const [],
    this.errorMessage,
    this.textSize = 16.0,
    this.isDarkMode = false,
    this.isSharing = false,
    this.extractedText,
  });


  HtmlViewerState copyWith({
    HtmlViewerStatus? status,
    HtmlContent? htmlContent,
    PageContent? currentPage,
    List<PageContent>? pages,
    String? errorMessage,
    double? textSize,
    bool? isDarkMode,
    bool? isSharing,
    String? extractedText,
  }) {
    return HtmlViewerState(
      status: status ?? this.status,
      htmlContent: htmlContent ?? this.htmlContent,
      currentPage: currentPage ?? this.currentPage,
      pages: pages ?? this.pages,
      errorMessage: errorMessage ?? this.errorMessage,
      textSize: textSize ?? this.textSize,
      isDarkMode: isDarkMode ?? this.isDarkMode,
      isSharing: isSharing ?? this.isSharing,
      extractedText: extractedText ?? this.extractedText,
    );
  }

  @override
  List<Object?> get props => [
    status,
    htmlContent,
    currentPage,
    pages,
    errorMessage,
    textSize,
    isDarkMode,
    isSharing,
    extractedText,
  ];
}

