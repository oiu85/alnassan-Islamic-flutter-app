import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../config/api_config.dart';
import '../../../../core/network/network_client.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../model/habib_mustafa_model.dart';
import '../../domain/habib_mustafa_repository.dart';

@Injectable(as: HabibMustafaRepository)
class HabibMustafaRepositoryImpl implements HabibMustafaRepository {
  final NetworkClient _networkClient;

  HabibMustafaRepositoryImpl(this._networkClient);

  @override
  Future<Either<String, HabibMustafaModel>> getHabibMustafaData({
    int catId = 13,
    int catMenus = 40,
    int articlesPerPage = 3,
    int categoriesPerPage = 3,
    int articlesPage = 1,
    int categoriesPage = 1,
  }) async {
    try {
      AppLogger.business('Fetching Habib Mustafa data', {
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

      AppLogger.apiResponse('HabibMustafaRepository - getHabibMustafaData', {
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
      
      // Handle the response format - ensure proper structure
      if (rawData.containsKey('data')) {
        final dataMap = rawData['data'] as Map<String, dynamic>;
        
        // Ensure sub_categories exists and is properly formatted
        if (!dataMap.containsKey('sub_categories')) {
          AppLogger.warning('No sub_categories found in response');
          dataMap['sub_categories'] = {'data': []};
        } else {
          // Ensure sub_categories has data array
          final subCategoriesMap = dataMap['sub_categories'] as Map<String, dynamic>;
          if (!subCategoriesMap.containsKey('data')) {
            AppLogger.warning('No data array in sub_categories');
            subCategoriesMap['data'] = [];
          }
        }
      }
      
      final habibMustafaModel = HabibMustafaModel.fromJson(rawData);
      AppLogger.business('Data mapped successfully', {'model': habibMustafaModel.toString()});

      return Right(habibMustafaModel);
    } on DioException catch (e) {
      AppLogger.apiError('HabibMustafaRepository - getHabibMustafaData', e);
      return Left(e.message ?? 'Connection attempt failed');
    } catch (e) {
      AppLogger.error('Data mapping error', e);
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
