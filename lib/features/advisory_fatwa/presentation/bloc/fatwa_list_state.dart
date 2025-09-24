import 'package:equatable/equatable.dart';
import '../../../../core/models/page_state/bloc_status.dart';
import '../../data/model/fatwa_list_model.dart';
import '../../data/model/advisory_categories_model.dart';

class FatwaListState extends Equatable {
  final BlocStatus status;
  final FatwaListCategory? category;
  final List<AdvisoryItem> fatwas;
  final FatwaListPagination? pagination;
  final FatwaListMeta? meta;
  final bool hasReachedMax;
  final int currentPage;
  final String? error;

  const FatwaListState({
    this.status = const BlocStatus.initial(),
    this.category,
    this.fatwas = const [],
    this.pagination,
    this.meta,
    this.hasReachedMax = false,
    this.currentPage = 1,
    this.error,
  });

  FatwaListState copyWith({
    BlocStatus? status,
    FatwaListCategory? category,
    List<AdvisoryItem>? fatwas,
    FatwaListPagination? pagination,
    FatwaListMeta? meta,
    bool? hasReachedMax,
    int? currentPage,
    String? error,
  }) {
    return FatwaListState(
      status: status ?? this.status,
      category: category ?? this.category,
      fatwas: fatwas ?? this.fatwas,
      pagination: pagination ?? this.pagination,
      meta: meta ?? this.meta,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      currentPage: currentPage ?? this.currentPage,
      error: error ?? this.error,
    );
  }

  @override
  List<Object?> get props => [
        status,
        category,
        fatwas,
        pagination,
        meta,
        hasReachedMax,
        currentPage,
        error,
      ];
}
