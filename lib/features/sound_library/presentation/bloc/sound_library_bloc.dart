import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../domain/repository/sound_library_repository.dart';
import '../../data/model.dart';

@injectable
class SoundLibraryBloc extends Bloc<SoundLibraryEvent, SoundLibraryState> {
  final SoundLibraryRepository _repository;

  SoundLibraryBloc(this._repository) : super(SoundLibraryState()) {
    on<FetchParentCategoriesEvent>(_onFetchParentCategories);
    on<FetchChildCategoriesEvent>(_onFetchChildCategories);
    on<FetchSoundsEvent>(_onFetchSounds);
    on<LoadMoreParentCategoriesEvent>(_onLoadMoreParentCategories);
    on<LoadMoreChildCategoriesEvent>(_onLoadMoreChildCategories);
    on<LoadMoreSoundsEvent>(_onLoadMoreSounds);
    on<SelectParentCategoryEvent>(_onSelectParentCategory);
    on<SelectChildCategoryEvent>(_onSelectChildCategory);
    on<ResetSoundLibraryEvent>(_onReset);
    on<OnScrollEvent>(_onScroll);
    on<LoadSelectedCategoryContentEvent>(_onLoadSelectedCategoryContent);
    on<FetchSubcategorySoundsEvent>(_onFetchSubcategorySounds);
    on<OnSubcategoryScrollEvent>(_onSubcategoryScroll);
    on<LoadMoreParentCategoryContentEvent>(_onLoadMoreParentCategoryContent);
  }

  Future<void> _onFetchParentCategories(
    FetchParentCategoriesEvent event,
    Emitter<SoundLibraryState> emit,
  ) async {
    emit(state.copyWith(status: BlocStatus.loading));

    try {
      final response = await _repository.getParentCategories(
        page: state.currentPage,
        perPage: state.perPage,
      );

      final categories = response.data.categories ?? [];
      final firstCategory = categories.isNotEmpty ? categories.first : null;
      
      // Process display data
      final displayData = _processDisplayData(firstCategory);
      
      emit(state.copyWith(
        status: BlocStatus.success,
        parentCategories: categories,
        selectedParentCategory: firstCategory,
        hasReachedMax: state.currentPage >= response.pagination.lastPage,
        error: null,
        displaySounds: (displayData['sounds'] as List<SoundItem>?) ?? [],
        displaySubcategories: (displayData['subcategories'] as List<SoundCategory>?) ?? [],
      ));
    } catch (e) {
      emit(state.copyWith(
        status: BlocStatus.fail,
        error: e.toString(),
      ));
    }
  }

  Future<void> _onFetchChildCategories(
    FetchChildCategoriesEvent event,
    Emitter<SoundLibraryState> emit,
  ) async {
    emit(state.copyWith(
      status: BlocStatus.loading,
      childCategories: [],
      sounds: [],
    ));

    try {
      final response = await _repository.getChildCategories(
        parentCategoryId: event.parentCategoryId,
        page: event.page,
        perPage: event.perPage,
        childrenPerPage: 2,
      );

      final childCategories = response.data.categories ?? [];
      emit(state.copyWith(
        status: BlocStatus.success,
        childCategories: childCategories,
        currentPage: event.page,
        hasReachedMax: event.page >= response.pagination.lastPage,
        error: null,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: BlocStatus.fail,
        error: e.toString(),
      ));
    }
  }

  Future<void> _onFetchSounds(
    FetchSoundsEvent event,
    Emitter<SoundLibraryState> emit,
  ) async {
    emit(state.copyWith(
      status: BlocStatus.loading,
      sounds: [],
    ));

    try {
      final response = await _repository.getSounds(
        childCategoryId: event.childCategoryId,
        page: event.page,
        perPage: event.perPage,
        soundsPerPage: 1,
      );

      final sounds = response.data.sounds ?? [];
      emit(state.copyWith(
        status: BlocStatus.success,
        sounds: sounds,
        currentPage: event.page,
        hasReachedMax: event.page >= response.pagination.lastPage,
        error: null,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: BlocStatus.fail,
        error: e.toString(),
      ));
    }
  }

