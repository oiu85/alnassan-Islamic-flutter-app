import 'dart:async';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../../domain/repository/global_search_repository.dart';
import '../../data/model/search_response_model.dart';
import 'global_search_event.dart';
import 'global_search_state.dart';

@injectable
class GlobalSearchBloc extends Bloc<GlobalSearchEvent, GlobalSearchState> {
  Timer? _keyboardCheckTimer;
  Timer? _debounceTimer;
  final GlobalSearchRepository _repository;
  final List<String> _filterOptions = [
    'جميع الأقسام',
    'قسم المقالات',
    'قسم الفتاوى',
    'قسم الصوتيات',
  ];
  
  // Minimum query length for search
  static const int _minQueryLength = 2;
  // Debounce duration for search
  static const Duration _debounceDuration = Duration(milliseconds: 500);
  // Max search history items
  static const int _maxHistoryItems = 10;
  // Search history storage key
  static const String _searchHistoryKey = 'search_history';

  GlobalSearchBloc(this._repository) : super(const GlobalSearchState()) {
    // Load search history when bloc is created
    _loadSearchHistory();
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
    on<AddToSearchHistory>(_onAddToSearchHistory);
    on<RemoveFromSearchHistory>(_onRemoveFromSearchHistory);
    on<ClearSearchHistory>(_onClearSearchHistory);
    on<UpdateSearchHistory>(_onUpdateSearchHistory);
  }

