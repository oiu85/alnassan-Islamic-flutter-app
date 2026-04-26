import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nassan_app/core/shared/wdigets/app_drawer.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  // Using extension methods for easier access
  // No need for helper methods - use extensions directly: 25.w, 30.h, 16.sp

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Builder(
          builder: (BuildContext context) {
            return IconButton(
              padding: EdgeInsets.symmetric(horizontal: 14.w),
              icon: Icon(Icons.menu, size: 30.sp),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications_outlined, size: 30.sp),
        ),
        Drawer(child: AppDrawer()),
      ],
    );
  }
}
