import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/network/network_client.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../model/home_model.dart';
import '../../domain/home_repository.dart';

@Injectable(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  final NetworkClient _networkClient;

  HomeRepositoryImpl(this._networkClient);

  @override
  Future<Either<String, HomeModel>> getHomeData() async {
    try {
      AppLogger.business('Fetching home data');
      final response = await _networkClient.get(NetworkClient.homeUrl);

      AppLogger.apiResponse('HomeRepository - getHomeData', {
        'statusCode': response.statusCode,
        'data': response.data,
      });

      if (response.data == null || (response.data as Map).isEmpty) {
        AppLogger.warning('No data received from API');
        return const Left('No data received from server');
      }

      // Parse initial response and make a deep copy to avoid modifying the original
      final rawData = Map<String, dynamic>.from(response.data as Map<String, dynamic>);
      
      // Handle the new response format - ensure proper structure
      if (rawData.containsKey('data')) {
        final dataMap = rawData['data'] as Map<String, dynamic>;
        
        // Handle article structure - it might be nested
        if (dataMap.containsKey('article')) {
          final articleMap = dataMap['article'] as Map<String, dynamic>;
          
          // Check if article is nested (article.article) or direct
          if (articleMap.containsKey('article')) {
            // Nested structure: {article: {article: {...}}}
            final nestedArticle = articleMap['article'] as Map<String, dynamic>;
            dataMap['article'] = nestedArticle;
          }
          // If not nested, article is already in the correct format
        }
        
        // Ensure article_categories exists and is properly formatted
        if (!dataMap.containsKey('article_categories')) {
          AppLogger.warning('No article_categories found in response');
          dataMap['article_categories'] = [];
        }
      }
      
      final homeModel = HomeModel.fromJson(rawData);
      AppLogger.business('Data mapped successfully', {'model': homeModel.toString()});

      return Right(homeModel);
    } on DioException catch (e) {
      AppLogger.apiError('HomeRepository - getHomeData', e);
      return Left(e.message ?? 'Connection attempt failed');
    } catch (e) {
      AppLogger.error('Data mapping error', e);
      return const Left('Error processing server response');
    }
  }
}