  Future<void> _onLoadMoreParentCategories(
    LoadMoreParentCategoriesEvent event,
    Emitter<SoundLibraryState> emit,
  ) async {
    if (state.hasReachedMax || state.isLoadingMore) return;

    emit(state.copyWith(isLoadingMore: true));

    try {
      final nextPage = state.currentPage + 1;
      final response = await _repository.getParentCategories(
        page: nextPage,
        perPage: state.perPage,
      );

      final newCategories = response.data.categories ?? [];
      final updatedCategories = [...state.parentCategories, ...newCategories];
      
      emit(state.copyWith(
        isLoadingMore: false,
        parentCategories: updatedCategories,
        currentPage: nextPage,
        hasReachedMax: nextPage >= response.pagination.lastPage,
        error: null,
      ));
    } catch (e) {
      emit(state.copyWith(
        isLoadingMore: false,
        error: e.toString(),
      ));
    }
  }

  Future<void> _onLoadMoreChildCategories(
    LoadMoreChildCategoriesEvent event,
    Emitter<SoundLibraryState> emit,
  ) async {
    if (state.hasReachedMax || state.isLoadingMore) return;

    emit(state.copyWith(isLoadingMore: true));

    try {
      final nextPage = state.currentPage + 1;
      final response = await _repository.getChildCategories(
        parentCategoryId: event.parentCategoryId,
        page: nextPage,
        perPage: state.perPage,
        childrenPerPage: 2,
      );

      final newCategories = response.data.categories ?? [];
      final updatedCategories = [...state.childCategories, ...newCategories];
      
      emit(state.copyWith(
        isLoadingMore: false,
        childCategories: updatedCategories,
        currentPage: nextPage,
        hasReachedMax: nextPage >= response.pagination.lastPage,
        error: null,
      ));
    } catch (e) {
      emit(state.copyWith(
        isLoadingMore: false,
        error: e.toString(),
      ));
    }
  }

  Future<void> _onLoadMoreSounds(
    LoadMoreSoundsEvent event,
    Emitter<SoundLibraryState> emit,
  ) async {
    if (state.hasReachedMax || state.isLoadingMore) return;

    emit(state.copyWith(isLoadingMore: true));

    try {
      final nextPage = state.currentPage + 1;
      final response = await _repository.getSounds(
        childCategoryId: event.childCategoryId,
        page: nextPage,
        perPage: state.perPage,
        soundsPerPage: 1,
      );

      final newSounds = response.data.sounds ?? [];
      final updatedSounds = [...state.sounds, ...newSounds];
      
      emit(state.copyWith(
        isLoadingMore: false,
        sounds: updatedSounds,
        currentPage: nextPage,
        hasReachedMax: nextPage >= response.pagination.lastPage,
        error: null,
      ));
    } catch (e) {
      emit(state.copyWith(
        isLoadingMore: false,
        error: e.toString(),
      ));
    }
  }

  void _onSelectParentCategory(
    SelectParentCategoryEvent event,
    Emitter<SoundLibraryState> emit,
  ) {
    final displayData = _processDisplayData(event.category);
    
    emit(state.copyWith(
      selectedParentCategory: event.category,
      childCategories: [],
      sounds: [],
      currentPage: 1,
      hasReachedMax: false,
      displaySounds: (displayData['sounds'] as List<SoundItem>?) ?? [],
      displaySubcategories: (displayData['subcategories'] as List<SoundCategory>?) ?? [],
    ));
  }

  void _onSelectChildCategory(
    SelectChildCategoryEvent event,
    Emitter<SoundLibraryState> emit,
  ) {
    emit(state.copyWith(
      selectedChildCategory: event.category,
      sounds: [],
      currentPage: 1,
      hasReachedMax: false,
    ));
  }

  void _onReset(
    ResetSoundLibraryEvent event,
    Emitter<SoundLibraryState> emit,
  ) {
    emit(SoundLibraryState());
  }

  void _onScroll(
    OnScrollEvent event,
    Emitter<SoundLibraryState> emit,
  ) {
    final shouldLoadMore = event.scrollPosition >= event.maxScrollExtent * 0.8;
    
    if (shouldLoadMore && !state.hasReachedMax && !state.isLoadingMore) {
      emit(state.copyWith(shouldLoadMore: true));
      add(LoadMoreParentCategoriesEvent());
    }
  }

  void _onLoadSelectedCategoryContent(
    LoadSelectedCategoryContentEvent event,
    Emitter<SoundLibraryState> emit,
  ) {
    if (state.selectedParentCategory != null) {
      final displayData = _processDisplayData(state.selectedParentCategory);
      emit(state.copyWith(
        displaySounds: (displayData['sounds'] as List<SoundItem>?) ?? [],
        displaySubcategories: (displayData['subcategories'] as List<SoundCategory>?) ?? [],
      ));
    }
  }

