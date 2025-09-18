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
  Future<Either<String, HierarchicalSoundResponse>> getHierarchicalSoundCategories() async {
    try {
      AppLogger.business('Fetching  sound + categories');
      final response = await _networkClient.get(ApiConfig.getHierarchicalSoundCategories);

      AppLogger.apiResponse('SoundLibraryRepository - getHierarchicalSoundCategories', {
        'statusCode': response.statusCode,
        'hasData': response.data != null,
      });

      // Validate response data
      if (response.data == null || (response.data as Map).isEmpty) {
        AppLogger.warning('No data received from hierarchical sound categories API');
        return const Left('No data received from server');
      }

      // Parse JSON response to model
      final soundResponse = HierarchicalSoundResponse.fromJson(response.data);
      AppLogger.business('Successfully parsed hierarchical sound categories');
      return Right(soundResponse);
    } on Exception catch (e) {
      AppLogger.error('Error fetching hierarchical sound categories: $e');
      return Left('Failed to fetch sound categories: ${e.toString()}');
    } catch (e) {
      AppLogger.error('Unexpected error fetching hierarchical sound categories: $e');
      return Left('Unexpected error occurred: ${e.toString()}');
    }
  }
}