import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/app_dependencies.dart';
import 'core/responsive/device_type.dart';
import 'core/responsive/screen_util_res.dart';
import 'core/navigation/bloc/shared_bloc.dart';
import 'core/settings/presentation/widgets/settings_listener.dart';
import 'features/biography/presentation/bloc/biography_bloc.dart';
import 'features/sound_library/presentation/bloc/sound_library_bloc.dart';
import 'features/advisory_fatwa/presentation/bloc/advisory_bloc.dart';
import 'features/global_search/presentation/bloc/global_search_bloc.dart';
import 'features/splash_screen/presentation/pages/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupAppDependencies();

  // Initialize settings service
  await ScreenUtilRes.initialize();

  GestureBinding.instance.resamplingEnabled =
      true; //? this is for prevent mouse from throw errors in flutter stack tree
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widgets is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Design size is set for standard mobile size, will scale for other devices
    return ScreenUtilInit(
      designSize: const Size(375, 812), // iPhone X design size as reference
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<SharedBloc>(create: (context) => SharedBloc()),
            BlocProvider<BiographyBloc>(
              create: (context) => getIt<BiographyBloc>(),
            ),
            BlocProvider<SoundLibraryBloc>(
              create: (context) => getIt<SoundLibraryBloc>(),
            ),
            BlocProvider<AdvisoryBloc>(
              create: (context) => getIt<AdvisoryBloc>(),
            ),
            BlocProvider<GlobalSearchBloc>(
              create: (context) => getIt<GlobalSearchBloc>(),
            ),
          ],
          child: SettingsListener(
            child: MaterialApp(
              title: 'Nassan App',
              home: const SplashScreen(),
              debugShowCheckedModeBanner: false,
              localizationsDelegates: const [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: const [Locale('ar')],
              locale: const Locale('ar'),
              builder: (context, widget) {
                return MediaQuery(
                  data: MediaQuery.of(context).copyWith(
                    textScaler: TextScaler.linear(
                      DeviceTypeUtil.getValue(
                        context: context,
                        mobile: 1.0,
                        tablet: 1.15,
                        desktop: 1.3,
                      ),
                    ),
                  ),
                  child: widget!,
                );
              },
            ),
          ),
        );
      },
    );
  }
}
