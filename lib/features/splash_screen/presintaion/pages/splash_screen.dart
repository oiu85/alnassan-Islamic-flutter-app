import 'package:flutter/material.dart';
import 'package:nassan_app/gen/assets.gen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(Assets.images.nassanName.path),
    );
  }
}
