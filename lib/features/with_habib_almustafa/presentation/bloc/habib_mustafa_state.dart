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
  
  // Category Articles State
  final CategoryArticlesModel? categoryArticlesData;
  final List<HabibArticle> categoryArticles;
  final int currentCategoryArticlesPage;
  final bool hasReachedMaxCategoryArticles;
  final String? categoryTitle;
  
  // Article Detail State
  final BlocStatus articleDetailStatus;
  final ArticleDetailModel? articleDetailData;
  final HabibArticle? selectedArticle;
  final bool hasNavigatedToArticle;

  const HabibMustafaState({
    this.status = const BlocStatus.initial(),
    this.habibMustafaData,
    this.subCategories = const [],
    this.currentArticlesPage = 1,
    this.currentCategoriesPage = 1,
    this.hasReachedMax = false,
    this.error,
    this.categoryArticlesData,
    this.categoryArticles = const [],
    this.currentCategoryArticlesPage = 1,
    this.hasReachedMaxCategoryArticles = false,
    this.categoryTitle,
    this.articleDetailStatus = const BlocStatus.initial(),
    this.articleDetailData,
    this.selectedArticle,
    this.hasNavigatedToArticle = false,
  });

  HabibMustafaState copyWith({
    BlocStatus? status,
    HabibMustafaModel? habibMustafaData,
    List<SubCategory>? subCategories,
    int? currentArticlesPage,
    int? currentCategoriesPage,
    bool? hasReachedMax,
    String? error,
    CategoryArticlesModel? categoryArticlesData,
    List<HabibArticle>? categoryArticles,
    int? currentCategoryArticlesPage,
    bool? hasReachedMaxCategoryArticles,
    String? categoryTitle,
    BlocStatus? articleDetailStatus,
    ArticleDetailModel? articleDetailData,
    HabibArticle? selectedArticle,
    bool? hasNavigatedToArticle,
  }) {
    return HabibMustafaState(
      status: status ?? this.status,
      habibMustafaData: habibMustafaData ?? this.habibMustafaData,
      subCategories: subCategories ?? this.subCategories,
      currentArticlesPage: currentArticlesPage ?? this.currentArticlesPage,
      currentCategoriesPage: currentCategoriesPage ?? this.currentCategoriesPage,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      error: error ?? this.error,
      categoryArticlesData: categoryArticlesData ?? this.categoryArticlesData,
      categoryArticles: categoryArticles ?? this.categoryArticles,
      currentCategoryArticlesPage: currentCategoryArticlesPage ?? this.currentCategoryArticlesPage,
      hasReachedMaxCategoryArticles: hasReachedMaxCategoryArticles ?? this.hasReachedMaxCategoryArticles,
      categoryTitle: categoryTitle ?? this.categoryTitle,
      articleDetailStatus: articleDetailStatus ?? this.articleDetailStatus,
      articleDetailData: articleDetailData ?? this.articleDetailData,
      selectedArticle: selectedArticle ?? this.selectedArticle,
      hasNavigatedToArticle: hasNavigatedToArticle ?? this.hasNavigatedToArticle,
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
        categoryArticlesData,
        categoryArticles,
        currentCategoryArticlesPage,
        hasReachedMaxCategoryArticles,
        categoryTitle,
        articleDetailStatus,
        articleDetailData,
        selectedArticle,
        hasNavigatedToArticle,
      ];
}
