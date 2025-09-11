import 'package:injectable/injectable.dart';
import '../../../../core/network/network_client.dart';
import '../../../../config/api_config.dart';
import '../../domain/repository/sound_library_repository.dart';
import '../model.dart';

@Injectable(as: SoundLibraryRepository)
class SoundLibraryRepositoryImpl implements SoundLibraryRepository {
  final NetworkClient _networkClient;

  SoundLibraryRepositoryImpl(this._networkClient);

  @override
  Future<SoundLibraryResponse> getParentCategories({
    int page = 1,
    int perPage = 3,
  }) async {
    try {
      final url = ApiConfig.getSoundCategories(
        perPage: perPage,
      );
      
      final response = await _networkClient.get(
        url,
        queryParameters: {
          'page': page,
        },
      );

      if (response.statusCode == 200) {
        return SoundLibraryResponse.fromJson(response.data);
      } else {
        throw Exception('Failed to fetch parent categories: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching parent categories: $e');
    }
  }

  @override
  Future<SoundLibraryResponse> getChildCategories({
    required int parentCategoryId,
    int page = 1,
    int perPage = 3,
    int childrenPerPage = 2,
  }) async {
    try {
      final url = ApiConfig.getSoundCategories(
        catFatherId: parentCategoryId,
        perPage: perPage,
        childrenPerPage: childrenPerPage,
      );
      
      final response = await _networkClient.get(
        url,
        queryParameters: {
          'page': page,
        },
      );

      if (response.statusCode == 200) {
        return SoundLibraryResponse.fromJson(response.data);
      } else {
        throw Exception('Failed to fetch child categories: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching child categories: $e');
    }
  }

  @override
  Future<SoundLibraryResponse> getSounds({
    required int childCategoryId,
    int page = 1,
    int perPage = 3,
    int soundsPerPage = 1,
  }) async {
    try {
      final url = ApiConfig.getSoundCategories(
        id: childCategoryId,
        perPage: perPage,
        soundsPerPage: soundsPerPage,
      );
      
      final response = await _networkClient.get(
        url,
        queryParameters: {
          'page': page,
        },
      );

      if (response.statusCode == 200) {
        return SoundLibraryResponse.fromJson(response.data);
      } else {
        throw Exception('Failed to fetch sounds: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching sounds: $e');
    }
  }

  @override
  Future<SoundLibraryResponse> getDirectSounds({
    required int parentCategoryId,
    int page = 1,
    int perPage = 3,
    int soundsPerPage = 1,
  }) async {
    try {
      final url = ApiConfig.getSoundCategories(
        catFatherId: parentCategoryId,
        perPage: perPage,
        soundsPerPage: soundsPerPage,
      );
      
      final response = await _networkClient.get(
        url,
        queryParameters: {
          'page': page,
        },
      );

      if (response.statusCode == 200) {
        return SoundLibraryResponse.fromJson(response.data);
      } else {
        throw Exception('Failed to fetch direct sounds: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching direct sounds: $e');
    }
  }

  @override
  Future<SoundLibraryResponse> getSubcategorySounds({
    required int subcategoryId,
    int page = 1,
    int perPage = 6,
  }) async {
    try {
      final response = await _networkClient.get(
        '/public/categories/sounds/children',
        queryParameters: {
          'id': subcategoryId,
          'page': page,
          'per_page': perPage,
        },
      );

      if (response.statusCode == 200) {
        return SoundLibraryResponse.fromJson(response.data);
      } else {
        throw Exception('Failed to fetch subcategory sounds: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching subcategory sounds: $e');
    }
  }

  @override
  Future<SoundLibraryResponse> getParentCategoryContent({
    required int parentCategoryId,
    int page = 1,
  }) async {
    try {
      final response = await _networkClient.get(
        '/public/categories/sounds/children',
        queryParameters: {
          'cat_father_id': parentCategoryId,
          'page': page,
        },
      );

      if (response.statusCode == 200) {
        return SoundLibraryResponse.fromJson(response.data);
      } else {
        throw Exception('Failed to fetch parent category content: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Error fetching parent category content: $e');
    }
  }
}