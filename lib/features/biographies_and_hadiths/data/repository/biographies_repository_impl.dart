import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/network/network_client.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../model.dart';
import '../../domain/biographies_repository.dart';

@Injectable(as: BiographiesRepository)
class BiographiesRepositoryImpl implements BiographiesRepository {
  final NetworkClient _networkClient;

  BiographiesRepositoryImpl(this._networkClient);

  @override
  Future<BiographiesAndHadithsModel> getBiographiesArticles({
    required int categoryId,
    required int page,
    required int perPage,
  }) async {
    try {
      final url = '${NetworkClient.baseUrl}/public/categories/articles/with-articles?category_ids=$categoryId&page=$page&per_page=$perPage';
      
      AppLogger.business('Fetching biographies data');
      final response = await _networkClient.get(url);

      AppLogger.apiResponse('BiographiesRepository - getBiographiesArticles', {
        'statusCode': response.statusCode,
        'data': response.data,
      });

      if (response.data == null || (response.data as Map).isEmpty) {
        AppLogger.warning('No data received from API');
        throw DioException(
          requestOptions: RequestOptions(path: url),
          error: 'No data received from server',
        );
      }

      final rawData = Map<String, dynamic>.from(response.data as Map<String, dynamic>);
      final biographiesModel = BiographiesAndHadithsModel.fromJson(rawData);
      
      AppLogger.business('Data mapped successfully', {'model': biographiesModel.toString()});

      return biographiesModel;
    } on DioException catch (e) {
      AppLogger.apiError('BiographiesRepository - getBiographiesArticles', e);
      rethrow;
    } catch (e) {
      AppLogger.error('Data mapping error', e);
      throw DioException(
        requestOptions: RequestOptions(path: '${NetworkClient.baseUrl}/public/categories/articles/$categoryId/with-articles'),
        error: 'Error processing server response',
      );
    }
  }
  
  // ===== ARTICLE DETAIL IMPLEMENTATION =====
  @override
  Future<ArticleDetailModel> getArticleDetail({
    required int articleId,
  }) async {
    try {
      final url = '${NetworkClient.baseUrl}/public/articles/$articleId?include=category';
      
      AppLogger.business('Fetching biographies data');
      final response = await _networkClient.get(url);

      AppLogger.apiResponse('BiographiesRepository - getArticleDetail', {
        'statusCode': response.statusCode,
        'data': response.data,
      });

      if (response.data == null || (response.data as Map).isEmpty) {
        AppLogger.warning('No data received from API');
        throw DioException(
          requestOptions: RequestOptions(path: url),
          error: 'No article data received from server',
        );
      }

      final rawData = Map<String, dynamic>.from(response.data as Map<String, dynamic>);
      final articleDetailModel = ArticleDetailModel.fromJson(rawData);
      
      AppLogger.business('Article detail data mapped successfully', {'model': articleDetailModel.toString()});

      return articleDetailModel;
    } on DioException catch (e) {
      AppLogger.apiError('BiographiesRepository - getBiographiesArticles', e);
      rethrow;
    } catch (e) {
      AppLogger.error('Data mapping error', e);
      throw DioException(
        requestOptions: RequestOptions(path: '${NetworkClient.baseUrl}/public/articles/$articleId'),
        error: 'Error processing article detail response',
      );
    }
  }
}
