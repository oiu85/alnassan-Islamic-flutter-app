import 'package:get_it/get_it.dart';

import '../data/model/contact_remote_datasource.dart';
import '../data/repository/contact_repository_impl.dart';
import '../domain/repository/contact_repository.dart';
import '../presentation/bloc/contact_bloc.dart';

/// Register dependencies for the contact us feature
void registerContactDependencies(GetIt getIt) {
  // Data sources
  getIt.registerLazySingleton<ContactRemoteDataSource>(
    () => ContactRemoteDataSourceImpl(getIt()),
  );

  // Repositories
  getIt.registerLazySingleton<ContactRepository>(
    () => ContactRepositoryImpl(getIt()),
  );

  // BLoCs
  getIt.registerFactory(
    () => ContactBloc(getIt<ContactRepository>()),
  );
}
