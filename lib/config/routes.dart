import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nassan_app/features/splash_screen/presintaion/pages/splash_screen.dart';
import 'package:nassan_app/features/home/presintaion/pages/home_page.dart';

class AppRoutes {
  static const String splash = '/';
  static const String home = '/home';
}

final GoRouter router = GoRouter(
  initialLocation: AppRoutes.splash,
  routes: [
    GoRoute(
      path: AppRoutes.splash,
      name: 'splash',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: AppRoutes.home,
      name: 'home',
      builder: (context, state) => const HomePage(),
    ),
  ],
);