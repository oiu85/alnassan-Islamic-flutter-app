import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/network/network_client.dart';

import '../data/repository/sound_library_repository_impl.dart';
import '../domain/repository/sound_library_repository.dart';
import '../presentation/bloc/sound_library_bloc.dart';

@module
abstract class SoundLibraryModule {
  @injectable
  SoundLibraryBloc soundLibraryBloc(SoundLibraryRepository repository) =>
      SoundLibraryBloc(repository);
}

/// Register sound library dependencies
void registerSoundLibraryDependencies(GetIt getIt) {
  // Register repository
  getIt.registerFactory<SoundLibraryRepository>(
    () => SoundLibraryRepositoryImpl(getIt<NetworkClient>()),
  );

  // Register BLoC
  getIt.registerFactory<SoundLibraryBloc>(
    () => SoundLibraryBloc(getIt<SoundLibraryRepository>()),
  );
}
