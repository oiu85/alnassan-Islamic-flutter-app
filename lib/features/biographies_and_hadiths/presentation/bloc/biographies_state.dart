import 'package:equatable/equatable.dart';

import '../../../../core/models/page_state/bloc_status.dart';
import '../../data/model.dart';

class BiographiesState extends Equatable {
  final BlocStatus status;
  final BiographiesAndHadithsModel? biographiesData;
  final List<BiographiesArticle> articles;
  final int currentPage;
  final int perPage;
  final int totalPages;
  final int totalItems;
  final bool hasReachedMax;
  final String? error;

  const BiographiesState({
    this.status = const BlocStatus.initial(),
    this.biographiesData,
    this.articles = const [],
    this.currentPage = 1,
    this.perPage = 10, // Fixed to 10 items per page
    this.totalPages = 1,
    this.totalItems = 0,
    this.hasReachedMax = false,
    this.error,
  });

  BiographiesState copyWith({
    BlocStatus? status,
    BiographiesAndHadithsModel? biographiesData,
    List<BiographiesArticle>? articles,
    int? currentPage,
    int? perPage,
    int? totalPages,
    int? totalItems,
    bool? hasReachedMax,
    String? error,
  }) {
    return BiographiesState(
      status: status ?? this.status,
      biographiesData: biographiesData ?? this.biographiesData,
      articles: articles ?? this.articles,
      currentPage: currentPage ?? this.currentPage,
      perPage: perPage ?? this.perPage,
      totalPages: totalPages ?? this.totalPages,
      totalItems: totalItems ?? this.totalItems,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      error: error ?? this.error,
    );
  }

  @override
  List<Object?> get props => [
        status,
        biographiesData,
        articles,
        currentPage,
        perPage,
        totalPages,
        totalItems,
        hasReachedMax,
        error,
      ];
}
