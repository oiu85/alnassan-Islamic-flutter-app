// ===== MAIN RESPONSE MODELS =====

class SoundLibraryResponse {
  final String status;
  final SoundLibraryData data;
  final SoundLibraryPagination pagination;

  SoundLibraryResponse({
    required this.status,
    required this.data,
    required this.pagination,
  });

  factory SoundLibraryResponse.fromJson(Map<String, dynamic> json) {
    return SoundLibraryResponse(
      status: json['status'] ?? '',
      data: SoundLibraryData.fromJson(json['data'] ?? {}),
      pagination: SoundLibraryPagination.fromJson(json['pagination'] ?? {}),
    );
  }
}

class SoundLibraryData {
  final List<SoundCategory>? categories;
  final SoundCategory? childCategory;
  final SoundCategory? parentCategory;
  final List<SoundItem>? sounds;
  final int? totalParentCategories;
  final int? categoriesWithChildren;
  final int? categoriesWithDirectSounds;
  final bool? relationshipVerified;

  SoundLibraryData({
    this.categories,
    this.childCategory,
    this.parentCategory,
    this.sounds,
    this.totalParentCategories,
    this.categoriesWithChildren,
    this.categoriesWithDirectSounds,
    this.relationshipVerified,
  });

  factory SoundLibraryData.fromJson(Map<String, dynamic> json) {
    return SoundLibraryData(
      categories: (json['categories'] as List?)
          ?.map((e) => SoundCategory.fromJson(e))
          .toList(),
      childCategory: json['child_category'] != null
          ? SoundCategory.fromJson(json['child_category'])
          : null,
      parentCategory: json['parent_category'] != null
          ? SoundCategory.fromJson(json['parent_category'])
          : null,
      sounds: (json['sounds'] as List?)
          ?.map((e) => SoundItem.fromJson(e))
          .toList(),
      totalParentCategories: json['total_parent_categories'],
      categoriesWithChildren: json['categories_with_children'],
      categoriesWithDirectSounds: json['categories_with_direct_sounds'],
      relationshipVerified: json['relationship_verified'],
    );
  }
}

// ===== CATEGORY MODELS =====

class SoundCategory {
  final int catId;
  final String catTitle;
  final String? catNote;
  final String? catPic;
  final String? catPos;
  final int? parent;
  final List<SoundCategory>? children;
  final List<SoundItem>? sounds;
  final bool? hasChildren;
  final bool? hasDirectSounds;

  SoundCategory({
    required this.catId,
    required this.catTitle,
    this.catNote,
    this.catPic,
    this.catPos,
    this.parent,
    this.children,
    this.sounds,
    this.hasChildren,
    this.hasDirectSounds,
  });

  factory SoundCategory.fromJson(Map<String, dynamic> json) {
    return SoundCategory(
      catId: json['cat_id'] ?? 0,
      catTitle: json['cat_title'] ?? '',
      catNote: json['cat_note'],
      catPic: json['cat_pic'],
      catPos: json['cat_pos'],
      parent: json['parent'],
      children: (json['children'] as List?)
          ?.map((e) => SoundCategory.fromJson(e))
          .toList(),
      sounds: (json['sounds'] as List?)
          ?.map((e) => SoundItem.fromJson(e))
          .toList(),
      hasChildren: json['has_children'],
      hasDirectSounds: json['has_direct_sounds'],
    );
  }
}

// ===== SOUND ITEM MODELS =====

class SoundItem {
  final int soundId;
  final String soundTitle;
  final String? soundDescription;
  final String? soundUrl;
  final String? soundDuration;
  final String? soundSize;
  final String? soundFormat;
  final String? soundQuality;
  final String? soundVisitor;
  final String? soundPriority;
  final String? soundDate;
  final String? soundActive;
  final String? soundCatId;

