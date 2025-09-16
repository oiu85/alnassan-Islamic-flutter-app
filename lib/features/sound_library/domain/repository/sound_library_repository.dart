import 'package:dartz/dartz.dart';
import '../../data/model.dart';

/// Repository interface for sound library operations
/// Handles data fetching and transformation for hierarchical sound categories
abstract class SoundLibraryRepository {
  /// Fetches hierarchical sound categories from the API
  /// 
  /// The API returns a nested structure with:
  /// - Level 1 root categories
  /// - Level 2-4 subcategories with their own direct sounds
  /// - Pagination data for each level
  /// 
  /// Returns [Right<HierarchicalSoundResponse>] containing hierarchical sound data on success
  /// Returns [Left<String>] with error message on failure
  Future<Either<String, HierarchicalSoundResponse>> getHierarchicalSoundCategories();
}