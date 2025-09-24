import 'package:dartz/dartz.dart';
import '../../../../config/api_config.dart';
import '../../../../core/network/network_client.dart';
import '../../domain/repository/notification_repository.dart';
import '../model/notification_model.dart';

class NotificationRepositoryImpl implements NotificationRepository {
  final NetworkClient _networkClient;

  NotificationRepositoryImpl(this._networkClient);

  @override
  Future<Either<String, NotificationModel>> getNotifications({
    int perPage = 10,
    int page = 1,
  }) async {
    try {
      final response = await _networkClient.get(
        ApiConfig.getNotifications(perPage: perPage, page: page),
      );

      if (response.statusCode == 200) {
        final data = response.data;
        final model = NotificationModel.fromJson(data);
        return Right(model);
      } else {
        return Left('Failed to load notifications: ${response.statusCode}');
      }
    } catch (e) {
      return Left('Unexpected error: $e');
    }
  }
}
