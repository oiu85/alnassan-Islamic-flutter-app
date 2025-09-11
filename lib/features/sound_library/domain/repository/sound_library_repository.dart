import '../../data/model.dart';

abstract class SoundLibraryRepository {
  /// Fetch parent categories with pagination
  Future<SoundLibraryResponse> getParentCategories({
    int page = 1,
    int perPage = 3,
  });

  /// Fetch child categories for a specific parent category
  Future<SoundLibraryResponse> getChildCategories({
    required int parentCategoryId,
    int page = 1,
    int perPage = 3,
    int childrenPerPage = 2,
  });

  /// Fetch sounds for a specific child category
  Future<SoundLibraryResponse> getSounds({
    required int childCategoryId,
    int page = 1,
    int perPage = 3,
    int soundsPerPage = 1,
  });

  /// Fetch sounds for a specific parent category (direct sounds)
  Future<SoundLibraryResponse> getDirectSounds({
    required int parentCategoryId,
    int page = 1,
    int perPage = 3,
    int soundsPerPage = 1,
  });

  /// Fetch all sounds for a specific subcategory
  Future<SoundLibraryResponse> getSubcategorySounds({
    required int subcategoryId,
    int page = 1,
    int perPage = 6,
  });

  /// Fetch more content for a parent category (subcategories and sounds)
  Future<SoundLibraryResponse> getParentCategoryContent({
    required int parentCategoryId,
    int page = 1,
  });
}
