import 'package:get_it/get_it.dart';
import '../../../core/network/network_client.dart';
import '../data/repository/lesson_repository_impl.dart';
import '../domain/lesson_repository.dart';
import '../presentation/bloc/lesson_bloc.dart';

void registerLessonDependencies(GetIt getIt) {
  // Register repository
  getIt.registerLazySingleton<LessonRepository>(
    () => LessonRepositoryImpl(getIt<NetworkClient>()),
  );

  // Register BLoC
  getIt.registerFactory<LessonBloc>(
    () => LessonBloc(getIt<LessonRepository>()),
  );
}
