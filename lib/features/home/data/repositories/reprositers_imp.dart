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
  Future<HomeModel> getHomeData() async {
    try {
      AppLogger.business('Fetching home data');
      final response = await _networkClient.get(NetworkClient.homeUrl);

      AppLogger.apiResponse('HomeRepository - getHomeData', {
        'statusCode': response.statusCode,
        'data': response.data,
      });

      if (response.data == null || (response.data as Map).isEmpty) {
        AppLogger.warning('No data received from API');
        throw DioException(
          requestOptions: RequestOptions(path: NetworkClient.homeUrl),
          error: 'No data received from server',
        );
      }

      // Parse initial response and make a deep copy to avoid modifying the original
      final rawData = Map<String, dynamic>.from(response.data as Map<String, dynamic>);
      
      // Handle the new response format - extract article and convert to recentArticles format
      // Extract article data and format it properly
      if (rawData.containsKey('data')) {
        try {
          if ((rawData['data'] as Map<String, dynamic>).containsKey('article')) {
            final articleMap = rawData['data']['article'] as Map<String, dynamic>;
            
            // Handle either format: {article: {article: {...}}} or {article: {...}}
            Map<String, dynamic> articleData;
            if (articleMap.containsKey('article')) {
              articleData = Map<String, dynamic>.from(articleMap['article'] as Map<String, dynamic>);
            } else if (articleMap.containsKey('article_id')) {
              // Direct article format
              articleData = Map<String, dynamic>.from(articleMap);
            } else {
              // Unknown format, create minimal valid structure
              articleData = {
                'article_id': 0,
                'article_title': 'مقال غير متوفر',
                'article_summary': 'لم يتم العثور على محتوى',
                'article_des': ''
              };
            }
            
            // Add category data if it exists
            if (articleData.containsKey('category')) {
              // Category is already properly formatted
            } else {
              // Default category if missing
              articleData['category'] = {
                'cat_id': 1,
                'cat_title': 'كلمة الشهر'
              };
            }
            
            // Store the article in the recent_articles array
            rawData['data']['recent_articles'] = [articleData];
            
            // Remove the article field since our model doesn't support it
            rawData['data'].remove('article');
          }
        } catch (e) {
          AppLogger.error('Error processing article format', e);
          
          // Ensure we have a minimum valid structure
          rawData['data']['recent_articles'] = [{
            'article_id': 0,
            'article_title': 'خطأ في عرض المقال',
            'article_summary': 'حدث خطأ في معالجة بيانات المقال',
            'article_des': '',
            'category': {
              'cat_id': 1,
              'cat_title': 'كلمة الشهر'
            }
          }];
          
          // Remove the article field since our model doesn't support it
          if (rawData['data'].containsKey('article')) {
            rawData['data'].remove('article');
          }
        }
      }
      
      final homeModel = HomeModel.fromJson(rawData);
      AppLogger.business('Data mapped successfully', {'model': homeModel.toString()});

      return homeModel;
    } on DioException catch (e) {
      AppLogger.apiError('HomeRepository - getHomeData', e);
      rethrow;
    } catch (e) {
      AppLogger.error('Data mapping error', e);
      throw DioException(
        requestOptions: RequestOptions(path: NetworkClient.homeUrl),
        error: 'Error processing server response',
      );
    }
  }
}
