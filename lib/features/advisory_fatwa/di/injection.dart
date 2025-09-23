import 'package:get_it/get_it.dart';
import '../data/repositories/advisory_repository.dart';
import '../data/repository/advisory_categories_repository_impl.dart';
import '../domain/repository/advisory_categories_repository.dart';
import '../presentation/bloc/advisory_bloc.dart';
import '../presentation/bloc/advisory_categories_bloc.dart';
import '../../../../core/network/network_client.dart';

void registerAdvisoryFatwaDependencies(GetIt getIt) {
  // Repositories
  getIt.registerLazySingleton<AdvisoryRepository>(
    () => AdvisoryRepositoryImpl(getIt<NetworkClient>()),
  );
  
  getIt.registerLazySingleton<AdvisoryCategoriesRepository>(
    () => AdvisoryCategoriesRepositoryImpl(getIt<NetworkClient>()),
  );

  // BLoCs
  getIt.registerLazySingleton<AdvisoryBloc>(
    () => AdvisoryBloc(getIt<AdvisoryRepository>()),
  );
  
  getIt.registerLazySingleton<AdvisoryCategoriesBloc>(
    () => AdvisoryCategoriesBloc(getIt<AdvisoryCategoriesRepository>()),
  );
}