import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/network/network_client.dart';
import '../../../../config/api_config.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../../domain/repository/sound_library_repository.dart';
import '../model.dart';

/// Implementation of SoundLibraryRepository
/// Handles API calls and data transformation for sound library feature
@Injectable(as: SoundLibraryRepository)
class SoundLibraryRepositoryImpl implements SoundLibraryRepository {
  final NetworkClient _networkClient;

  SoundLibraryRepositoryImpl(this._networkClient);

  @override
  Future<Either<String, HierarchicalSoundResponse>> getHierarchicalSoundCategories({
    int page = 1,
    int perPage = 10,
    int? soundsPerPage,
    int? childrenPerPage,
  }) async {
    try {
      AppLogger.business('Fetching sound categories with pagination', {
        'page': page,
        'perPage': perPage,
      });
      
      final url = ApiConfig.getHierarchicalSoundCategories(
        page: page,
        perPage: perPage,
        soundsPerPage: soundsPerPage,
        childrenPerPage: childrenPerPage,
      );
      
      final response = await _networkClient.get(url);

      AppLogger.apiResponse('SoundLibraryRepository - getHierarchicalSoundCategories', {
        'statusCode': response.statusCode,
        'hasData': response.data != null,
        'page': page,
      });

      // Validate response data
      if (response.data == null || (response.data as Map).isEmpty) {
        AppLogger.warning('No data received from hierarchical sound categories API');
        return const Left('No data received from server');
      }

      // Parse JSON response to model
      final soundResponse = HierarchicalSoundResponse.fromJson(response.data);
      AppLogger.business('Successfully parsed hierarchical sound categories', {
        'categoriesCount': soundResponse.data.level1RootCategories.length,
      });
      return Right(soundResponse);
    } on Exception catch (e) {
      AppLogger.error('Error fetching hierarchical sound categories: $e');
      return Left('Failed to fetch sound categories: ${e.toString()}');
    } catch (e) {
      AppLogger.error('Unexpected error fetching hierarchical sound categories: $e');
      return Left('Unexpected error occurred: ${e.toString()}');
    }
  }

  @override
  Future<Either<String, List<SoundData>>> getCategoryDirectSounds({
    required int categoryId,
    int page = 1,
    int perPage = 10,
  }) async {
    try {
      AppLogger.business('Fetching direct sounds for category', {
        'categoryId': categoryId,
        'page': page,
        'perPage': perPage,
      });
      
      // Try the direct sounds endpoint first
      String url;
      try {
        url = ApiConfig.getCategoryDirectSounds(
          categoryId: categoryId,
          page: page,
          perPage: perPage,
        );
      } catch (e) {
        // Fallback to getSoundCategories endpoint
        AppLogger.warning('Using fallback endpoint for category sounds: $e');
        url = ApiConfig.getSoundCategories(
          id: categoryId,
          soundsPerPage: perPage,
          page: page,
        );
      }
      
      final response = await _networkClient.get(url);

      AppLogger.apiResponse('SoundLibraryRepository - getCategoryDirectSounds', {
        'statusCode': response.statusCode,
        'hasData': response.data != null,
        'categoryId': categoryId,
        'page': page,
        'url': url,
      });

      // Validate response data
      if (response.data == null || (response.data as Map).isEmpty) {
        AppLogger.warning('No data received from category direct sounds API');
        return const Left('No data received from server');
      }

      // Parse JSON response - try different formats
      List<SoundData> sounds = [];
      
      // Try direct list first
      if (response.data is List) {
        sounds = (response.data as List)
            .map((json) => SoundData.fromJson(json as Map<String, dynamic>))
            .toList();
      } else if (response.data is Map) {
        final data = response.data as Map<String, dynamic>;
        
        // Try hierarchical response format
        try {
          final hierarchicalResponse = HierarchicalSoundResponse.fromJson(data);
          // Find the category in the hierarchy
          for (final level1 in hierarchicalResponse.data.level1RootCategories) {
            if (level1.catId == categoryId) {
              sounds = level1.directSounds;
              break;
            }
            for (final level2 in level1.level2Children) {
              if (level2.catId == categoryId) {
                sounds = level2.directSounds;
                break;
              }
              for (final level3 in level2.level3Grandchildren) {
                if (level3.catId == categoryId) {
                  sounds = level3.directSounds;
                  break;
                }
                for (final level4 in level3.level4GreatGrandchildren) {
                  if (level4.catId == categoryId) {
                    sounds = level4.directSounds;
                    break;
                  }
                }
              }
            }
          }
        } catch (e) {
          // If hierarchical parsing fails, try other formats
          AppLogger.warning('Failed to parse as hierarchical response: $e');
          
          if (data['data'] is List) {
            sounds = (data['data'] as List)
                .map((json) => SoundData.fromJson(json as Map<String, dynamic>))
                .toList();
          } else if (data['sounds'] is List) {
            sounds = (data['sounds'] as List)
                .map((json) => SoundData.fromJson(json as Map<String, dynamic>))
                .toList();
          } else if (data['direct_sounds'] is List) {
            sounds = (data['direct_sounds'] as List)
                .map((json) => SoundData.fromJson(json as Map<String, dynamic>))
                .toList();
          }
        }
      }

      AppLogger.business('Successfully parsed category direct sounds', {
        'soundsCount': sounds.length,
      });
      return Right(sounds);
    } on Exception catch (e) {
      AppLogger.error('Error fetching category direct sounds: $e');
      return Left('Failed to fetch sounds: ${e.toString()}');
    } catch (e) {
      AppLogger.error('Unexpected error fetching category direct sounds: $e');
      return Left('Unexpected error occurred: ${e.toString()}');
    }
  }
}