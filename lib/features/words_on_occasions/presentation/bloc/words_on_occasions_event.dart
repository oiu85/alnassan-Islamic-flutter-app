import 'package:equatable/equatable.dart';

import '../../data/model/words_on_occasions_model.dart';

abstract class WordsOnOccasionsEvent extends Equatable {
  const WordsOnOccasionsEvent();

  @override
  List<Object?> get props => [];
}

class FetchWordsOnOccasionsDataEvent extends WordsOnOccasionsEvent {
  final int catId;
  final int catMenus;
  final int articlesPerPage;
  final int categoriesPerPage;
  final int articlesPage;
  final int categoriesPage;

  const FetchWordsOnOccasionsDataEvent({
    this.catId = 9,
    this.catMenus = 55,
    this.articlesPerPage = 3,
    this.categoriesPerPage = 3,
    this.articlesPage = 1,
    this.categoriesPage = 1,
  });

  @override
  List<Object?> get props => [
        catId,
        catMenus,
        articlesPerPage,
        categoriesPerPage,
        articlesPage,
        categoriesPage,
      ];
}

class LoadMoreSubCategoriesEvent extends WordsOnOccasionsEvent {
  final int categoriesPage;

  const LoadMoreSubCategoriesEvent({
    required this.categoriesPage,
  });

  @override
  List<Object?> get props => [categoriesPage];
}

class NavigateToCategoryArticlesEvent extends WordsOnOccasionsEvent {
  final int categoryId;
  final String categoryTitle;

  const NavigateToCategoryArticlesEvent({
    required this.categoryId,
    required this.categoryTitle,
  });

  @override
  List<Object?> get props => [categoryId, categoryTitle];
}

class FetchArticleDetailEvent extends WordsOnOccasionsEvent {
  final int articleId;

  const FetchArticleDetailEvent({
    required this.articleId,
  });

  @override
  List<Object?> get props => [articleId];
}

class ArticleCardClickEvent extends WordsOnOccasionsEvent {
  final WordsOnOccasionsArticle article;

  const ArticleCardClickEvent({
    required this.article,
  });

  @override
  List<Object?> get props => [article];
}

class MarkArticleNavigatedEvent extends WordsOnOccasionsEvent {
  const MarkArticleNavigatedEvent();
}
