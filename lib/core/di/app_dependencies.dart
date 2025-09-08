import 'package:get_it/get_it.dart';

import '../../features/html_viewer/injection.dart';
import '../network/network_client.dart';
import '../../features/biography/injection.dart';
import '../../features/biographies_and_hadiths/injection.dart';
import '../../features/hadith_almawduea/injection.dart';
import '../../features/lesson/injection.dart';

/// Global GetIt instance
final GetIt getIt = GetIt.instance;

/// Initialize all app dependencies
void setupAppDependencies() {
  // Register core dependencies
  getIt.registerLazySingleton<NetworkClient>(() => NetworkClient());
  
  // Register feature dependencies
  registerHtmlViewerDependencies(getIt);
  registerDrawerFeaturesDependencies(getIt);
  registerBiographiesDependencies(getIt);
  registerAlmawdueaDependencies(getIt);
  registerLessonDependencies(getIt);
}
