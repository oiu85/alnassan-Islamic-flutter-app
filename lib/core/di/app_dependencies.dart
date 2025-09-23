import 'package:get_it/get_it.dart';

import '../../features/html_viewer/injection.dart';
import '../../features/sound_library/di/injection.dart';
import '../../features/video_library/di/injection.dart';
import '../network/network_client.dart';
import '../../features/biography/di/injection.dart';
import '../../features/biographies_and_hadiths/di/injection.dart';
import '../../features/hadith_almawduea/di/injection.dart';
import '../../features/lesson/di/injection.dart';
import '../../features/advisory_fatwa/di/injection.dart';
import '../../features/contact_us/di/contact_injection.dart';
import '../../features/global_search/di/injection.dart';

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
  registerSoundLibraryDependencies(getIt);
  registerVideoLibraryDependencies(getIt);
  registerAdvisoryFatwaDependencies(getIt);
  registerContactDependencies(getIt);
  registerGlobalSearchDependencies(getIt);
}
