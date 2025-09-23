import 'package:equatable/equatable.dart';

abstract class GlobalSearchEvent extends Equatable {
  const GlobalSearchEvent();

  @override
  List<Object?> get props => [];
}

class SearchTextChanged extends GlobalSearchEvent {
  final String searchText;

  const SearchTextChanged(this.searchText);

  @override
  List<Object?> get props => [searchText];
}

class FilterChanged extends GlobalSearchEvent {
  final String selectedFilter;

  const FilterChanged(this.selectedFilter);

  @override
  List<Object?> get props => [selectedFilter];
}

class SearchFieldFocused extends GlobalSearchEvent {
  const SearchFieldFocused();
}

class SearchFieldUnfocused extends GlobalSearchEvent {
  const SearchFieldUnfocused();
}

class ClearSearch extends GlobalSearchEvent {
  const ClearSearch();
}

class DismissKeyboard extends GlobalSearchEvent {
  const DismissKeyboard();
}

class PageDeactivated extends GlobalSearchEvent {
  const PageDeactivated();
}

class ClearSearchState extends GlobalSearchEvent {
  const ClearSearchState();
}

class PerformSearch extends GlobalSearchEvent {
  final String query;
  final String? type;
  final int page;
  final bool loadMore;

  const PerformSearch({
    required this.query,
    this.type,
    this.page = 1,
    this.loadMore = false,
  });

  @override
  List<Object?> get props => [query, type, page, loadMore];
}

class LoadMoreResults extends GlobalSearchEvent {
  const LoadMoreResults();
}
