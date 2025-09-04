import 'package:get_it/get_it.dart';

import 'domain/repositories/html_viewer_repository_impl.dart';
import 'data/repositories/html_viewer_repository.dart';
import 'presentation/bloc/html_viewer_bloc.dart';

/// Register dependencies for the HTML viewer feature
void registerHtmlViewerDependencies(GetIt getIt) {
  // Repositories
  getIt.registerLazySingleton<HtmlViewerRepository>(
    () => HtmlViewerRepositoryImpl(),
  );
  
  // BLoCs
  getIt.registerFactory(
    () => HtmlViewerBloc(getIt<HtmlViewerRepository>()),
  );
}


