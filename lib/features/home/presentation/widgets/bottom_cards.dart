import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/core/di/app_dependencies.dart';
import 'package:nassan_app/core/responsive/device_type.dart';
import 'package:nassan_app/features/lesson/presentation/pages/lessons_page.dart';
import 'package:nassan_app/features/sound_library/presentation/pages/sounds_page.dart';
import 'package:nassan_app/features/sound_library/presentation/bloc/sound_library_bloc.dart';

import '../../../../gen/assets.gen.dart';

import '../../../../gen/fonts.gen.dart';

class ContentCard extends StatelessWidget {
  final String title;
  final Image cardMainImage;
  final Color waveColor;
  final Color cardColor;
  final double paddingTop;
  final double paddingRight;

  const ContentCard({
    super.key,
    required this.title,
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
    return Container(
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(23)
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(20)),
            child: SvgPicture.asset(
              Assets.svg.cardBackground.path,
              color: waveColor,
              fit: BoxFit.cover,
            ),
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
            cardColor: AppColors.bottomCardColor.withAlpha(70),
            waveColor: AppColors.waveCardColor,
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
                paddingRight: ScreenUtil().setWidth(60),
                paddingTop: ScreenUtil().setHeight(65),
                cardMainImage: Image.asset(
                  Assets.images.mousqe.path,
                  width: ScreenUtil().setWidth(80),
                  height: ScreenUtil().setHeight(80),
                ),
                title: "الخطب والدروس",
                cardColor: AppColors.bottomCardColor2.withAlpha(125),
                waveColor: AppColors.waveCardColor2.withAlpha(100),
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
            paddingRight: ScreenUtil().setWidth(60),
            paddingTop: ScreenUtil().setHeight(65),
            cardMainImage: Image.asset(
              Assets.images.tablet.path,
              width: ScreenUtil().setWidth(80),
              height: ScreenUtil().setHeight(80),
            ),
            title: "المكتبة المرئية",
            cardColor: AppColors.bottomCardColor2.withAlpha(125),
            waveColor: AppColors.waveCardColor2.withAlpha(100),
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
              Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => BlocProvider(
                  create: (context) => getIt<SoundLibraryBloc>(),
                  child: SoundsPage(),
                ),
              ));
            },
            child: ContentCard(
              paddingRight: ScreenUtil().setWidth(60),
              paddingTop: ScreenUtil().setHeight(65),
              cardMainImage: Image.asset(
                Assets.images.headphone.path,
                width: ScreenUtil().setWidth(80),
                height: ScreenUtil().setHeight(80),
              ),
              title: "المكتبة الصوتية",
              cardColor: AppColors.bottomCardColor.withAlpha(75),
              waveColor: AppColors.waveCardColor.withAlpha(100),
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
            paddingTop: ScreenUtil().setHeight(65),
            cardMainImage: Image.asset(
              Assets.images.helal.path,
              width: ScreenUtil().setWidth(80),
              height: ScreenUtil().setHeight(80),
            ),
            title: "كلمات في مناسبات",
            cardColor: AppColors.bottomCardColor.withAlpha(70),
            waveColor: AppColors.waveCardColor,
          ),
        ),
      ],
    );
  }
}
