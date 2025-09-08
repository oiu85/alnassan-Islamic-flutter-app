import 'package:equatable/equatable.dart';

import '../../data/model.dart';

abstract class AlmawdueaEvent extends Equatable {
  const AlmawdueaEvent();

  @override
  List<Object?> get props => [];
}

class FetchAlmawdueaArticlesEvent extends AlmawdueaEvent {
  final int categoryId;
  final int page;
  final int perPage;
  final bool isRefresh;

  const FetchAlmawdueaArticlesEvent({
    required this.categoryId,
    required this.page,
    required this.perPage,
    this.isRefresh = false,
  });

  @override
  List<Object?> get props => [categoryId, page, perPage, isRefresh];
}

class ChangePageEvent extends AlmawdueaEvent {
  final int categoryId;
  final int page;
  final int perPage;

  const ChangePageEvent({
    required this.categoryId,
    required this.page,
    required this.perPage,
  });

  @override
  List<Object?> get props => [categoryId, page, perPage];
}

// ===== ARTICLE DETAIL EVENTS =====
class FetchArticleDetailEvent extends AlmawdueaEvent {
  final int articleId;

  const FetchArticleDetailEvent({
    required this.articleId,
  });

  @override
  List<Object?> get props => [articleId];
}

// ===== CARD CLICK EVENTS =====
class ArticleCardClickEvent extends AlmawdueaEvent {
  final AlmawdueaArticle article;

  const ArticleCardClickEvent({
    required this.article,
  });

  @override
  List<Object?> get props => [article];
}
