import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/models/page_state/bloc_status.dart';
import '../../domain/repository/sound_library_repository.dart';
import '../../data/model.dart';
import 'sound_library_event.dart';
import 'sound_library_state.dart';

/// Manages the state and business logic for the sound library feature
/// Handles hierarchical category navigation and direct sounds display
@injectable
class SoundLibraryBloc extends Bloc<SoundLibraryEvent, SoundLibraryState> {
  final SoundLibraryRepository _repository;

  SoundLibraryBloc(this._repository) : super(const SoundLibraryState()) {
    on<FetchHierarchicalCategoriesEvent>(_onFetchHierarchicalCategories);
    on<SelectLevel1CategoryEvent>(_onSelectLevel1Category);
    on<NavigateToLevel2CategoryEvent>(_onNavigateToLevel2Category);
    on<NavigateToLevel3CategoryEvent>(_onNavigateToLevel3Category);
    on<NavigateToLevel4CategoryEvent>(_onNavigateToLevel4Category);
    on<ToggleDirectSoundsViewEvent>(_onToggleDirectSoundsView);
    on<ResetSoundLibraryEvent>(_onReset);
  }

  /// Fetches hierarchical sound categories from the API
  /// Automatically selects the first category after successful fetch
  Future<void> _onFetchHierarchicalCategories(
    FetchHierarchicalCategoriesEvent event,
    Emitter<SoundLibraryState> emit,
  ) async {
    emit(state.copyWith(status: const BlocStatus.loading()));

    final result = await _repository.getHierarchicalSoundCategories();
    
    result.fold(
      (error) => emit(state.copyWith(status: BlocStatus.fail(error: error))),
      (response) {
        final categories = response.data.level1RootCategories;
        
        emit(state.copyWith(
          status: const BlocStatus.success(),
          level1Categories: categories,
          error: null,
        ));
        
        if (categories.isNotEmpty) {
          add(SelectLevel1CategoryEvent(category: categories.first));
        }
      },
    );
  }

  /// Selects a main category and displays its direct sounds and subcategories
  void _onSelectLevel1Category(
    SelectLevel1CategoryEvent event,
    Emitter<SoundLibraryState> emit,
  ) {
    final category = event.category;

    emit(state.copyWith(
      selectedLevel1Category: category,
      currentLevel2Categories: category.level2Children,
      displaySounds: category.directSounds,
      displaySubcategories: category.level2Children,
      currentLevel2Category: null,
      currentLevel3Category: null,
      currentLevel4Category: null,
      currentLevel3Categories: [],
      currentLevel4Categories: [],
      status: const BlocStatus.success(),
    ));
  }

  /// Navigates to a Level 2 subcategory
  void _onNavigateToLevel2Category(
    NavigateToLevel2CategoryEvent event,
    Emitter<SoundLibraryState> emit,
  ) {
    final category = event.category;
    emit(state.copyWith(
      status: const BlocStatus.success(),
      currentLevel2Category: category,
      currentLevel3Categories: category.level3Grandchildren,
      displaySounds: category.directSounds,
      displaySubcategories: category.level3Grandchildren,
      currentLevel3Category: null,
      currentLevel4Category: null,
      currentLevel4Categories: [],
    ));
  }

  /// Navigates to a Level 3 subcategory
  void _onNavigateToLevel3Category(
    NavigateToLevel3CategoryEvent event,
    Emitter<SoundLibraryState> emit,
  ) {
    final category = event.category;
    emit(state.copyWith(
      status: const BlocStatus.success(),
      currentLevel3Category: category,
      currentLevel4Categories: category.level4GreatGrandchildren,
      displaySounds: category.directSounds,
      displaySubcategories: category.level4GreatGrandchildren,
      currentLevel4Category: null,
    ));
  }

  /// Navigates to a Level 4 subcategory
  void _onNavigateToLevel4Category(
    NavigateToLevel4CategoryEvent event,
    Emitter<SoundLibraryState> emit,
  ) {
    final category = event.category;
    emit(state.copyWith(
      status: const BlocStatus.success(),
      currentLevel4Category: category,
      displaySounds: category.directSounds,
      displaySubcategories: [],
    ));
  }

  /// Toggles between showing 3 direct sounds or all direct sounds
  void _onToggleDirectSoundsView(
    ToggleDirectSoundsViewEvent event,
    Emitter<SoundLibraryState> emit,
  ) {
    emit(state.copyWith(isViewingDirectSounds: !state.isViewingDirectSounds));
  }

  /// Resets navigation state but keeps loaded categories and selected main category
  void _onReset(ResetSoundLibraryEvent event, Emitter<SoundLibraryState> emit) {
    // If we have a selected category, restore its content
    if (state.selectedLevel1Category != null) {
      final selectedCategory = state.selectedLevel1Category!;
      emit(state.copyWith(
        // Keep selectedLevel1Category to maintain main category selection
        currentLevel2Category: null,
        currentLevel3Category: null,
        currentLevel4Category: null,
        currentLevel2Categories: [],
        currentLevel3Categories: [],
        currentLevel4Categories: [],
        displaySounds: selectedCategory.directSounds,
        displaySubcategories: selectedCategory.level2Children,
        isViewingDirectSounds: false,
        status: const BlocStatus.success(),
      ));
    } else {
      // If no category selected, just reset navigation state
      emit(state.copyWith(
        currentLevel2Category: null,
        currentLevel3Category: null,
        currentLevel4Category: null,
        currentLevel2Categories: [],
        currentLevel3Categories: [],
        currentLevel4Categories: [],
        displaySounds: [],
        displaySubcategories: [],
        isViewingDirectSounds: false,
        status: const BlocStatus.success(),
      ));
    }
  }

