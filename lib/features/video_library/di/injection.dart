import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/network/network_client.dart';
import '../data/repository/video_repository_impl.dart';
import '../domain/repository/video_repository.dart';
import '../presentation/bloc/video_bloc.dart';

@module
abstract class VideoInjectionModule {
  @injectable
  VideoBloc get videoBloc => VideoBloc(GetIt.instance<VideoRepository>());
}

@module
abstract class VideoRepositoryModule {
  @injectable
  VideoRepository get videoRepository => VideoRepositoryImpl(GetIt.instance());
}

/// Register video library dependencies
void registerVideoLibraryDependencies(GetIt getIt) {
  // Register repository
  getIt.registerLazySingleton<VideoRepository>(
    () => VideoRepositoryImpl(getIt<NetworkClient>()),
  );
  
  // Register bloc
  getIt.registerFactory<VideoBloc>(
    () => VideoBloc(getIt<VideoRepository>()),
  );
}
