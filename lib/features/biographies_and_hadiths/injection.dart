import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../../../core/network/network_client.dart';
import 'data/repository/biographies_repository_impl.dart';
import 'domain/biographies_repository.dart';
import 'presentation/bloc/biographies_bloc.dart';

@module
abstract class BiographiesModule {
  @injectable
  BiographiesBloc biographiesBloc(BiographiesRepository repository) =>
      BiographiesBloc(repository);
}

/// Register biographies and hadiths dependencies
void registerBiographiesDependencies(GetIt getIt) {
  // Register repository
  getIt.registerFactory<BiographiesRepository>(
    () => BiographiesRepositoryImpl(getIt<NetworkClient>()),
  );
  
  // Register BLoC
  getIt.registerFactory<BiographiesBloc>(
    () => BiographiesBloc(getIt<BiographiesRepository>()),
  );
}