  SoundItem({
    required this.soundId,
    required this.soundTitle,
    this.soundDescription,
    this.soundUrl,
    this.soundDuration,
    this.soundSize,
    this.soundFormat,
    this.soundQuality,
    this.soundVisitor,
    this.soundPriority,
    this.soundDate,
    this.soundActive,
    this.soundCatId,
  });

  factory SoundItem.fromJson(Map<String, dynamic> json) {
    return SoundItem(
      soundId: json['sound_id'] ?? 0,
      soundTitle: json['sound_title'] ?? '',
      soundDescription: json['sound_description'],
      soundUrl: json['sound_url'],
      soundDuration: json['sound_duration'],
      soundSize: json['sound_size'],
      soundFormat: json['sound_format'],
      soundQuality: json['sound_quality'],
      soundVisitor: json['sound_visitor'],
      soundPriority: json['sound_priority'],
      soundDate: json['sound_date'],
      soundActive: json['sound_active'],
      soundCatId: json['sound_cat_id'],
    );
  }
}

// ===== PAGINATION MODEL =====

class SoundLibraryPagination {
  final int total;
  final int count;
  final int perPage;
  final int currentPage;
  final int lastPage;
  final int from;
  final int to;

  SoundLibraryPagination({
    required this.total,
    required this.count,
    required this.perPage,
    required this.currentPage,
    required this.lastPage,
    required this.from,
    required this.to,
  });

  factory SoundLibraryPagination.fromJson(Map<String, dynamic> json) {
    return SoundLibraryPagination(
      total: json['total'] ?? 0,
      count: json['count'] ?? 0,
      perPage: json['per_page'] ?? 0,
      currentPage: json['current_page'] ?? 0,
      lastPage: json['last_page'] ?? 0,
      from: json['from'] ?? 0,
      to: json['to'] ?? 0,
    );
  }
}

// ===== BLOC STATE MODELS =====

class SoundLibraryState {
  final BlocStatus status;
  final List<SoundCategory> parentCategories;
  final List<SoundCategory> childCategories;
  final List<SoundItem> sounds;
  final int currentPage;
  final int perPage;
  final bool hasReachedMax;
  final bool isLoadingMore;
  final String? error;
  final SoundCategory? selectedParentCategory;
  final SoundCategory? selectedChildCategory;
  final bool shouldLoadMore;
  final List<SoundItem> displaySounds;
  final List<SoundCategory> displaySubcategories;
  final List<SoundItem> subcategorySounds;
  final int subcategoryCurrentPage;
  final bool isLoadingMoreSubcategory;
  final bool hasReachedMaxSubcategory;
  final int? currentSubcategoryId;

  SoundLibraryState({
    this.status = BlocStatus.initial,
    this.parentCategories = const [],
    this.childCategories = const [],
    this.sounds = const [],
    this.currentPage = 1,
    this.perPage = 3,
    this.hasReachedMax = false,
    this.isLoadingMore = false,
    this.error,
    this.selectedParentCategory,
    this.selectedChildCategory,
    this.shouldLoadMore = false,
    this.displaySounds = const [],
    this.displaySubcategories = const [],
    this.subcategorySounds = const [],
    this.subcategoryCurrentPage = 1,
    this.isLoadingMoreSubcategory = false,
    this.hasReachedMaxSubcategory = false,
    this.currentSubcategoryId,
  });

