import 'package:equatable/equatable.dart';

import '../../../../core/models/page_state/bloc_status.dart';
import '../../data/model/advisory_categories_model.dart';

class AdvisoryCategoriesState extends Equatable {
  final BlocStatus status;
  final List<ParentCategory> categories;
  final Pagination? pagination;
  final String? error;
  final bool hasReachedMax;
  final int currentPage;

  const AdvisoryCategoriesState({
    this.status = const BlocStatus.initial(),
    this.categories = const [],
    this.pagination,
    this.error,
    this.hasReachedMax = false,
    this.currentPage = 1,
  });

  AdvisoryCategoriesState copyWith({
    BlocStatus? status,
    List<ParentCategory>? categories,
    Pagination? pagination,
    String? error,
    bool? hasReachedMax,
    int? currentPage,
  }) {
    return AdvisoryCategoriesState(
      status: status ?? this.status,
      categories: categories ?? this.categories,
      pagination: pagination ?? this.pagination,
      error: error ?? this.error,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      currentPage: currentPage ?? this.currentPage,
    );
  }

  @override
  List<Object?> get props => [
        status,
        categories,
        pagination,
        error,
        hasReachedMax,
        currentPage,
      ];
}
