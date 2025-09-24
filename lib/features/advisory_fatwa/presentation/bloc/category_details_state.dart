import 'package:equatable/equatable.dart';

import '../../../../core/models/page_state/bloc_status.dart';
import '../../data/model/category_details_model.dart';
import '../../data/model/advisory_categories_model.dart';

class CategoryDetailsState extends Equatable {
  final BlocStatus status;
  final ParentCategory? parentCategory;
  final List<ChildCategory> childCategories;
  final Pagination? pagination;
  final bool hasReachedMax;
  final int currentPage;
  final String? error;

  const CategoryDetailsState({
    this.status = const BlocStatus.initial(),
    this.parentCategory,
    this.childCategories = const [],
    this.pagination,
    this.hasReachedMax = false,
    this.currentPage = 1,
    this.error,
  });

  CategoryDetailsState copyWith({
    BlocStatus? status,
    ParentCategory? parentCategory,
    List<ChildCategory>? childCategories,
    Pagination? pagination,
    bool? hasReachedMax,  
    int? currentPage,
    String? error,
  }) {
    return CategoryDetailsState(
      status: status ?? this.status,
      parentCategory: parentCategory ?? this.parentCategory,
      childCategories: childCategories ?? this.childCategories,
      pagination: pagination ?? this.pagination,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      currentPage: currentPage ?? this.currentPage,
      error: error ?? this.error,
    );
  }

  @override
  List<Object?> get props => [
        status,
        parentCategory,
        childCategories,
        pagination,
        hasReachedMax,
        currentPage,
        error,
      ];
}
