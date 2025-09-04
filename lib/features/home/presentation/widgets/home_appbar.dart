import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nassan_app/features/home/presentation/widgets/app_drawer.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  // Helper method for font sizes
  // Helper methods for responsive sizing
  double _fontSize(double size) => ScreenUtil().setSp(size);
  double _width(double size) => ScreenUtil().setWidth(size);
  double _height(double size) => ScreenUtil().setHeight(size);
  double _radius(double size) => ScreenUtil().radius(size);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Builder(
          builder: (BuildContext context) {
            return IconButton(
              padding: EdgeInsets.symmetric(horizontal: _width(14)),
              icon: Icon(Icons.menu, size: ScreenUtil().setSp(30)),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.notifications_outlined, size: ScreenUtil().setSp(30)),
        ),
        Drawer(
          child: AppDrawer(),
        )
      ],
    );
  }
}
