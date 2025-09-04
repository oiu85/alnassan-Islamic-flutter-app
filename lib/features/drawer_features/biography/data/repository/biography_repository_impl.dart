import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/network_client.dart';
import '../../../../../core/utils/logger/log_helper.dart';
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
      LogHelper.logInfo('Fetching Biography Article data from API');
      final endpoint = '/public/articles/$BIOGRAPHY_ARTICLE_ID';
      final response = await _networkClient.get(endpoint);
      
      LogHelper.logApiResponse(
        'BiographyRepository',
        'Response Status: ${response.statusCode}\nResponse Data: ${response.data}',
      );
      
      if (response.data == null || (response.data as Map).isEmpty) {
        LogHelper.logNoDataReceived();
        throw DioException(
          requestOptions: RequestOptions(path: endpoint),
          error: 'No data received from server',
        );
      }
      
      final articleResponse = ArticleResponse.fromJson(response.data);
      final biographyArticle = BiographyMapper.mapFromResponse(articleResponse.data);
      LogHelper.logDataMapped(biographyArticle);
      
      return biographyArticle;
    } on DioException catch (e) {
      LogHelper.logFetchErrorWithDetails(e);
      rethrow;
    } catch (e) {
      LogHelper.logMappingError(e);
      throw DioException(
        requestOptions: RequestOptions(path: '/public/articles/$BIOGRAPHY_ARTICLE_ID'),
        error: 'Error processing server response',
      );
    }
  }
}
