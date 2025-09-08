import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/network/network_client.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../../../../config/api_config.dart';
import '../model.dart';
import '../../domain/biographies_repository.dart';

@Injectable(as: BiographiesRepository)
class BiographiesRepositoryImpl implements BiographiesRepository {
  final NetworkClient _networkClient;

  BiographiesRepositoryImpl(this._networkClient);

  @override
  Future<Either<String, BiographiesAndHadithsModel>> getBiographiesArticles({
    required int categoryId,
    required int page,
    required int perPage,
  }) async {
    try {
      final url = ApiConfig.getSingleCategoryArticles(
        categoryId: categoryId,
        page: page,
        perPage: perPage,
      );
      
      AppLogger.business('Fetching biographies data');
      final response = await _networkClient.get(url);

      AppLogger.apiResponse('BiographiesRepository - getBiographiesArticles', {
        'statusCode': response.statusCode,
        'data': response.data,
      });

      if (response.data == null || (response.data as Map).isEmpty) {
        AppLogger.warning('No data received from API');
        return const Left('No data received from server');
      }

      final rawData = Map<String, dynamic>.from(response.data as Map<String, dynamic>);
      final biographiesModel = BiographiesAndHadithsModel.fromJson(rawData);
      
      AppLogger.business('Data mapped successfully', {'model': biographiesModel.toString()});

      return Right(biographiesModel);
    } on DioException catch (e) {
      AppLogger.apiError('BiographiesRepository - getBiographiesArticles', e);
      return Left(e.message ?? 'Connection attempt failed');
    } catch (e) {
      AppLogger.error('Data mapping error', e);
      return const Left('Error processing server response');
    }
  }
  
  // ===== ARTICLE DETAIL IMPLEMENTATION =====
  @override
  Future<Either<String, ArticleDetailModel>> getArticleDetail({
    required int articleId,
  }) async {
    try {
      final url = ApiConfig.getArticleDetail(articleId: articleId);
      
      AppLogger.business('Fetching biographies data');
      final response = await _networkClient.get(url);

      AppLogger.apiResponse('BiographiesRepository - getArticleDetail', {
        'statusCode': response.statusCode,
        'data': response.data,
      });

      if (response.data == null || (response.data as Map).isEmpty) {
        AppLogger.warning('No data received from API');
        return const Left('No article data received from server');
      }

      final rawData = Map<String, dynamic>.from(response.data as Map<String, dynamic>);
      final articleDetailModel = ArticleDetailModel.fromJson(rawData);
      
      AppLogger.business('Article detail data mapped successfully', {'model': articleDetailModel.toString()});

      return Right(articleDetailModel);
    } on DioException catch (e) {
      AppLogger.apiError('BiographiesRepository - getBiographiesArticles', e);
      return Left(e.message ?? 'Connection attempt failed');
    } catch (e) {
      AppLogger.error('Data mapping error', e);
      return const Left('Error processing article detail response');
    }
  }
}
