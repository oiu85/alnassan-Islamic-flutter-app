import 'package:dartz/dartz.dart';
import '../../data/model/notification_model.dart';

abstract class NotificationRepository {
  Future<Either<String, NotificationModel>> getNotifications({
    int perPage = 10,
    int page = 1,
  });
}


