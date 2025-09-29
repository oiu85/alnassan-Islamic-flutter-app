import '../../data/model.dart';

abstract class LessonEvent {}

class FetchLessonsEvent extends LessonEvent {
  final List<int> categoryIds;
  final int page;
  final int perPage;

  FetchLessonsEvent({
    required this.categoryIds,
    required this.page,
    required this.perPage,
  });
}

class LoadMoreLessonsEvent extends LessonEvent {}

class ChangePageEvent extends LessonEvent {
  final int page;

  ChangePageEvent({required this.page});
}

class FetchLessonArticleDetailEvent extends LessonEvent {
  final int articleId;

  FetchLessonArticleDetailEvent({required this.articleId});
}

class LessonCardClickEvent extends LessonEvent {
  final LessonArticle lesson;

  LessonCardClickEvent({required this.lesson});
}

class LessonSubCategoryCardClickEvent extends LessonEvent {
  final LessonSubCategoryArticle lesson;

  LessonSubCategoryCardClickEvent({required this.lesson});
}

class FetchAllLessonsFromCategoryEvent extends LessonEvent {
  final int categoryId;
  final int page;
  final int perPage;

  FetchAllLessonsFromCategoryEvent({
    required this.categoryId,
    required this.page,
    required this.perPage,
  });
}

class MarkArticleNavigatedEvent extends LessonEvent {}

class FetchLessonsSubCategoriesEvent extends LessonEvent {
  final int catMenus;
  final int articlesPerPage;
  final int categoriesPerPage;
  final int articlesPage;
  final int categoriesPage;

  FetchLessonsSubCategoriesEvent({
    required this.catMenus,
    this.articlesPerPage = 3,
    this.categoriesPerPage = 3,
    this.articlesPage = 1,
    this.categoriesPage = 1,
  });
}

class LoadMoreLessonsSubCategoriesEvent extends LessonEvent {}