import 'package:get_it/get_it.dart';

import '../../../core/network/network_client.dart';
import '../data/repository/advisory_categories_repository_impl.dart';
import '../domain/repository/advisory_categories_repository.dart';
import '../presentation/bloc/advisory_categories_bloc.dart';
import '../presentation/bloc/advisory_bloc.dart';
import '../presentation/bloc/category_details_bloc.dart';
import '../presentation/bloc/advisory_viewer_bloc.dart';
import '../presentation/bloc/fatwa_list_bloc.dart';

/// Register dependencies for the advisory fatwa feature
void registerAdvisoryFatwaDependencies(GetIt getIt) {
  // Repositories
  getIt.registerLazySingleton<AdvisoryCategoriesRepository>(
    () => AdvisoryCategoriesRepositoryImpl(getIt<NetworkClient>()),
  );

  // BLoCs
  getIt.registerFactory(
    () => AdvisoryCategoriesBloc(getIt<AdvisoryCategoriesRepository>()),
  );
  
  getIt.registerFactory(
    () => AdvisoryBloc(getIt<AdvisoryCategoriesRepository>()),
  );
  
  getIt.registerFactory(
    () => CategoryDetailsBloc(getIt<AdvisoryCategoriesRepository>()),
  );
  
  getIt.registerFactory(
    () => AdvisoryViewerBloc(getIt<AdvisoryCategoriesRepository>()),
  );
  
  getIt.registerFactory(
    () => FatwaListBloc(getIt<AdvisoryCategoriesRepository>()),
  );
}
