import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../core/network_client.dart';
import '../../../core/utils/logger_util.dart';
import '../data/model/home_model.dart';
import '../data/repositories/home_repository.dart';

@Injectable(as: HomeRepository)
class HomeRepositoryImpl implements HomeRepository {
  final NetworkClient _networkClient;

  HomeRepositoryImpl(this._networkClient);

  @override
  Future<HomeModel> getHomeData() async {
    try {
      LoggerUtil.logStep('Fetching home data');
      final response = await _networkClient.get(NetworkClient.homeUrl);

      LoggerUtil.logApiResponse(
        'HomeRepository',
        'Response Status: ${response.statusCode}\nResponse Data: ${response.data}',
      );

      if (response.data == null || (response.data as Map).isEmpty) {
        LoggerUtil.logError('No data received from server');
        throw DioException(
          requestOptions: RequestOptions(path: NetworkClient.homeUrl),
          error: 'No data received from server',
        );
      }

      final homeModel = HomeModel.fromJson(response.data);
      LoggerUtil.logStep(
        'Data mapped to HomeModel successfully',
        details: 'Model: $homeModel',
      );

      return homeModel;
    } on DioException catch (e) {
      LoggerUtil.logError(
        'Failed to fetch home data: ${e.message}',
        stackTrace: e.stackTrace?.toString(),
      );
      rethrow;
    } catch (e) {
      LoggerUtil.logError(
        'Error mapping data to HomeModel: $e',
        stackTrace: (e as Error).stackTrace.toString(),
      );
      throw DioException(
        requestOptions: RequestOptions(path: NetworkClient.homeUrl),
        error: 'Error processing server response',
      );
    }
  }
}
