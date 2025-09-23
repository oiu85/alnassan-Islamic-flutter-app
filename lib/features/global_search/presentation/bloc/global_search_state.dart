import 'package:equatable/equatable.dart';
import '../../data/model/search_response_model.dart';

class GlobalSearchState extends Equatable {
  final String searchText;
  final String selectedFilter;
  final bool isSearchEmpty;
  final bool isSearchFieldFocused;
  final bool shouldShowKeyboard;
  final bool isSearching;
  final bool isLoading;
  final bool isLoadingMore;
  final String? errorMessage;
  final SearchResponseModel? searchResults;
  final int currentPage;
  final bool hasMoreResults;

  const GlobalSearchState({
    this.searchText = '',
    this.selectedFilter = 'جميع الأقسام',
    this.isSearchEmpty = true,
    this.isSearchFieldFocused = false,
    this.shouldShowKeyboard = false,
    this.isSearching = false,
    this.isLoading = false,
    this.isLoadingMore = false,
    this.errorMessage,
    this.searchResults,
    this.currentPage = 1,
    this.hasMoreResults = false,
  });

  GlobalSearchState copyWith({
    String? searchText,
    String? selectedFilter,
    bool? isSearchEmpty,
    bool? isSearchFieldFocused,
    bool? shouldShowKeyboard,
    bool? isSearching,
    bool? isLoading,
    bool? isLoadingMore,
    String? errorMessage,
    SearchResponseModel? searchResults,
    int? currentPage,
    bool? hasMoreResults,
  }) {
    return GlobalSearchState(
      searchText: searchText ?? this.searchText,
      selectedFilter: selectedFilter ?? this.selectedFilter,
      isSearchEmpty: isSearchEmpty ?? this.isSearchEmpty,
      isSearchFieldFocused: isSearchFieldFocused ?? this.isSearchFieldFocused,
      shouldShowKeyboard: shouldShowKeyboard ?? this.shouldShowKeyboard,
      isSearching: isSearching ?? this.isSearching,
      isLoading: isLoading ?? this.isLoading,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      errorMessage: errorMessage ?? this.errorMessage,
      searchResults: searchResults ?? this.searchResults,
      currentPage: currentPage ?? this.currentPage,
      hasMoreResults: hasMoreResults ?? this.hasMoreResults,
    );
  }

  @override
  List<Object?> get props => [
        searchText,
        selectedFilter,
        isSearchEmpty,
        isSearchFieldFocused,
        shouldShowKeyboard,
        isSearching,
        isLoading,
        isLoadingMore,
        errorMessage,
        searchResults,
        currentPage,
        hasMoreResults,
      ];
}
