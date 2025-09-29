import 'package:flutter/material.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';

import '../../../../core/shared/wdigets/app_drawer.dart';

class LessonsAppBar extends StatelessWidget {
  const LessonsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(Icons.arrow_forward_outlined),
              iconSize: 28.f,
            ),
          ),
        ],
      ),
      drawer: Drawer(child: AppDrawer()),
    );
  }
}
