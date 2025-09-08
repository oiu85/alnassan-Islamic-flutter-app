import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/network/network_client.dart';
import '../../../../../core/utils/logger/app_logger.dart';
import '../../domain/model/biography_article.dart';
import '../../domain/repository/biography_repository.dart';
import '../mapper/biography_mapper.dart';
import '../response/article_response.dart';

@Injectable(as: BiographyRepository)
class BiographyRepositoryImpl implements BiographyRepository {
  final NetworkClient _networkClient;
  static const int BIOGRAPHY_ARTICLE_ID = 27;
  
  BiographyRepositoryImpl(this._networkClient);
  
  @override
  Future<BiographyArticle> getBiographyArticle() async {
    try {
      AppLogger.business('Fetching Biography Article data from API');
      final endpoint = '/public/articles/$BIOGRAPHY_ARTICLE_ID';
      final response = await _networkClient.get(endpoint);
      
      AppLogger.apiResponse('BiographyRepository - getBiographyArticle', {
        'statusCode': response.statusCode,
        'data': response.data,
      });
      
      if (response.data == null || (response.data as Map).isEmpty) {
        AppLogger.warning('No data received from API');
        throw DioException(
          requestOptions: RequestOptions(path: endpoint),
          error: 'No data received from server',
        );
      }
      
      final articleResponse = ArticleResponse.fromJson(response.data);
      final biographyArticle = BiographyMapper.mapFromResponse(articleResponse.data);
      AppLogger.business('Data mapped successfully', {'article': biographyArticle.toString()});
      
      return biographyArticle;
    } on DioException catch (e) {
      AppLogger.apiError('BiographyRepository - getBiographyArticle', e);
      rethrow;
    } catch (e) {
      AppLogger.error('Data mapping error', e);
      throw DioException(
        requestOptions: RequestOptions(path: '/public/articles/$BIOGRAPHY_ARTICLE_ID'),
        error: 'Error processing server response',
      );
    }
  }
}
