import 'package:equatable/equatable.dart';

import '../../../../../core/models/page_state/bloc_status.dart';
import '../../../../../features/html_viewer/domain/models/html_content.dart';
import '../../domain/model/biography_article.dart';

class BiographyState extends Equatable {
  final BlocStatus status;
  final BiographyArticle? article;
  final HtmlContent? htmlContent;
  final String? errorMessage;

  const BiographyState({
    this.status = const BlocStatus.initial(),
    this.article,
    this.htmlContent,
    this.errorMessage,
  });

  BiographyState copyWith({
    BlocStatus? status,
    BiographyArticle? article,
    HtmlContent? htmlContent,
    String? errorMessage,
  }) {
    return BiographyState(
      status: status ?? this.status,
      article: article ?? this.article,
      htmlContent: htmlContent ?? this.htmlContent,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, article, htmlContent, errorMessage];
}
