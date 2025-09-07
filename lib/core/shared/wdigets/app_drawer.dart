import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nassan_app/core/responsive/device_type.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import '../../../features/biographies_and_hadiths/presentation/pages/hadith_page.dart';
import '../../../features/biographies_and_hadiths/presentation/bloc/biographies_bloc.dart';
import '../../../features/hadith_almawduea/presentation/pages/almawduea_page.dart';
import '../../../gen/assets.gen.dart';

import '../../../features/biography/presentation/adapters/drawer_to_biography_adapter.dart';
import '../../../features/biography/presentation/bloc/biography_bloc.dart';
import '../../di/app_dependencies.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  // Helper method for responsive sizing
  double _height(double size) => ScreenUtil().setHeight(size);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(top: _height(20)),
          child: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.close_outlined,
              size: context.deviceValue(
                mobile: 24.0,
                tablet: 30.0,
                desktop: 36.0,
              ),
            ),
          ),
        ),
        Expanded(
          child: ListView(
            padding: EdgeInsets.symmetric(vertical: _height(10)),
            children: [
              buildDrawerItem(
                context,
                "السيرة الذاتية",
                Assets.images.drawerImage.path,
                () {
                  final biographyBloc = context.read<BiographyBloc>();
                  DrawerToBiographyAdapter.navigateToBiographyPage(context, biographyBloc);
                },
              ),
              SizedBox(height: _height(25)),
              buildDrawerItem(
                context,
                "باب التراجم والأحاديث",
                Assets.images.drawerImage.path,
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BlocProvider(
                        create: (context) => getIt<BiographiesBloc>(),
                        child: const HadithPage(),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: _height(25)),
              buildDrawerItem(
                context,
                "الأحاديث الموضوعة",
                Assets.images.drawerImage.path,
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AlmawdueaPage(),
                    ),
                  );
                },
              ),
              SizedBox(height: _height(25)),
              buildDrawerItem(
                context,
                "مع الحبيب مصطفى",
                Assets.images.drawerImage.path,
                () {
                },
              ),
              SizedBox(height: _height(25)),
              buildDrawerItem(
                context,"كلمة الشهر", Assets.images.drawerImage.path, () {
              }),
              SizedBox(height: _height(35)),
              Divider(),



              SizedBox(height: _height(35)),
              buildDrawerItem(
                context,"اتصل بنا", Assets.images.contactUs.path, () {
              }),
              SizedBox(height: _height(25)),
              buildDrawerItem(
                context,"قناة التلغرام", Assets.images.telegram.path, () {
              }),
              SizedBox(height: _height(25)),
              buildDrawerItem(
                context,
                "إعدادات التطبيق",
                Assets.images.settings.path,
                () {
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}

Widget buildDrawerItem(BuildContext context, String title, String imagePath, VoidCallback onTap) {
  // Responsive sizes based on device type
  final iconSize = context.deviceValue(
    mobile: 30.0,
    tablet: 38.0,
    desktop: 45.0,
  );

  final fontSize = context.deviceValue(
    mobile: 18.0,
    tablet: 22.0,
    desktop: 26.0,
  );

  return Padding(
    padding: EdgeInsets.symmetric(
      vertical: ScreenUtil().setHeight(12),
      horizontal: ScreenUtil().setWidth(30),
    ),
    child: InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(ScreenUtil().radius(8)),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: ScreenUtil().setWidth(iconSize),
            height: ScreenUtil().setHeight(iconSize),
          ),
          SizedBox(width: ScreenUtil().setWidth(10)),
          Text(
            title,
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: ScreenUtil().setSp(fontSize),
            ),
          ),
        ],
      ),
    ),
  );
}
