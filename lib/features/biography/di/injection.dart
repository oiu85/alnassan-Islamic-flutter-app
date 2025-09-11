import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import '../data/repository/biography_repository_impl.dart';
import '../domain/repository/biography_repository.dart';
import '../domain/use_case/get_biography_use_case.dart';
import '../presentation/bloc/biography_bloc.dart';


/// Register dependencies for all drawer features
void registerDrawerFeaturesDependencies(GetIt getIt) {
  // Register biography dependencies
  setupBiographyDependencies(getIt);

  // Add other drawer features registration here as needed
}
@module
abstract class BiographyModule {
  @injectable
  BiographyRepository provideBiographyRepository(BiographyRepositoryImpl impl) => impl;
}

void setupBiographyDependencies(GetIt getIt) {
  // Register repository
  getIt.registerFactory<BiographyRepository>(
    () => BiographyRepositoryImpl(getIt()),
  );
  
  // Register use case
  getIt.registerFactory<GetBiographyUseCase>(
    () => GetBiographyUseCase(getIt()),
  );
  
  // Register BLoC
  getIt.registerFactory<BiographyBloc>(
    () => BiographyBloc(getIt()),
  );
}
