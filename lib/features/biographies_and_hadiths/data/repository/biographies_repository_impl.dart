import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/network/network_client.dart';
import '../../../../core/utils/logger/log_helper.dart';
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
      final url = '${NetworkClient.baseUrl}/public/categories/articles/$categoryId/with-articles?per_page=$perPage&page=$page';
      
      LogHelper.logFetchingHomeData(); // Reusing existing log method
      final response = await _networkClient.get(url);

      LogHelper.logApiResponse(
        'BiographiesRepository',
        'Response Status: ${response.statusCode}\nResponse Data: ${response.data}',
      );

      if (response.data == null || (response.data as Map).isEmpty) {
        LogHelper.logNoDataReceived();
        throw DioException(
          requestOptions: RequestOptions(path: url),
          error: 'No data received from server',
        );
      }

      final rawData = Map<String, dynamic>.from(response.data as Map<String, dynamic>);
      final biographiesModel = BiographiesAndHadithsModel.fromJson(rawData);
      
      LogHelper.logDataMapped(biographiesModel);

      return biographiesModel;
    } on DioException catch (e) {
      LogHelper.logFetchErrorWithDetails(e);
      rethrow;
    } catch (e) {
      LogHelper.logMappingError(e);
      throw DioException(
        requestOptions: RequestOptions(path: '${NetworkClient.baseUrl}/public/categories/articles/$categoryId/with-articles'),
        error: 'Error processing server response',
      );
    }
  }
}
