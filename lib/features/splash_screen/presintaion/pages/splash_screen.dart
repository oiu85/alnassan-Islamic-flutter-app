import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/features/home/presintaion/pages/home_page.dart';
import 'package:nassan_app/features/splash_screen/presintaion/bloc/splash_bloc.dart';
import 'package:nassan_app/features/splash_screen/presintaion/bloc/splash_event.dart';
import 'package:nassan_app/features/splash_screen/presintaion/bloc/splash_state.dart';
import 'package:nassan_app/gen/assets.gen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashBloc()..add(const SplashInitialEvent()),
      child: BlocListener<SplashBloc, SplashState>(
        listenWhen: (previous, current) => previous.status != current.status,
        listener: (context, state) {
          if (state.status == SplashStatus.navigateToHome) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (_) => const HomePage()),
            );
          }
        },
        child: Scaffold(
          body: Center(
            child: Image.asset(Assets.images.splashScreeen.path),
          ),
        ),
      ),
    );
  }
}
