import 'package:equatable/equatable.dart';

abstract class FatwaListEvent extends Equatable {
  const FatwaListEvent();

  @override
  List<Object?> get props => [];
}

class FetchFatwaListEvent extends FatwaListEvent {
  final int categoryId;
  final int perPage;
  final int page;
  final String sortBy;
  final String sortOrder;

  const FetchFatwaListEvent({
    required this.categoryId,
    this.perPage = 5,
    this.page = 1,
    this.sortBy = 'priority',
    this.sortOrder = 'desc',
  });

  @override
  List<Object?> get props => [categoryId, perPage, page, sortBy, sortOrder];
}

class LoadMoreFatwasEvent extends FatwaListEvent {
  const LoadMoreFatwasEvent();

  @override
  List<Object?> get props => [];
}

class RefreshFatwaListEvent extends FatwaListEvent {
  const RefreshFatwaListEvent();

  @override
  List<Object?> get props => [];
}


