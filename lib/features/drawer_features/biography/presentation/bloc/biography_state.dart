import 'package:equatable/equatable.dart';

import '../../../../../core/models/page_state/bloc_status.dart';
import '../../domain/model/biography_article.dart';

class BiographyState extends Equatable {
  final BlocStatus status;
  final BiographyArticle? article;
  final String? errorMessage;

  const BiographyState({
    this.status = const BlocStatus.initial(),
    this.article,
    this.errorMessage,
  });

  BiographyState copyWith({
    BlocStatus? status,
    BiographyArticle? article,
    String? errorMessage,
  }) {
    return BiographyState(
      status: status ?? this.status,
      article: article ?? this.article,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, article, errorMessage];
}
