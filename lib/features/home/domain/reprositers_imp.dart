import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../core/network_client.dart';
import '../../../core/utils/logger/log_helper.dart';
import '../data/model/home_model.dart';
import '../data/repositories/home_repository.dart';

@Injectable(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  final NetworkClient _networkClient;

  HomeRepositoryImpl(this._networkClient);

  @override
  Future<HomeModel> getHomeData() async {
    try {
      LogHelper.logFetchingHomeData();
      final response = await _networkClient.get(NetworkClient.homeUrl);

      LogHelper.logApiResponse(
        'HomeRepository',
        'Response Status: ${response.statusCode}\nResponse Data: ${response.data}',
      );

      if (response.data == null || (response.data as Map).isEmpty) {
        LogHelper.logNoDataReceived();
        throw DioException(
          requestOptions: RequestOptions(path: NetworkClient.homeUrl),
          error: 'No data received from server',
        );
      }

      final homeModel = HomeModel.fromJson(response.data);
      LogHelper.logDataMapped(homeModel);

      return homeModel;
    } on DioException catch (e) {
      LogHelper.logFetchErrorWithDetails(e);
      rethrow;
    } catch (e) {
      LogHelper.logMappingError(e);
      throw DioException(
        requestOptions: RequestOptions(path: NetworkClient.homeUrl),
        error: 'Error processing server response',
      );
    }
  }
}