  // UI Helper Methods

  /// Gets the current page title based on navigation state
  String getCurrentPageTitle() {
    return state.currentLevel4Category?.catTitle ??
           state.currentLevel3Category?.catTitle ??
           state.currentLevel2Category?.catTitle ??
           state.selectedLevel1Category?.catTitle ??
           'مكتبة الأصوات';
  }

  /// Gets subcategories that have direct sounds for preview
  List<dynamic> getSubcategoriesWithSounds() {
    return state.displaySubcategories.where((subcategory) {
      if (subcategory is Level2Category) return subcategory.directSounds.isNotEmpty;
      if (subcategory is Level3Category) return subcategory.directSounds.isNotEmpty;
      if (subcategory is Level4Category) return subcategory.directSounds.isNotEmpty;
      return false;
    }).toList();
  }

  /// Gets up to 3 sounds from a subcategory for preview
  List<SoundData> getPreviewSounds(dynamic subcategory) {
    if (subcategory is Level2Category) return subcategory.directSounds.take(3).toList();
    if (subcategory is Level3Category) return subcategory.directSounds.take(3).toList();
    if (subcategory is Level4Category) return subcategory.directSounds.take(3).toList();
    return [];
  }

  /// Gets direct sounds for display (3 or all based on toggle state)
  List<SoundData> getDisplayDirectSounds() {
    if (state.selectedLevel1Category == null) return [];
    return state.isViewingDirectSounds 
        ? state.selectedLevel1Category!.directSounds
        : state.selectedLevel1Category!.directSounds.take(3).toList();
  }

  /// Checks if "الكل" button should be shown for direct sounds
  bool shouldShowDirectSoundsAllButton() {
    return (state.selectedLevel1Category?.directSounds.length ?? 0) > 3;
  }

  /// Gets subcategory title
  String getSubcategoryTitle(dynamic subcategory) {
    if (subcategory is Level2Category) return subcategory.catTitle;
    if (subcategory is Level3Category) return subcategory.catTitle;
    if (subcategory is Level4Category) return subcategory.catTitle;
    return "فئة فرعية";
  }

  /// Checks if loading state should be shown
  bool shouldShowLoading() => state.status.isLoading() && state.level1Categories.isEmpty;

  /// Checks if error state should be shown
  bool shouldShowError() => state.status.isFail();

  /// Checks if selected category content should be shown
  bool shouldShowSelectedCategory() => state.selectedLevel1Category != null;

  /// Checks if all categories should be shown
  bool shouldShowAllCategories() => state.status.isSuccess() && state.selectedLevel1Category == null;

  /// Gets error message
  String getErrorMessage() => state.status.error ?? "حدث خطأ غير متوقع";

  /// Checks if direct sounds should be shown
  bool shouldShowDirectSounds() {
    return state.selectedLevel1Category?.directSounds.isNotEmpty == true;
  }

  /// Checks if subcategories should be shown
  bool shouldShowSubcategories() {
    return state.selectedLevel1Category?.level2Children.isNotEmpty == true;
  }

  /// Gets direct sounds for display
  List<SoundData> getDirectSounds() {
    return state.selectedLevel1Category?.directSounds ?? [];
  }

  /// Gets subcategories for display
  List<Level2Category> getSubcategories() {
    return state.selectedLevel1Category?.level2Children ?? [];
  }

  /// Gets empty state message
  String getEmptyMessage() {
    if (state.level1Categories.isEmpty) {
      return 'لا توجد فئات صوتية متاحة';
    }
    return 'لا توجد محتويات متاحة';
  }

  /// Checks if content should be shown
  bool shouldShowContent() {
    return state.status.isSuccess() && 
           (state.level1Categories.isNotEmpty || 
            (state.selectedLevel1Category != null && 
             (state.displaySounds.isNotEmpty || state.displaySubcategories.isNotEmpty)));
  }

  /// Checks if subcategory content should be shown
  bool shouldShowSubcategoryContent() {
    return state.status.isSuccess() && 
           (state.displaySounds.isNotEmpty || state.displaySubcategories.isNotEmpty);
  }

  /// Gets subcategory empty message
  String getSubcategoryEmptyMessage() {
    return 'لا توجد محتويات متاحة';
  }

  /// Checks if direct sounds should be shown in subcategory
  bool shouldShowSubcategoryDirectSounds() {
    return state.displaySounds.isNotEmpty;
  }

  /// Checks if subcategories should be shown in subcategory page
  bool shouldShowSubcategorySubcategories() {
    return state.displaySubcategories.isNotEmpty;
  }

  /// Gets direct sounds for subcategory display
  List<SoundData> getSubcategoryDirectSounds() {
    return state.displaySounds;
  }

  /// Gets subcategories for subcategory display
  List<dynamic> getSubcategorySubcategories() {
    return state.displaySubcategories;
  }

}
