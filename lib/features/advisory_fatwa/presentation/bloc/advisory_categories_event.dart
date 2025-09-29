import 'package:equatable/equatable.dart';

abstract class AdvisoryCategoriesEvent extends Equatable {
  const AdvisoryCategoriesEvent();

  @override
  List<Object?> get props => [];
}

class FetchAdvisoryCategoriesEvent extends AdvisoryCategoriesEvent {
  final int categoriesPerPage;
  final int categoriesPage;

  const FetchAdvisoryCategoriesEvent({
    this.categoriesPerPage = 3,
    this.categoriesPage = 1,
  });

  @override
  List<Object?> get props => [categoriesPerPage, categoriesPage];
}

class LoadMoreAdvisoryCategoriesEvent extends AdvisoryCategoriesEvent {
  const LoadMoreAdvisoryCategoriesEvent();
}
