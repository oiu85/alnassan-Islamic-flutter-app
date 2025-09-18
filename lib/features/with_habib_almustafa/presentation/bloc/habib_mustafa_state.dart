import 'package:equatable/equatable.dart';

import '../../../../core/models/page_state/bloc_status.dart';
import '../../data/model/habib_mustafa_model.dart';

class HabibMustafaState extends Equatable {
  final BlocStatus status;
  final HabibMustafaModel? habibMustafaData;
  final List<SubCategory> subCategories;
  final int currentArticlesPage;
  final int currentCategoriesPage;
  final bool hasReachedMax;
  final String? error;

  const HabibMustafaState({
    this.status = const BlocStatus.initial(),
    this.habibMustafaData,
    this.subCategories = const [],
    this.currentArticlesPage = 1,
    this.currentCategoriesPage = 1,
    this.hasReachedMax = false,
    this.error,
  });

  HabibMustafaState copyWith({
    BlocStatus? status,
    HabibMustafaModel? habibMustafaData,
    List<SubCategory>? subCategories,
    int? currentArticlesPage,
    int? currentCategoriesPage,
    bool? hasReachedMax,
    String? error,
  }) {
    return HabibMustafaState(
      status: status ?? this.status,
      habibMustafaData: habibMustafaData ?? this.habibMustafaData,
      subCategories: subCategories ?? this.subCategories,
      currentArticlesPage: currentArticlesPage ?? this.currentArticlesPage,
      currentCategoriesPage: currentCategoriesPage ?? this.currentCategoriesPage,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      error: error ?? this.error,
    );
  }

  @override
  List<Object?> get props => [
        status,
        habibMustafaData,
        subCategories,
        currentArticlesPage,
        currentCategoriesPage,
        hasReachedMax,
        error,
      ];
}

