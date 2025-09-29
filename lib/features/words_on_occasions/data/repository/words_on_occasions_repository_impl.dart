import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../config/api_config.dart';
import '../../../../core/network/network_client.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../model/words_on_occasions_model.dart';
import '../../domain/words_on_occasions_repository.dart';

@Injectable(as: WordsOnOccasionsRepository)
class WordsOnOccasionsRepositoryImpl implements WordsOnOccasionsRepository {
  final NetworkClient _networkClient;

  WordsOnOccasionsRepositoryImpl(this._networkClient);

  @override
  Future<Either<String, WordsOnOccasionsModel>> getWordsOnOccasionsData({
    required int catId,
    required int catMenus,
    required int articlesPerPage,
    required int categoriesPerPage,
    required int articlesPage,
    required int categoriesPage,
  }) async {
    try {
      AppLogger.business('Fetching Words on Occasions data', {
        'catId': catId,
        'catMenus': catMenus,
        'articlesPerPage': articlesPerPage,
        'categoriesPerPage': categoriesPerPage,
        'articlesPage': articlesPage,
        'categoriesPage': categoriesPage,
      });

      final url = ApiConfig.getSubCategories(
        catId: catId,
        catMenus: catMenus,
        articlesPerPage: articlesPerPage,
        categoriesPerPage: categoriesPerPage,
        articlesPage: articlesPage,
        categoriesPage: categoriesPage,
      );

      final response = await _networkClient.get(url);

      AppLogger.apiResponse('WordsOnOccasionsRepository - getWordsOnOccasionsData', {
        'statusCode': response.statusCode,
        'data': response.data,
      });

      if (response.data == null || (response.data as Map).isEmpty) {
        AppLogger.warning('No data received from API');
        return const Left('No data received from server');
      }

      // Parse response and convert dynamic maps to String maps
      final responseData = response.data as Map<dynamic, dynamic>;
      final rawData = <String, dynamic>{};
      
      // Convert all keys to String and handle nested maps and lists
      responseData.forEach((key, value) {
        if (value is Map<dynamic, dynamic>) {
          rawData[key.toString()] = _convertDynamicMapToStringMap(value);
        } else if (value is List) {
          rawData[key.toString()] = _convertDynamicListToStringList(value);
        } else {
          rawData[key.toString()] = value;
        }
      });
      
      // Handle the response format - ensure proper structure
      if (rawData.containsKey('data')) {
        final dataMap = rawData['data'] as Map<String, dynamic>;
        
        // Ensure sub_categories exists and is properly formatted
        if (!dataMap.containsKey('sub_categories')) {
          AppLogger.warning('No sub_categories found in response');
          dataMap['sub_categories'] = [];
        } else {
          // sub_categories is now a direct list, not wrapped in a data object
          final subCategories = dataMap['sub_categories'];
          if (subCategories is! List) {
            AppLogger.warning('sub_categories is not a list, converting to empty list');
            dataMap['sub_categories'] = [];
          }
        }
      }
      
      final wordsOnOccasionsModel = WordsOnOccasionsModel.fromJson(rawData);
      AppLogger.business('Data mapped successfully', {'model': wordsOnOccasionsModel.toString()});

      return Right(wordsOnOccasionsModel);
    } on DioException catch (e) {
      AppLogger.apiError('WordsOnOccasionsRepository - getWordsOnOccasionsData', e);
      return Left(e.message ?? 'Connection attempt failed');
    } catch (e) {
      AppLogger.error('Data mapping error', e);
      return const Left('Error processing server response');
    }
  }

  @override
  Future<Either<String, WordsOnOccasionsArticle>> getArticleDetail({
    required int articleId,
  }) async {
    try {
      AppLogger.business('Fetching article detail', {
        'articleId': articleId,
      });

      final url = '${ApiConfig.baseUrl}/public/articles/$articleId?include=category';

      final response = await _networkClient.get(url);

      AppLogger.apiResponse('WordsOnOccasionsRepository - getArticleDetail', {
        'statusCode': response.statusCode,
        'data': response.data,
      });

      if (response.data == null || (response.data as Map).isEmpty) {
        AppLogger.warning('No data received from API');
        return const Left('No data received from server');
      }

      // Parse response and convert dynamic maps to String maps
      final responseData = response.data as Map<dynamic, dynamic>;
      final rawData = <String, dynamic>{};
      
      // Convert all keys to String and handle nested maps and lists
      responseData.forEach((key, value) {
        if (value is Map<dynamic, dynamic>) {
          rawData[key.toString()] = _convertDynamicMapToStringMap(value);
        } else if (value is List) {
          rawData[key.toString()] = _convertDynamicListToStringList(value);
        } else {
          rawData[key.toString()] = value;
        }
      });

      // Handle the response format - ensure proper structure
      if (rawData.containsKey('data')) {
        final dataMap = rawData['data'] as Map<String, dynamic>;
        
        // The article detail response has the article data directly under 'data'
        final articleData = dataMap;
        
        final article = WordsOnOccasionsArticle.fromJson(articleData);
        AppLogger.business('Article detail mapped successfully', {'article': article.toString()});

        return Right(article);
      } else {
        AppLogger.warning('No data field found in response');
        return const Left('Invalid response format');
      }
    } on DioException catch (e) {
      AppLogger.apiError('WordsOnOccasionsRepository - getArticleDetail', e);
      return Left(e.message ?? 'Connection attempt failed');
    } catch (e) {
      AppLogger.error('Article detail mapping error', e);
      return const Left('Error processing server response');
    }
  }

  /// Helper method to convert Map<dynamic, dynamic> to Map<String, dynamic>
  Map<String, dynamic> _convertDynamicMapToStringMap(Map<dynamic, dynamic> dynamicMap) {
    final stringMap = <String, dynamic>{};
    
    dynamicMap.forEach((key, value) {
      if (value is Map<dynamic, dynamic>) {
        stringMap[key.toString()] = _convertDynamicMapToStringMap(value);
      } else if (value is List) {
        stringMap[key.toString()] = _convertDynamicListToStringList(value);
      } else {
        stringMap[key.toString()] = value;
      }
    });
    
    return stringMap;
  }

  /// Helper method to convert List<dynamic> to List<Map<String, dynamic>>
  List<dynamic> _convertDynamicListToStringList(List<dynamic> dynamicList) {
    return dynamicList.map((item) {
      if (item is Map<dynamic, dynamic>) {
        return _convertDynamicMapToStringMap(item);
      } else if (item is List) {
        return _convertDynamicListToStringList(item);
      } else {
        return item;
      }
    }).toList();
  }
}