  SoundLibraryState copyWith({
    BlocStatus? status,
    List<SoundCategory>? parentCategories,
    List<SoundCategory>? childCategories,
    List<SoundItem>? sounds,
    int? currentPage,
    int? perPage,
    bool? hasReachedMax,
    bool? isLoadingMore,
    String? error,
    SoundCategory? selectedParentCategory,
    SoundCategory? selectedChildCategory,
    bool? shouldLoadMore,
    List<SoundItem>? displaySounds,
    List<SoundCategory>? displaySubcategories,
    List<SoundItem>? subcategorySounds,
    int? subcategoryCurrentPage,
    bool? isLoadingMoreSubcategory,
    bool? hasReachedMaxSubcategory,
    int? currentSubcategoryId,
  }) {
    return SoundLibraryState(
      status: status ?? this.status,
      parentCategories: parentCategories ?? this.parentCategories,
      childCategories: childCategories ?? this.childCategories,
      sounds: sounds ?? this.sounds,
      currentPage: currentPage ?? this.currentPage,
      perPage: perPage ?? this.perPage,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      error: error ?? this.error,
      selectedParentCategory: selectedParentCategory ?? this.selectedParentCategory,
      selectedChildCategory: selectedChildCategory ?? this.selectedChildCategory,
      shouldLoadMore: shouldLoadMore ?? this.shouldLoadMore,
      displaySounds: displaySounds ?? this.displaySounds,
      displaySubcategories: displaySubcategories ?? this.displaySubcategories,
      subcategorySounds: subcategorySounds ?? this.subcategorySounds,
      subcategoryCurrentPage: subcategoryCurrentPage ?? this.subcategoryCurrentPage,
      isLoadingMoreSubcategory: isLoadingMoreSubcategory ?? this.isLoadingMoreSubcategory,
      hasReachedMaxSubcategory: hasReachedMaxSubcategory ?? this.hasReachedMaxSubcategory,
      currentSubcategoryId: currentSubcategoryId ?? this.currentSubcategoryId,
    );
  }
}

// ===== BLOC EVENT MODELS =====

abstract class SoundLibraryEvent {}

class FetchParentCategoriesEvent extends SoundLibraryEvent {}

class FetchChildCategoriesEvent extends SoundLibraryEvent {
  final int parentCategoryId;
  final int page;
  final int perPage;

  FetchChildCategoriesEvent({
    required this.parentCategoryId,
    this.page = 1,
    this.perPage = 3,
  });
}

class FetchSoundsEvent extends SoundLibraryEvent {
  final int childCategoryId;
  final int page;
  final int perPage;

  FetchSoundsEvent({
    required this.childCategoryId,
    this.page = 1,
    this.perPage = 3,
  });
}

class LoadMoreParentCategoriesEvent extends SoundLibraryEvent {}

class LoadMoreChildCategoriesEvent extends SoundLibraryEvent {
  final int parentCategoryId;

  LoadMoreChildCategoriesEvent({required this.parentCategoryId});
}

class LoadMoreSoundsEvent extends SoundLibraryEvent {
  final int childCategoryId;

  LoadMoreSoundsEvent({required this.childCategoryId});
}

class SelectParentCategoryEvent extends SoundLibraryEvent {
  final SoundCategory category;

  SelectParentCategoryEvent({required this.category});
}

class SelectChildCategoryEvent extends SoundLibraryEvent {
  final SoundCategory category;

  SelectChildCategoryEvent({required this.category});
}

class ResetSoundLibraryEvent extends SoundLibraryEvent {}

class OnScrollEvent extends SoundLibraryEvent {
  final double scrollPosition;
  final double maxScrollExtent;

  OnScrollEvent({
    required this.scrollPosition,
    required this.maxScrollExtent,
  });
}

class LoadSelectedCategoryContentEvent extends SoundLibraryEvent {}

class FetchSubcategorySoundsEvent extends SoundLibraryEvent {
  final int subcategoryId;
  final int page;
  final int perPage;

  FetchSubcategorySoundsEvent({
    required this.subcategoryId,
    required this.page,
    required this.perPage,
  });
}

class OnSubcategoryScrollEvent extends SoundLibraryEvent {
  final double scrollPosition;
  final double maxScrollExtent;

  OnSubcategoryScrollEvent({
    required this.scrollPosition,
    required this.maxScrollExtent,
  });
}

class LoadMoreParentCategoryContentEvent extends SoundLibraryEvent {
  final int parentCategoryId;
  final int page;

  LoadMoreParentCategoryContentEvent({
    required this.parentCategoryId,
    required this.page,
  });
}

// ===== BLOC STATUS ENUM =====

enum BlocStatus {
  initial,
  loading,
  success,
  fail,
}