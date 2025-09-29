import 'package:equatable/equatable.dart';

import '../../data/model/habib_mustafa_model.dart';

abstract class HabibMustafaEvent extends Equatable {
  const HabibMustafaEvent();

  @override
  List<Object?> get props => [];
}

class FetchHabibMustafaDataEvent extends HabibMustafaEvent {
  final int catId;
  final int catMenus;
  final int articlesPerPage;
  final int categoriesPerPage;
  final int articlesPage;
  final int categoriesPage;

  const FetchHabibMustafaDataEvent({
    this.catId = 13,
    this.catMenus = 40,
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

class LoadMoreArticlesEvent extends HabibMustafaEvent {
  final int articlesPage;
  final int categoriesPage;

  const LoadMoreArticlesEvent({
    required this.articlesPage,
    required this.categoriesPage,
  });

  @override
  List<Object?> get props => [articlesPage, categoriesPage];
}

class FetchCategoryArticlesEvent extends HabibMustafaEvent {
  final int categoryId;
  final int page;
  final int perPage;

  const FetchCategoryArticlesEvent({
    required this.categoryId,
    this.page = 1,
    this.perPage = 6,
  });

  @override
  List<Object?> get props => [categoryId, page, perPage];
}

class LoadMoreCategoryArticlesEvent extends HabibMustafaEvent {
  final int categoryId;
  final int page;
  final int perPage;

  const LoadMoreCategoryArticlesEvent({
    required this.categoryId,
    required this.page,
    required this.perPage,
  });

  @override
  List<Object?> get props => [categoryId, page, perPage];
}

class ChangeCategoryPageEvent extends HabibMustafaEvent {
  final int categoryId;
  final int page;
  final int perPage;

  const ChangeCategoryPageEvent({
    required this.categoryId,
    required this.page,
    required this.perPage,
  });

  @override
  List<Object?> get props => [categoryId, page, perPage];
}

class FetchArticleDetailEvent extends HabibMustafaEvent {
  final int articleId;

  const FetchArticleDetailEvent({
    required this.articleId,
  });

  @override
  List<Object?> get props => [articleId];
}

class ArticleCardClickEvent extends HabibMustafaEvent {
  final HabibArticle article;

  const ArticleCardClickEvent({
    required this.article,
  });

  @override
  List<Object?> get props => [article];
}

class MarkArticleNavigatedEvent extends HabibMustafaEvent {
  const MarkArticleNavigatedEvent();
}

