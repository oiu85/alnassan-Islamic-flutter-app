import 'package:dartz/dartz.dart';
import '../../data/model.dart';

/// Repository interface for sound library operations
/// Handles data fetching and transformation for hierarchical sound categories
abstract class SoundLibraryRepository {
  /// Fetches hierarchical sound categories from the API with pagination
  /// 
  /// The API returns a nested structure with:
  /// - Level 1 root categories
  /// - Level 2-4 subcategories with their own direct sounds
  /// - Pagination data for each level
  /// 
  /// [page] - Current page number (default: 1)
  /// [perPage] - Number of items per page (default: 10)
  /// [soundsPerPage] - Number of sounds per category (optional)
  /// [childrenPerPage] - Number of children categories per page (optional)
  /// 
  /// Returns [Right<HierarchicalSoundResponse>] containing hierarchical sound data on success
  /// Returns [Left<String>] with error message on failure
  Future<Either<String, HierarchicalSoundResponse>> getHierarchicalSoundCategories({
    int page = 1,
    int perPage = 10,
    int? soundsPerPage,
    int? childrenPerPage,
  });

  /// Fetches direct sounds for a specific category with pagination
  /// 
  /// [categoryId] - The ID of the category to fetch sounds for
  /// [page] - Current page number (default: 1)
  /// [perPage] - Number of sounds per page (default: 10)
  /// 
  /// Returns [Right<List<SoundData>>] containing list of sounds on success
  /// Returns [Left<String>] with error message on failure
  Future<Either<String, List<SoundData>>> getCategoryDirectSounds({
    required int categoryId,
    int page = 1,
    int perPage = 10,
  });
}