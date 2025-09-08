import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/core/responsive/device_type.dart';
import 'package:nassan_app/features/lesson/presentation/pages/lessons_page.dart';
import 'package:nassan_app/features/sound_library/presentation/pages/sounds_page.dart';

import '../../../../gen/assets.gen.dart';

import '../../../../gen/fonts.gen.dart';

class ContentCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final Image cardMainImage;
  final Color waveColor;
  final Color cardColor;
  final double paddingTop;
  final double paddingRight;

  const ContentCard({
    super.key,
    required this.title,
    required this.imagePath,
    required this.waveColor,
    required this.cardColor,
    required this.cardMainImage,
    required this.paddingTop,
    required this.paddingRight,
  });
  
  // Helper methods for responsive sizing
  double _fontSize(BuildContext context, double size) => ScreenUtil().setSp(size);
  double _width(double size) => ScreenUtil().setWidth(size);
  double _height(double size) => ScreenUtil().setHeight(size);
  double _radius(double size) => ScreenUtil().radius(size);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(_radius(20))),
      elevation: 3,
      clipBehavior: Clip.antiAlias, //? for the wave image has the same Card radius
      color: cardColor,
      child: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset(
            Assets.svg.cardBackground.path,
            color: waveColor,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: _height(20)),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: _fontSize(context, context.deviceValue(
                  mobile: 18.0,
                  tablet: 22.0,
                  desktop: 26.0,
                )),
              ),
            ),
          ),
          Positioned(
            top: _height(paddingTop),
            right: _width(paddingRight),
            child: SizedBox(
              width: context.deviceValue(
                mobile: cardMainImage.width,
                tablet: cardMainImage.width! * 1.2,
                desktop: cardMainImage.width! * 1.5,
              ),
              height: context.deviceValue(
                mobile: cardMainImage.height,
                tablet: cardMainImage.height! * 1.2,
                desktop: cardMainImage.height! * 1.5,
              ),
              child: cardMainImage,
            ),
          ),
        ],
      ),
    );
  }
}

class BottomCards extends StatelessWidget {
  const BottomCards({super.key});
  
  // Helper methods for responsive sizing
  double _width(double size) => ScreenUtil().setWidth(size);
  double _height(double size) => ScreenUtil().setHeight(size);

  @override
  Widget build(BuildContext context) {
    // Adjust grid based on device type
    final crossAxisCount = context.deviceValue(
      mobile: 2,
      tablet: 3,
      desktop: 4,
    );
    
    return StaggeredGrid.count(
      crossAxisCount: crossAxisCount,
      mainAxisSpacing: _height(10),
      crossAxisSpacing: _width(10),
      children: [







        StaggeredGridTile.extent(
          crossAxisCellCount: 1,
          mainAxisExtent: context.deviceValue(
            mobile: _height(220),
            tablet: _height(220),
            desktop: _height(260),
          ),
          child: ContentCard(
            paddingRight: ScreenUtil().setWidth(60),
            paddingTop: ScreenUtil().setHeight(65),
            cardMainImage: Image.asset(
              Assets.images.qurane.path,
              width: ScreenUtil().setWidth(80),
              height: ScreenUtil().setHeight(80),
            ),
            title: "الفتاوى الشرعية",
            imagePath: Assets.images.qurane.path,
            cardColor: AppColors.primary.withOpacity(0.3),
            waveColor: Color(0xFAF066).withOpacity(0.4),
          ),
        ),
        // cardColor: Color(0xFFE3B260).withOpacity(0.3),








        StaggeredGridTile.extent(
          crossAxisCellCount: 1,
          mainAxisExtent: context.deviceValue(
            mobile: _height(220),
            tablet: _height(260),
            desktop: _height(300),
          ),
          child: InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=> LessonsPage()));
            },
            child: ContentCard(
              paddingRight: ScreenUtil().setWidth(65),
              paddingTop: ScreenUtil().setHeight(65),
              title: "الخطب والدروس",
              imagePath: Assets.images.mousqe.path,
              cardColor: Color(0xE8DCCC80).withOpacity(0.4),
              waveColor: Color(0xE8DCCC66).withOpacity(0.4),
              cardMainImage: Image.asset(
                Assets.images.mousqe.path,
                width: ScreenUtil().setWidth(90),
                height: ScreenUtil().setHeight(90),
              ),
            ),
          ),
        ),













        StaggeredGridTile.extent(
          crossAxisCellCount: 1,
          mainAxisExtent: context.deviceValue(
            mobile: _height(220),
            tablet: _height(260),
            desktop: _height(300),
          ),
          child: ContentCard(
            paddingRight: ScreenUtil().setWidth(65),
            paddingTop: ScreenUtil().setHeight(75),
            title: "المكتبة المرئية",
            imagePath: Assets.images.tablet.path,
            cardColor: Color(0xFFF9F5E3).withOpacity(0.8),
            waveColor: Color(0xE8DCCC66),
            cardMainImage: Image.asset(
              Assets.images.tablet.path,
              width: ScreenUtil().setWidth(80),
              height: ScreenUtil().setHeight(80),
            ),
          ),
        ),
        StaggeredGridTile.extent(
          crossAxisCellCount: 1,
          mainAxisExtent: context.deviceValue(
            mobile: _height(220),
            tablet: _height(220),
            desktop: _height(260),
          ),
          child: InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=> SoundsPage()));
            },
            child: ContentCard(
              paddingRight: ScreenUtil().setWidth(70),
              paddingTop: ScreenUtil().setHeight(55),
              title: "المكتبة الصوتية",
              imagePath: Assets.images.headphone.path,
              cardColor: AppColors.secondaryLight,
              waveColor: Color(0xFFFAF066),
              cardMainImage: Image.asset(
                Assets.images.headphone.path,
                width: ScreenUtil().setWidth(70),
                height: ScreenUtil().setHeight(70),
              ),
            ),
          ),
        ),

        StaggeredGridTile.extent(
          crossAxisCellCount: 1,
          mainAxisExtent: context.deviceValue(
            mobile: _height(220),
            tablet: _height(220),
            desktop: _height(260),
          ),
          child: ContentCard(
            paddingRight: ScreenUtil().setWidth(60),
            paddingTop: ScreenUtil().setHeight(55),
            title: "كلمات في مناسبات",
            imagePath: Assets.images.helal.path,
            cardColor: AppColors.secondaryLight,
            waveColor: Color(0xFFFAF066),
            cardMainImage: Image.asset(
              Assets.images.helal.path,
              width: ScreenUtil().setWidth(80),
              height: ScreenUtil().setHeight(80),
            ),
          ),
        ),
      ],
    );
  }
}
