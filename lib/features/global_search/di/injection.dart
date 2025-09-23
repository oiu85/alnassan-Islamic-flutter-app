import 'package:get_it/get_it.dart';

import '../../../core/network/network_client.dart';
import '../data/repository/global_search_repository_impl.dart';
import '../domain/repository/global_search_repository.dart';
import '../presentation/bloc/global_search_bloc.dart';

/// Register dependencies for the global search feature
void registerGlobalSearchDependencies(GetIt getIt) {
  // Repositories
  getIt.registerLazySingleton<GlobalSearchRepository>(
    () => GlobalSearchRepositoryImpl(getIt<NetworkClient>()),
  );

  // BLoCs
  getIt.registerFactory(
    () => GlobalSearchBloc(getIt<GlobalSearchRepository>()),
  );
}
