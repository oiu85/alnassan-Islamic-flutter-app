import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/network/network_client.dart';
import '../data/repository/almawduea_repository_impl.dart';
import '../domain/almawduea_repository.dart';
import '../presentation/bloc/almawduea_bloc.dart';

@module
abstract class AlmawdueaModule {
  @injectable
  AlmawdueaBloc almawdueaBloc(AlmawdueaRepository repository) =>
      AlmawdueaBloc(repository);
}

/// Register hadith almawduea dependencies
void registerAlmawdueaDependencies(GetIt getIt) {
  // Register repository
  getIt.registerFactory<AlmawdueaRepository>(
    () => AlmawdueaRepositoryImpl(getIt<NetworkClient>()),
  );

  // Register BLoC
  getIt.registerFactory<AlmawdueaBloc>(
    () => AlmawdueaBloc(getIt<AlmawdueaRepository>()),
  );
}
