import 'package:equatable/equatable.dart';

import '../../data/model.dart';

abstract class BiographiesEvent extends Equatable {
  const BiographiesEvent();

  @override
  List<Object?> get props => [];
}

class FetchBiographiesArticlesEvent extends BiographiesEvent {
  final int categoryId;
  final int page;
  final int perPage;
  final bool isRefresh;

  const FetchBiographiesArticlesEvent({
    required this.categoryId,
    required this.page,
    required this.perPage,
    this.isRefresh = false,
  });

  @override
  List<Object?> get props => [categoryId, page, perPage, isRefresh];
}

class LoadMoreBiographiesArticlesEvent extends BiographiesEvent {
  final int categoryId;
  final int perPage;

  const LoadMoreBiographiesArticlesEvent({
    required this.categoryId,
    required this.perPage,
  });

  @override
  List<Object?> get props => [categoryId, perPage];
}

class ChangePageEvent extends BiographiesEvent {
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
class FetchArticleDetailEvent extends BiographiesEvent {
  final int articleId;

  const FetchArticleDetailEvent({
    required this.articleId,
  });

  @override
  List<Object?> get props => [articleId];
}

// ===== CARD CLICK EVENTS =====
class ArticleCardClickEvent extends BiographiesEvent {
  final BiographiesArticle article;

  const ArticleCardClickEvent({
    required this.article,
  });

  @override
  List<Object?> get props => [article];
}

class ChangePerPageEvent extends BiographiesEvent {
  final int categoryId;
  final int perPage;

  const ChangePerPageEvent({
    required this.categoryId,
    required this.perPage,
  });

  @override
  List<Object?> get props => [categoryId, perPage];
}

class MarkArticleNavigatedEvent extends BiographiesEvent {}
