import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:audio_service/audio_service.dart';

import '../../../../../core/network/network_client.dart';

import '../data/repository/sound_library_repository_impl.dart';
import '../domain/repository/sound_library_repository.dart';
import '../presentation/bloc/sound_library_bloc.dart';

/// Dependency injection module for sound library feature
/// Provides all necessary dependencies for the sound library functionality
@module
abstract class SoundLibraryModule {
  /// Provides SoundLibraryBloc instance with repository dependency
  @injectable
  SoundLibraryBloc soundLibraryBloc(SoundLibraryRepository repository) =>
      SoundLibraryBloc(repository);
}

/// Registers all sound library dependencies with GetIt service locator
/// This function should be called during app initialization
void registerSoundLibraryDependencies(GetIt getIt) {
  // Register repository implementation
  getIt.registerFactory<SoundLibraryRepository>(
    () => SoundLibraryRepositoryImpl(getIt<NetworkClient>()),
  );

  // Register BLoC for state management
  // AudioHandler is optional and registered later, so we check if it exists
  getIt.registerFactory<SoundLibraryBloc>(
    () {
      final repository = getIt<SoundLibraryRepository>();
      AudioHandler? audioHandler;
      try {
        audioHandler = getIt<AudioHandler>();
      } catch (e) {
        // AudioHandler not registered yet, will be null
        audioHandler = null;
      }
      return SoundLibraryBloc(repository, audioHandler);
    },
  );
}

/// Registers the audio handler in dependency injection
/// Should be called after AudioService.init() in main()
void registerAudioHandler(GetIt getIt, AudioHandler audioHandler) {
  getIt.registerSingleton<AudioHandler>(audioHandler);
}
