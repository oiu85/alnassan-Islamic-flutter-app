import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';

import '../../../../gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../../gen/fonts.gen.dart';

class ContentCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final Image cardMainImage;
  final Color waveColor;
  final Color cardColor;
  final double  paddingTop;
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

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
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
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 18,
              ),
            ),
          ),
          Positioned(
            top: paddingTop,
            right: paddingRight,
            child: cardMainImage,
          ),
        ],
      ),
    );
  }
}

class BottomCards extends StatelessWidget {
  const BottomCards({super.key});

  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: [







        StaggeredGridTile.extent(
          crossAxisCellCount: 1,
          mainAxisExtent: 180,
          child: ContentCard(
            paddingRight: 60,
            paddingTop: 65,
            cardMainImage: Image.asset(Assets.images.qurane.path,width: 80,height: 80,),
            title: "الفتاوى الشرعية",
            imagePath: Assets.images.qurane.path,
            cardColor: AppColors.primary.withOpacity(0.3),
            waveColor: Color(0xFAF066).withOpacity(0.4),
          ),
        ),
        // cardColor: Color(0xFFE3B260).withOpacity(0.3),








        StaggeredGridTile.extent(
          crossAxisCellCount: 1,
          mainAxisExtent: 220,
          child: ContentCard(
            paddingRight: 65,
            paddingTop: 65,
            title: "الخطب والدروس",
            imagePath: Assets.images.mousqe.path,
            cardColor: Color(0xE8DCCC80).withOpacity(0.4),
            waveColor: Color(0xE8DCCC66).withOpacity(0.4),
            cardMainImage: Image.asset(Assets.images.mousqe.path,width: 90,height: 90,),
          ),
        ),













        StaggeredGridTile.extent(
          crossAxisCellCount: 1,
          mainAxisExtent: 220,
          child: ContentCard(
            paddingRight: 65,
            paddingTop: 75,
            title: "المكتبة المرئية",
            imagePath: Assets.images.tablet.path,
            cardColor: Color(0xFFF9F5E3).withOpacity(0.8),
            waveColor: Color(0xE8DCCC66),
            cardMainImage: Image.asset(Assets.images.tablet.path,width: 80,height: 80,),
          ),
        ),
        StaggeredGridTile.extent(
          crossAxisCellCount: 1,
          mainAxisExtent: 180,
          child: ContentCard(
            paddingRight: 70,
            paddingTop: 55,
            title: "المكتبة الصوتية",
            imagePath: Assets.images.headphone.path,
            cardColor: AppColors.secondaryLight,
            waveColor: Color(0xFFFAF066),
            cardMainImage: Image.asset(Assets.images.headphone.path,width: 70,height: 70,),
          ),
        ),

        StaggeredGridTile.extent(
          crossAxisCellCount: 1,
          mainAxisExtent: 180,
          child: ContentCard(
            paddingRight: 60,
            paddingTop: 55,
            title: "كلمات في مناسبات",
            imagePath: Assets.images.helal.path,
            cardColor: AppColors.secondaryLight,
            waveColor: Color(0xFFFAF066),
            cardMainImage: Image.asset(Assets.images.helal.path,width: 80,height: 80),
          ),
        ),
      ],
    );
  }
}
