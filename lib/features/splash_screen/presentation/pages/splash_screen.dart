import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/core/responsive/device_type.dart';
import 'package:nassan_app/features/splash_screen/presentation/bloc/splash_bloc.dart';
import 'package:nassan_app/features/splash_screen/presentation/bloc/splash_event.dart';
import 'package:nassan_app/features/splash_screen/presentation/bloc/splash_state.dart';
import 'package:nassan_app/gen/assets.gen.dart';

import '../../../../core/navigation/main_navigation.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashBloc()..add(const SplashInitialEvent()),
      child: BlocListener<SplashBloc, SplashState>(
        listenWhen: (previous, current) => previous.status != current.status,
        listener: (context, state) {
          if (state.status.isSuccess()) {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (_) => const MainNavigation()),
            );
          }
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          body: SizedBox.expand( // ← يضمن ملء الشاشة كاملة
            child: DecoratedBox(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(Assets.images.splashScreeen.path),
                  fit: BoxFit.cover, // ← الأفضل لأنه يحافظ على التناسب ويملأ الشاشة
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
