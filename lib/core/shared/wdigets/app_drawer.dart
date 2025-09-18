import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marquee/marquee.dart';
import 'package:nassan_app/core/responsive/device_type.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import '../../../features/biographies_and_hadiths/presentation/pages/hadith_page.dart';
import '../../../features/biographies_and_hadiths/presentation/bloc/biographies_bloc.dart';
import '../../../features/hadith_almawduea/presentation/pages/almawduea_page.dart';
import '../../../features/hadith_almawduea/presentation/bloc/almawduea_bloc.dart';
import '../../../features/with_habib_almustafa/presentation/pages/habib_mustafa.dart';
import '../../../gen/assets.gen.dart';

import '../../../features/biography/presentation/adapters/drawer_to_biography_adapter.dart';
import '../../../features/biography/presentation/bloc/biography_bloc.dart';
import '../../di/app_dependencies.dart';
import '../../../features/home/data/model/home_model.dart';

class AppDrawer extends StatelessWidget {
  final List<ArticleCategory>? categories;
  
  const AppDrawer({super.key, this.categories});

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
              // Use API categories if available, otherwise use original static items
              if (categories != null && categories!.isNotEmpty) ...[
                // Map API categories to original functionality
                ...categories!.map((category) {
                  // Map category titles to original functionality
                  String title = category.catTitle ?? '';
                  VoidCallback onTap;
                  
                  if (title.contains('السيرة الذاتية') || title.contains('سيرة')) {
                    onTap = () {
                      final biographyBloc = context.read<BiographyBloc>();
                      DrawerToBiographyAdapter.navigateToBiographyPage(context, biographyBloc);
                    };
                  } else if (title.contains('التراجم') || title.contains('الأحاديث')) {
                    onTap = () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BlocProvider(
                            create: (context) => getIt<BiographiesBloc>(),
                            child: const HadithPage(),
                          ),
                        ),
                      );
                    };
                  } else if (title.contains('الموضوعة')) {
                    onTap = () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BlocProvider(
                            create: (context) => getIt<AlmawdueaBloc>(),
                            child: const AlmawdueaPage(),
                          ),
                        ),
                      );
                    };
                  } else if (title.contains('الحبيب') || title.contains('مصطفى')) {
                    onTap = () {
                      Navigator.of(context).push(MaterialPageRoute(                          builder: (context) => HabibMustafa(
                            catId: category.catId ?? 13,
                            catMenus: int.tryParse(category.catMenus ?? '40'),
                            articlesPerPage: 3,
                            categoriesPerPage: 3,
                            articlesPage: 1,
                            categoriesPage: 1,
                          )));
                    };
                  } else {
                    // Default action for unknown categories
                    onTap = () {};
                  }
                  
                  return Column(
                    children: [
                      buildDrawerItem(
                        context,
                        title,
                        Assets.images.drawerImage.path,
                        onTap,
                      ),
                      SizedBox(height: _height(25)),
                    ],
                  );
                }),
              ],
              
              SizedBox(height: _height(35)),



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
  final iconSize = context.deviceValue(  mobile: 30.0,
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
          Expanded(
            child: _buildMarqueeText(
              context,
              title,
              fontSize,
            ),
          ),
        ],
      ),
    ),
  );
}

Widget _buildMarqueeText(BuildContext context, String text, double fontSize) {
  // Calculate available width (approximate)
  final screenWidth = MediaQuery.of(context).size.width;
  final availableWidth = screenWidth - ScreenUtil().setWidth(100); // Account for icon and padding
  
  // Create a text painter to measure text width
  final textPainter = TextPainter(
    text: TextSpan(
      text: text,
      style: TextStyle(
        fontFamily: FontFamily.tajawal,
        fontSize: ScreenUtil().setSp(fontSize),
      ),
    ),
    textDirection: TextDirection.rtl,
  );
  textPainter.layout();
  
  // If text fits in available space, show normal text
  if (textPainter.width <= availableWidth) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: FontFamily.tajawal,
        fontSize: ScreenUtil().setSp(fontSize),
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
  
  // If text is too long, use marquee
  return Container(
    height: ScreenUtil().setHeight(30), // Fixed height for consistent layout
    child: Marquee(
      text: text,
      style: TextStyle(
        fontFamily: FontFamily.tajawal,
        fontSize: ScreenUtil().setSp(fontSize),
      ),
      scrollAxis: Axis.horizontal,
      crossAxisAlignment: CrossAxisAlignment.center,
      blankSpace: 20.0,
      velocity: 30.0,
      pauseAfterRound: Duration(seconds: 1),
      startPadding: 10.0,
      accelerationDuration: Duration(seconds: 1),
      accelerationCurve: Curves.linear,
      decelerationDuration: Duration(milliseconds: 500),
      decelerationCurve: Curves.easeOut,
    ),
  );
}
