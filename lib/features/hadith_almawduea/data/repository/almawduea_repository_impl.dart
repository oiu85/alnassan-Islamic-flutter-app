import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/network/network_client.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../../../../config/api_config.dart';
import '../model.dart';
import '../../domain/almawduea_repository.dart';

@Injectable(as: AlmawdueaRepository)
class AlmawdueaRepositoryImpl implements AlmawdueaRepository {
  final NetworkClient _networkClient;

  AlmawdueaRepositoryImpl(this._networkClient);

  @override
  Future<Either<String, AlmawdueaModel>> getAlmawdueaArticles({
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
      
      AppLogger.business('Fetching almawduea data');
      final response = await _networkClient.get(url);

      AppLogger.apiResponse('AlmawdueaRepository - getAlmawdueaArticles', {
        'statusCode': response.statusCode,
        'data': response.data,
      });

      if (response.data == null || (response.data as Map).isEmpty) {
        AppLogger.warning('No data received from API');
        return const Left('No data received from server');
      }

      final rawData = Map<String, dynamic>.from(response.data as Map<String, dynamic>);
      final almawdueaModel = AlmawdueaModel.fromJson(rawData);
      
      AppLogger.business('Data mapped successfully', {'model': almawdueaModel.toString()});

      return Right(almawdueaModel);
    } on DioException catch (e) {
      AppLogger.apiError('AlmawdueaRepository - getAlmawdueaArticles', e);
      return Left(e.message ?? 'Connection attempt failed');
    } catch (e) {
      AppLogger.error('Data mapping error', e);
      return const Left('Error processing server response');
    }
  }
  
  // ===== ARTICLE DETAIL IMPLEMENTATION =====
  @override
  Future<Either<String, AlmawdueaArticleDetailModel>> getArticleDetail({
    required int articleId,
  }) async {
    try {
      final url = ApiConfig.getArticleDetail(articleId: articleId);
      
      AppLogger.business('Fetching almawduea data');
      final response = await _networkClient.get(url);

      AppLogger.apiResponse('AlmawdueaRepository - getArticleDetail', {
        'statusCode': response.statusCode,
        'data': response.data,
      });

      if (response.data == null || (response.data as Map).isEmpty) {
        AppLogger.warning('No data received from API');
        return const Left('No article data received from server');
      }

      final rawData = Map<String, dynamic>.from(response.data as Map<String, dynamic>);
      final articleDetailModel = AlmawdueaArticleDetailModel.fromJson(rawData);
      
      AppLogger.business('Article detail data mapped successfully', {'model': articleDetailModel.toString()});

      return Right(articleDetailModel);
    } on DioException catch (e) {
      AppLogger.apiError('AlmawdueaRepository - getAlmawdueaArticles', e);
      return Left(e.message ?? 'Connection attempt failed');
    } catch (e) {
      AppLogger.error('Data mapping error', e);
      return const Left('Error processing article detail response');
    }
  }
}
