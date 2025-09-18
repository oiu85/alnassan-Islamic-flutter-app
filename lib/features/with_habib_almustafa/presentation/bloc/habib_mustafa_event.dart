import 'package:equatable/equatable.dart';

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

