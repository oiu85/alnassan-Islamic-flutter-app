import 'package:get_it/get_it.dart';

import 'biography/injection.dart';

/// Register dependencies for all drawer features
void registerDrawerFeaturesDependencies(GetIt getIt) {
  // Register biography dependencies
  setupBiographyDependencies(getIt);
  
  // Add other drawer features registration here as needed
}
