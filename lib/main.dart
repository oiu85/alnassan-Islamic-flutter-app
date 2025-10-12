import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/di/app_dependencies.dart';
import 'core/responsive/screen_util_res.dart';
import 'core/navigation/bloc/shared_bloc.dart';
import 'core/settings/domain/services/settings_service.dart';
import 'features/biography/presentation/bloc/biography_bloc.dart';
import 'features/sound_library/presentation/bloc/sound_library_bloc.dart';
import 'features/sound_library/presentation/widgets/global_audio_player.dart';
import 'features/advisory_fatwa/presentation/bloc/advisory_bloc.dart';
import 'features/book_library/presentation/bloc/books_bloc.dart';
import 'features/global_search/presentation/bloc/global_search_bloc.dart';
import 'features/splash_screen/presentation/pages/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupAppDependencies();
  await ScreenUtilRes.initialize();
  
  // Load settings and apply fullscreen mode
  final settingsService = SettingsService();
  await settingsService.initialize();
  if (settingsService.isFullScreen) {
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  } else {
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  }
  
  GestureBinding.instance.resamplingEnabled =
      true; //? this is for prevent mouse from throw errors in flutter stack tree
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      designSize: const Size(375, 812),
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
            BlocProvider<BooksBloc>(
              create: (context) => getIt<BooksBloc>(),
            ),
            BlocProvider<GlobalSearchBloc>(
              create: (context) => getIt<GlobalSearchBloc>(),
            ),
          ],
          child: MaterialApp(
            color: Colors.white,
            title: ' الشيخ احمد النعسان',
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
                  textScaler: TextScaler.linear(1),
                ),
                child: GlobalAudioPlayer(
                  child: widget!,
                ),
              );
            },
          ),
        );
      },
    );
  }
}
