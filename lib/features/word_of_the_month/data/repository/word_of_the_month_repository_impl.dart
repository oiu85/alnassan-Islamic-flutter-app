import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../config/api_config.dart';
import '../../../../core/network/network_client.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../model/word_of_the_month_model.dart';
import '../../domain/word_of_the_month_repository.dart';

class WordOfTheMonthRepositoryImpl implements WordOfTheMonthRepository {
  final NetworkClient _networkClient;

  WordOfTheMonthRepositoryImpl(this._networkClient);

  @override
  Future<Either<String, WordOfTheMonthModel>> getWordOfTheMonthData({
    required int catId,
    required String catMenus,
    required int articlesPerPage,
    required int articlesPage,
  }) async {
    try {
      AppLogger.business('Fetching word of the month data', {
        'catId': catId,
        'catMenus': catMenus,
        'articlesPerPage': articlesPerPage,
        'articlesPage': articlesPage,
      });

      final url = ApiConfig.getSubCategories(
        catId: catId,
        catMenus: int.tryParse(catMenus),
        articlesPerPage: articlesPerPage,
        articlesPage: articlesPage,
      );

      final response = await _networkClient.get(url);

      AppLogger.apiResponse('WordOfTheMonthRepository - getWordOfTheMonthData', {
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
      
      // Convert all keys to String and handle nested maps
      responseData.forEach((key, value) {
        if (value is Map<dynamic, dynamic>) {
          rawData[key.toString()] = _convertDynamicMapToStringMap(value);
        } else {
          rawData[key.toString()] = value;
        }
      });
      
      final wordOfTheMonthModel = WordOfTheMonthModel.fromJson(rawData);
      AppLogger.business('Word of the month data mapped successfully', {'model': wordOfTheMonthModel.toString()});

      return Right(wordOfTheMonthModel);
    } on DioException catch (e) {
      AppLogger.apiError('WordOfTheMonthRepository - getWordOfTheMonthData', e);
      return Left(e.message ?? 'Connection attempt failed');
    } catch (e) {
      AppLogger.error('Word of the month data mapping error', e);
      return const Left('Error processing server response');
    }
  }

  /// Helper method to convert dynamic map to string map recursively
  Map<String, dynamic> _convertDynamicMapToStringMap(Map<dynamic, dynamic> map) {
    final result = <String, dynamic>{};
    
    map.forEach((key, value) {
      final stringKey = key.toString();
      
      if (value is Map<dynamic, dynamic>) {
        result[stringKey] = _convertDynamicMapToStringMap(value);
      } else if (value is List) {
        result[stringKey] = value.map((item) {
          if (item is Map<dynamic, dynamic>) {
            return _convertDynamicMapToStringMap(item);
          }
          return item;
        }).toList();
      } else {
        result[stringKey] = value;
      }
    });
    
    return result;
  }
}
