import 'package:equatable/equatable.dart';

import '../../../../core/models/page_state/bloc_status.dart';
import '../../data/model/words_on_occasions_model.dart';

class WordsOnOccasionsState extends Equatable {
  final BlocStatus status;
  final WordsOnOccasionsModel? wordsOnOccasionsData;
  final List<WordsOnOccasionsCategory> subCategories;
  final int currentCategoriesPage;
  final bool hasReachedMax;
  final String? error;
  
  // Article detail states
  final BlocStatus articleDetailStatus;
  final WordsOnOccasionsArticle? selectedArticle;
  final bool hasNavigatedToArticle;

  const WordsOnOccasionsState({
    this.status = const BlocStatus.initial(),
    this.wordsOnOccasionsData,
    this.subCategories = const [],
    this.currentCategoriesPage = 1,
    this.hasReachedMax = false,
    this.error,
    this.articleDetailStatus = const BlocStatus.initial(),
    this.selectedArticle,
    this.hasNavigatedToArticle = false,
  });

  WordsOnOccasionsState copyWith({
    BlocStatus? status,
    WordsOnOccasionsModel? wordsOnOccasionsData,
    List<WordsOnOccasionsCategory>? subCategories,
    int? currentCategoriesPage,
    bool? hasReachedMax,
    String? error,
    BlocStatus? articleDetailStatus,
    WordsOnOccasionsArticle? selectedArticle,
    bool? hasNavigatedToArticle,
  }) {
    return WordsOnOccasionsState(
      status: status ?? this.status,
      wordsOnOccasionsData: wordsOnOccasionsData ?? this.wordsOnOccasionsData,
      subCategories: subCategories ?? this.subCategories,
      currentCategoriesPage: currentCategoriesPage ?? this.currentCategoriesPage,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      error: error ?? this.error,
      articleDetailStatus: articleDetailStatus ?? this.articleDetailStatus,
      selectedArticle: selectedArticle ?? this.selectedArticle,
      hasNavigatedToArticle: hasNavigatedToArticle ?? this.hasNavigatedToArticle,
    );
  }

  @override
  List<Object?> get props => [
        status,
        wordsOnOccasionsData,
        subCategories,
        currentCategoriesPage,
        hasReachedMax,
        error,
        articleDetailStatus,
        selectedArticle,
        hasNavigatedToArticle,
      ];
}