  void _onSearchTextChanged(SearchTextChanged event, Emitter<GlobalSearchState> emit) {
    final searchText = event.searchText.trim();
    final isSearchEmpty = searchText.isEmpty;
    
    emit(state.copyWith(
      searchText: event.searchText,
      isSearchEmpty: isSearchEmpty,
      isSearching: !isSearchEmpty,
    ));
    
    // Cancel any existing timer
    _debounceTimer?.cancel();
    
    // If search is empty, clear results
    if (isSearchEmpty) {
      emit(state.copyWith(
        searchResults: null,
        errorMessage: null,
      ));
      return;
    }
    
    // Only trigger search if query is long enough
    if (searchText.length >= _minQueryLength) {
      // Debounce search to avoid excessive API calls
      _debounceTimer = Timer(_debounceDuration, () {
        add(PerformSearch(
          query: searchText,
          type: state.selectedFilter != 'جميع الأقسام' ? state.selectedFilter : null,
        ));
      });
    }
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
    final query = event.query.trim();
    
    // Validate search query
    if (query.isEmpty) {
      emit(state.copyWith(
        isSearchEmpty: true,
        searchResults: null,
        errorMessage: null,
        isLoading: false,
      ));
      return;
    }
    
    // Validate minimum query length
    if (query.length < _minQueryLength) {
      emit(state.copyWith(
        isLoading: false,
        isLoadingMore: false,
        errorMessage: 'الرجاء إدخال كلمة بحث أطول',
      ));
      return;
    }

    AppLogger.business('Performing search', {
      'query': query,
      'type': event.type,
      'page': event.page,
      'loadMore': event.loadMore,
    });

    if (event.loadMore) {
      emit(state.copyWith(isLoadingMore: true));
    } else {
      emit(state.copyWith(
        isLoading: true,
        errorMessage: null,
        currentPage: 1,
      ));
    }

    try {
      final result = await _repository.searchContent(
        query: query,
        type: event.type,
        page: event.page,
        perPage: 10,
      );

      result.fold(
        (error) {
          final userFriendlyError = _getUserFriendlyErrorMessage(error);
          AppLogger.error('Search error: $error');
          
          emit(state.copyWith(
            isLoading: false,
            isLoadingMore: false,
            errorMessage: userFriendlyError,
          ));
        },
        (searchResponse) {
          final currentResults = event.loadMore ? state.searchResults : null;
          final newResults = _mergeSearchResults(currentResults, searchResponse);
          
          final hasResults = _hasAnyResults(searchResponse);
          
          emit(state.copyWith(
            isLoading: false,
            isLoadingMore: false,
            searchResults: newResults,
            currentPage: event.page,
            hasMoreResults: _hasMoreResults(searchResponse),
            errorMessage: null,
            noResultsFound: !hasResults,
          ));
          
          // Add successful search to history
          if (!event.loadMore && query.isNotEmpty) {
            add(AddToSearchHistory(query));
          }
        },
      );
    } catch (e) {
      AppLogger.error('Unexpected search error: $e');
      emit(state.copyWith(
        isLoading: false,
        isLoadingMore: false,
        errorMessage: 'حدث خطأ غير متوقع. الرجاء المحاولة مرة أخرى.',
      ));
    }
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
  
  bool _hasAnyResults(SearchResponseModel results) {
    return results.data.articles.isNotEmpty || 
           results.data.sounds.isNotEmpty || 
           results.data.advisories.isNotEmpty;
  }
  
  String _getUserFriendlyErrorMessage(String error) {
    // Convert technical errors to user-friendly messages
    if (error.toLowerCase().contains('timeout') || 
        error.toLowerCase().contains('connection') ||
        error.toLowerCase().contains('network')) {
      return 'لا يمكن الاتصال بالخادم. يرجى التحقق من اتصال الإنترنت الخاص بك والمحاولة مرة أخرى.';
    }
    
    if (error.toLowerCase().contains('not found') || 
        error.toLowerCase().contains('404')) {
      return 'لم يتم العثور على نتائج البحث. يرجى تجربة كلمات بحث مختلفة.';
    }
    
    if (error.toLowerCase().contains('server') || 
        error.toLowerCase().contains('500')) {
      return 'هناك مشكلة في الخادم. يرجى المحاولة مرة أخرى لاحقًا.';
    }
    
    // Default user-friendly message
    return 'حدث خطأ أثناء البحث. يرجى المحاولة مرة أخرى.';
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

  // Search history management
  void _onAddToSearchHistory(AddToSearchHistory event, Emitter<GlobalSearchState> emit) async {
    final query = event.query.trim();
    if (query.isEmpty || query.length < _minQueryLength) return;
    
    // Create a new list to avoid modifying the existing one
    final currentHistory = List<String>.from(state.searchHistory);
    
    // Remove the query if it already exists (to move it to the top)
    currentHistory.remove(query);
    
    // Add the new query at the beginning
    currentHistory.insert(0, query);
    
    // Limit the history size
    final limitedHistory = currentHistory.take(_maxHistoryItems).toList();
    
    // Update state
    emit(state.copyWith(searchHistory: limitedHistory));
    
    // Save to shared preferences
    _saveSearchHistory(limitedHistory);
  }
  
  void _onRemoveFromSearchHistory(RemoveFromSearchHistory event, Emitter<GlobalSearchState> emit) async {
    final query = event.query;
    
    // Create a new list without the removed query
    final updatedHistory = List<String>.from(state.searchHistory)
      ..remove(query);
    
    // Update state
    emit(state.copyWith(searchHistory: updatedHistory));
    
    // Save to shared preferences
    _saveSearchHistory(updatedHistory);
  }
  
  void _onClearSearchHistory(ClearSearchHistory event, Emitter<GlobalSearchState> emit) async {
    // Update state with empty history
    emit(state.copyWith(searchHistory: []));
    
    // Clear from shared preferences
    _saveSearchHistory([]);
  }
  
  void _onUpdateSearchHistory(UpdateSearchHistory event, Emitter<GlobalSearchState> emit) {
    emit(state.copyWith(searchHistory: event.history));
  }
  
  Future<void> _loadSearchHistory() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final history = prefs.getStringList(_searchHistoryKey) ?? [];
      add(UpdateSearchHistory(history));
    } catch (e) {
      AppLogger.error('Error loading search history: $e');
    }
  }
  
  Future<void> _saveSearchHistory(List<String> history) async {
    try {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setStringList(_searchHistoryKey, history);
    } catch (e) {
      AppLogger.error('Error saving search history: $e');
    }
  }
  
  @override
  Future<void> close() {
    _keyboardCheckTimer?.cancel();
    _debounceTimer?.cancel();
    return super.close();
  }
}
