import 'package:equatable/equatable.dart';

import '../../data/model/word_of_the_month_model.dart';

abstract class WordOfTheMonthEvent extends Equatable {
  const WordOfTheMonthEvent();

  @override
  List<Object?> get props => [];
}

class FetchWordOfTheMonthDataEvent extends WordOfTheMonthEvent {
  final int catId;
  final String catMenus;
  final int articlesPerPage;
  final int articlesPage;

  const FetchWordOfTheMonthDataEvent({
    required this.catId,
    required this.catMenus,
    required this.articlesPerPage,
    required this.articlesPage,
  });

  @override
  List<Object?> get props => [catId, catMenus, articlesPerPage, articlesPage];
}

class ChangePageEvent extends WordOfTheMonthEvent {
  final int catId;
  final String catMenus;
  final int articlesPerPage;
  final int articlesPage;

  const ChangePageEvent({
    required this.catId,
    required this.catMenus,
    required this.articlesPerPage,
    required this.articlesPage,
  });

  @override
  List<Object?> get props => [catId, catMenus, articlesPerPage, articlesPage];
}

class FetchArticleDetailEvent extends WordOfTheMonthEvent {
  final int articleId;

  const FetchArticleDetailEvent({
    required this.articleId,
  });

  @override
  List<Object?> get props => [articleId];
}

class ArticleCardClickEvent extends WordOfTheMonthEvent {
  final WordOfTheMonthArticle article;

  const ArticleCardClickEvent({
    required this.article,
  });

  @override
  List<Object?> get props => [article];
}

class MarkArticleNavigatedEvent extends WordOfTheMonthEvent {
  const MarkArticleNavigatedEvent();
}

class ToggleArticleExpansionEvent extends WordOfTheMonthEvent {
  final int articleId;

  const ToggleArticleExpansionEvent({
    required this.articleId,
  });

  @override
  List<Object?> get props => [articleId];
}

