import 'package:flutter/material.dart';

import '../../../../core/shared/wdigets/app_drawer.dart';

class LessonsAppBar extends StatelessWidget {
  const LessonsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_forward_outlined),
          ),
        ],
      ),
      drawer: Drawer(child: AppDrawer()),
    );
  }
}
