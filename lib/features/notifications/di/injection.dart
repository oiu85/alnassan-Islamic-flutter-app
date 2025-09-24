import 'package:get_it/get_it.dart';
import '../../../../core/network/network_client.dart';

import '../data/repository/notification_repository_impl.dart';
import '../domain/repository/notification_repository.dart';
import '../presentation/bloc/notification_bloc.dart';

void registerNotificationDependencies(GetIt getIt) {
  // Repository
  getIt.registerLazySingleton<NotificationRepository>(
    () => NotificationRepositoryImpl(getIt<NetworkClient>()),
  );

  // BLoC
  getIt.registerFactory(() => NotificationBloc(getIt<NotificationRepository>()));
}