  Map<String, List<dynamic>> _processDisplayData(SoundCategory? category) {
    if (category == null) {
      return {'sounds': <SoundItem>[], 'subcategories': <SoundCategory>[]};
    }

    // If category has subcategories, return them
    if (category.children != null && category.children!.isNotEmpty) {
      return {
        'sounds': <SoundItem>[],
        'subcategories': category.children!,
      };
    }

    // If category has direct sounds, return them
    if (category.sounds != null && category.sounds!.isNotEmpty) {
      return {
        'sounds': category.sounds!,
        'subcategories': <SoundCategory>[],
      };
    }

    return {'sounds': <SoundItem>[], 'subcategories': <SoundCategory>[]};
  }

  Future<void> _onFetchSubcategorySounds(
    FetchSubcategorySoundsEvent event,
    Emitter<SoundLibraryState> emit,
  ) async {
    emit(state.copyWith(status: BlocStatus.loading));

    try {
      final response = await _repository.getSubcategorySounds(
        subcategoryId: event.subcategoryId,
        page: event.page,
        perPage: event.perPage,
      );

      final sounds = response.data.sounds ?? [];
      
      emit(state.copyWith(
        status: BlocStatus.success,
        subcategorySounds: sounds,
        subcategoryCurrentPage: event.page,
        hasReachedMaxSubcategory: event.page >= response.pagination.lastPage,
        currentSubcategoryId: event.subcategoryId,
        error: null,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: BlocStatus.fail,
        error: e.toString(),
      ));
    }
  }

  Future<void> _onSubcategoryScroll(
    OnSubcategoryScrollEvent event,
    Emitter<SoundLibraryState> emit,
  ) async {
    if (state.hasReachedMaxSubcategory || state.isLoadingMoreSubcategory) {
      return;
    }

    if (event.scrollPosition >= event.maxScrollExtent * 0.8) {
      emit(state.copyWith(isLoadingMoreSubcategory: true));

      try {
        final nextPage = state.subcategoryCurrentPage + 1;
        final response = await _repository.getSubcategorySounds(
          subcategoryId: state.currentSubcategoryId ?? 0,
          page: nextPage,
          perPage: 6,
        );

        final newSounds = response.data.sounds ?? [];
        final allSounds = [...state.subcategorySounds, ...newSounds];

        emit(state.copyWith(
          subcategorySounds: allSounds,
          subcategoryCurrentPage: nextPage,
          hasReachedMaxSubcategory: nextPage >= response.pagination.lastPage,
          isLoadingMoreSubcategory: false,
        ));
      } catch (e) {
        emit(state.copyWith(
          isLoadingMoreSubcategory: false,
          error: e.toString(),
        ));
      }
    }
  }

  Future<void> _onLoadMoreParentCategoryContent(
    LoadMoreParentCategoryContentEvent event,
    Emitter<SoundLibraryState> emit,
  ) async {
    if (state.isLoadingMore) return;

    emit(state.copyWith(isLoadingMore: true));

    try {
      final response = await _repository.getParentCategoryContent(
        parentCategoryId: event.parentCategoryId,
        page: event.page,
      );

      final newCategories = response.data.categories ?? [];
      
      // Filter out the first 3 categories (index 0-2) and get the rest (index 3+)
      final additionalCategories = newCategories.skip(3).toList();
      
      // Merge with existing display subcategories
      final allSubcategories = [...state.displaySubcategories, ...additionalCategories];
      
      // Extract sounds from the new categories
      final newSounds = <SoundItem>[];
      for (final category in additionalCategories) {
        if (category.sounds != null) {
          newSounds.addAll(category.sounds!);
        }
      }
      
      // Merge with existing display sounds
      final allSounds = [...state.displaySounds, ...newSounds];

      emit(state.copyWith(
        displaySubcategories: allSubcategories,
        displaySounds: allSounds,
        currentPage: event.page,
        hasReachedMax: event.page >= response.pagination.lastPage,
        isLoadingMore: false,
      ));
    } catch (e) {
      emit(state.copyWith(
        isLoadingMore: false,
        error: e.toString(),
      ));
    }
  }
}