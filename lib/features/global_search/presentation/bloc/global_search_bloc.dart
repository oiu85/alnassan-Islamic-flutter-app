import 'dart:async';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../domain/repository/global_search_repository.dart';
import '../../data/model/search_response_model.dart';
import 'global_search_event.dart';
import 'global_search_state.dart';

@injectable
class GlobalSearchBloc extends Bloc<GlobalSearchEvent, GlobalSearchState> {
  Timer? _keyboardCheckTimer;
  final GlobalSearchRepository _repository;
  final List<String> _filterOptions = [
    'جميع الأقسام',
    'قسم المقالات',
    'قسم الفتاوى',
    'قسم الصوتيات',
  ];

  GlobalSearchBloc(this._repository) : super(const GlobalSearchState()) {
    on<SearchTextChanged>(_onSearchTextChanged);
    on<FilterChanged>(_onFilterChanged);
    on<SearchFieldFocused>(_onSearchFieldFocused);
    on<SearchFieldUnfocused>(_onSearchFieldUnfocused);
    on<ClearSearch>(_onClearSearch);
    on<DismissKeyboard>(_onDismissKeyboard);
    on<PageDeactivated>(_onPageDeactivated);
    on<ClearSearchState>(_onClearSearchState);
    on<PerformSearch>(_onPerformSearch);
    on<LoadMoreResults>(_onLoadMoreResults);
  }

  void _onSearchTextChanged(SearchTextChanged event, Emitter<GlobalSearchState> emit) {
    final isSearchEmpty = event.searchText.trim().isEmpty;
    emit(state.copyWith(
      searchText: event.searchText,
      isSearchEmpty: isSearchEmpty,
      isSearching: !isSearchEmpty,
    ));
  }

  void _onFilterChanged(FilterChanged event, Emitter<GlobalSearchState> emit) {
    emit(state.copyWith(selectedFilter: event.selectedFilter));
  }

  void _onSearchFieldFocused(SearchFieldFocused event, Emitter<GlobalSearchState> emit) {
    emit(state.copyWith(
      isSearchFieldFocused: true,
      shouldShowKeyboard: true,
    ));
  }

  void _onSearchFieldUnfocused(SearchFieldUnfocused event, Emitter<GlobalSearchState> emit) {
    emit(state.copyWith(
      isSearchFieldFocused: false,
      shouldShowKeyboard: false,
    ));
  }

  void _onClearSearch(ClearSearch event, Emitter<GlobalSearchState> emit) {
    emit(state.copyWith(
      searchText: '',
      isSearchEmpty: true,
      isSearching: false,
    ));
  }

  void _onDismissKeyboard(DismissKeyboard event, Emitter<GlobalSearchState> emit) {
    emit(state.copyWith(
      isSearchFieldFocused: false,
      shouldShowKeyboard: false,
    ));
  }

  void _onPageDeactivated(PageDeactivated event, Emitter<GlobalSearchState> emit) {
    // Only dismiss keyboard if the search field is not focused
    if (!state.isSearchFieldFocused) {
      emit(state.copyWith(
        isSearchFieldFocused: false,
        shouldShowKeyboard: false,
      ));
    }
  }

  void _onClearSearchState(ClearSearchState event, Emitter<GlobalSearchState> emit) {
    emit(const GlobalSearchState());
  }

  void _onPerformSearch(PerformSearch event, Emitter<GlobalSearchState> emit) async {
    if (event.query.trim().isEmpty) {
      emit(state.copyWith(
        isSearchEmpty: true,
        searchResults: null,
        errorMessage: null,
        isLoading: false,
      ));
      return;
    }

    if (event.loadMore) {
      emit(state.copyWith(isLoadingMore: true));
    } else {
      emit(state.copyWith(
        isLoading: true,
        errorMessage: null,
        currentPage: 1,
      ));
    }

    final result = await _repository.searchContent(
      query: event.query,
      type: event.type,
      page: event.page,
      perPage: 10,
    );

    result.fold(
      (error) {
        emit(state.copyWith(
          isLoading: false,
          isLoadingMore: false,
          errorMessage: error,
        ));
      },
      (searchResponse) {
        final currentResults = event.loadMore ? state.searchResults : null;
        final newResults = _mergeSearchResults(currentResults, searchResponse);
        
        emit(state.copyWith(
          isLoading: false,
          isLoadingMore: false,
          searchResults: newResults,
          currentPage: event.page,
          hasMoreResults: _hasMoreResults(searchResponse),
          errorMessage: null,
        ));
      },
    );
  }

  void _onLoadMoreResults(LoadMoreResults event, Emitter<GlobalSearchState> emit) {
    if (state.searchText.isNotEmpty && state.hasMoreResults && !state.isLoadingMore) {
      add(PerformSearch(
        query: state.searchText,
        type: state.selectedFilter != 'جميع الأقسام' ? state.selectedFilter : null,
        page: state.currentPage + 1,
        loadMore: true,
      ));
    }
  }

  SearchResponseModel _mergeSearchResults(SearchResponseModel? current, SearchResponseModel newResults) {
    if (current == null) return newResults;
    
    return SearchResponseModel(
      status: newResults.status,
      data: SearchDataModel(
        articles: [...current.data.articles, ...newResults.data.articles],
        sounds: [...current.data.sounds, ...newResults.data.sounds],
        advisories: [...current.data.advisories, ...newResults.data.advisories],
      ),
      meta: newResults.meta,
    );
  }

  bool _hasMoreResults(SearchResponseModel results) {
    final totalResults = results.data.articles.length + 
                        results.data.sounds.length + 
                        results.data.advisories.length;
    return totalResults >= 10; // Assuming 10 is the per_page limit
  }

  // Public methods for external use
  void startKeyboardMonitoring() {
    // Removed aggressive keyboard monitoring that was causing issues
    // Keyboard will be managed through focus events only
  }

  void stopKeyboardMonitoring() {
    _keyboardCheckTimer?.cancel();
  }

  void dismissKeyboard() {
    // System-level keyboard dismissal
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    add(const DismissKeyboard());
  }

  void clearSearchState() {
    add(const ClearSearchState());
  }

  List<String> get filterOptions => _filterOptions;

  @override
  Future<void> close() {
    _keyboardCheckTimer?.cancel();
    return super.close();
  }
}
