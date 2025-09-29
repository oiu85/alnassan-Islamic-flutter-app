import 'package:equatable/equatable.dart';

abstract class CategoryDetailsEvent extends Equatable {
  const CategoryDetailsEvent();

  @override
  List<Object?> get props => [];
}

class FetchCategoryDetailsEvent extends CategoryDetailsEvent {
  final int categoryId;
  final int childrenPerPage;
  final int childrenPage;
  final int fatwasPerChild;

  const FetchCategoryDetailsEvent({
    required this.categoryId,
    this.childrenPerPage = 10,
    this.childrenPage = 1,
    this.fatwasPerChild = 3,
  });

  @override
  List<Object?> get props => [categoryId, childrenPerPage, childrenPage, fatwasPerChild];
}

class LoadMoreCategoryDetailsEvent extends CategoryDetailsEvent {
  final int categoryId;
  final int fatwasPerChild;

  const LoadMoreCategoryDetailsEvent({
    required this.categoryId,
    this.fatwasPerChild = 3,
  });

  @override
  List<Object?> get props => [categoryId, fatwasPerChild];
}
