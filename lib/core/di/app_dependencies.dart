import 'package:get_it/get_it.dart';

import '../../features/drawer_features/injection.dart';
import '../../features/html_viewer/injection.dart';
import '../network_client.dart';

/// Global GetIt instance
final GetIt getIt = GetIt.instance;

/// Initialize all app dependencies
void setupAppDependencies() {
  // Register core dependencies
  getIt.registerLazySingleton<NetworkClient>(() => NetworkClient());
  
  // Register feature dependencies
  registerHtmlViewerDependencies(getIt);
  registerDrawerFeaturesDependencies(getIt);
}
