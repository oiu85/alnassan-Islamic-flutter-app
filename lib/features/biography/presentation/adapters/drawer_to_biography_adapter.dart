import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/biography_bloc.dart';
import '../pages/biography_page.dart';

class DrawerToBiographyAdapter {
  /// Navigate to the biography page from the drawer
  static void navigateToBiographyPage(BuildContext context, BiographyBloc biographyBloc) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BlocProvider.value(
          value: biographyBloc,
          child: const BiographyPage(),
        ),
      ),
    );
  }
  
  /// Create a function that can be called to navigate to the biography page
  static Function(BuildContext) createBiographyNavigator(BiographyBloc biographyBloc) {
    return (BuildContext context) {
      navigateToBiographyPage(context, biographyBloc);
    };
  }
}
