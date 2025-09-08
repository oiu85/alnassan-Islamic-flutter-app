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