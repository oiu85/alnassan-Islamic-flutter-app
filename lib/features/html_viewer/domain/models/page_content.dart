import 'package:equatable/equatable.dart';

/// Represents a single page of content in the book viewer
class PageContent extends Equatable {
  /// The page number (1-indexed)
  final int pageNumber;
  
  final String content;
  final int totalPages;
  const PageContent({
    required this.pageNumber,
    required this.content,
    required this.totalPages,
  });
  PageContent copyWith({
    int? pageNumber,
    String? content,
    int? totalPages,
  }) {
    return PageContent(
      pageNumber: pageNumber ?? this.pageNumber,
      content: content ?? this.content,
      totalPages: totalPages ?? this.totalPages,
    );
  }

  @override
  List<Object> get props => [pageNumber, content, totalPages];
}




