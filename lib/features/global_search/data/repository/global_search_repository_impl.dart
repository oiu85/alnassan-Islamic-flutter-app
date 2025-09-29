import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/network/network_client.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../../../../config/api_config.dart';
import '../../domain/repository/global_search_repository.dart';
import '../model/search_response_model.dart';
import '../model/article_detail_model.dart';
import '../model/sound_detail_model.dart';
import '../../../../features/advisory_fatwa/domain/model/advisory_detail.dart';

@Injectable(as: GlobalSearchRepository)
class GlobalSearchRepositoryImpl implements GlobalSearchRepository {
  final NetworkClient _networkClient;

  GlobalSearchRepositoryImpl(this._networkClient);

  @override
  Future<Either<String, SearchResponseModel>> searchContent({
    required String query,
    String? type,
    int page = 1,
    int perPage = 10,
  }) async {
    try {
      AppLogger.business('Searching content', {
        'query': query,
        'type': type,
        'page': page,
        'perPage': perPage,
      });

      // Build the search URL using the API config
      final searchUrl = ApiConfig.getGlobalSearch(
        query: query,
        type: type,
        page: page,
        perPage: perPage,
      );

      final response = await _networkClient.get(searchUrl);

      AppLogger.apiResponse('GlobalSearchRepository - searchContent', {
        'statusCode': response.statusCode,
        'data': response.data,
      });

      if (response.data == null || (response.data as Map).isEmpty) {
        AppLogger.warning('No search results received from API');
        return const Left('No search results found');
      }

      final searchResponse = SearchResponseModel.fromJson(response.data as Map<String, dynamic>);
      
      AppLogger.business('Search completed successfully', {
        'articlesCount': searchResponse.data.articles.length,
        'soundsCount': searchResponse.data.sounds.length,
        'advisoriesCount': searchResponse.data.advisories.length,
      });

      return Right(searchResponse);
    } catch (e) {
      AppLogger.error('Search error: $e');
      return Left('Search failed: ${e.toString()}');
    }
  }

  @override
  Future<Either<String, ArticleDetailModel>> getArticleDetail({
    required int articleId,
  }) async {
    AppLogger.business('Fetching article detail', {
      'articleId': articleId,
    });

    try {
      final articleUrl = ApiConfig.getArticleDetail(articleId: articleId);
      final response = await _networkClient.get(articleUrl);

      AppLogger.apiResponse('GlobalSearchRepository - getArticleDetail', {
        'statusCode': response.statusCode,
        'data': response.data,
      });

      if (response.data == null || (response.data as Map).isEmpty) {
        AppLogger.warning('No data received from API for article ID: $articleId');
        return const Left('No data received from server');
      }

      final articleDetail = ArticleDetailModel.fromJson(response.data as Map<String, dynamic>);
      return Right(articleDetail);
    } catch (e) {
      AppLogger.error('Error fetching article detail: $e');
      return Left('Failed to fetch article detail: ${e.toString()}');
    }
  }

  @override
  Future<Either<String, SoundDetailModel>> getSoundDetail({
    required int soundId,
  }) async {
    AppLogger.business('Fetching sound detail', {
      'soundId': soundId,
    });

    try {
      final soundUrl = ApiConfig.getSoundDetail(soundId: soundId);
      final response = await _networkClient.get(soundUrl);

      AppLogger.apiResponse('GlobalSearchRepository - getSoundDetail', {
        'statusCode': response.statusCode,
        'data': response.data,
      });

      if (response.data == null || (response.data as Map).isEmpty) {
        AppLogger.warning('No data received from API for sound ID: $soundId');
        return const Left('No data received from server');
      }

      final soundDetail = SoundDetailModel.fromJson(response.data as Map<String, dynamic>);
      return Right(soundDetail);
    } catch (e) {
      AppLogger.error('Error fetching sound detail: $e');
      return Left('Failed to fetch sound detail: ${e.toString()}');
    }
  }

  @override
  Future<Either<String, AdvisoryDetail>> getAdvisoryDetail({
    required int advisoryId,
  }) async {
    AppLogger.business('Fetching advisory detail', {
      'advisoryId': advisoryId,
    });

    try {
      final advisoryUrl = ApiConfig.getAdvisoryDetail(advisoryId: advisoryId);
      final response = await _networkClient.get(advisoryUrl);

      AppLogger.apiResponse('GlobalSearchRepository - getAdvisoryDetail', {
        'statusCode': response.statusCode,
        'data': response.data,
      });

      if (response.data == null || (response.data as Map).isEmpty) {
        AppLogger.warning('No data received from API for advisory ID: $advisoryId');
        return const Left('No data received from server');
      }

      // Extract the data field from the response
      final responseData = response.data as Map<String, dynamic>;
      final advisoryData = responseData['data'] as Map<String, dynamic>?;
      
      if (advisoryData == null) {
        AppLogger.warning('No advisory data found in API response for advisory ID: $advisoryId');
        return const Left('No advisory data found in server response');
      }
      
      final advisoryDetail = AdvisoryDetail.fromJson(advisoryData);
      return Right(advisoryDetail);
    } catch (e) {
      AppLogger.error('Error fetching advisory detail: $e');
      return Left('Failed to fetch advisory detail: ${e.toString()}');
    }
  }
}
