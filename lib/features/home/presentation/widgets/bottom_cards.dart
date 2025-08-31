import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';

import '../../../../gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ContentCard extends StatelessWidget {
  final String title;
  final String imagePath;

  final Color waveColor;
  final Color cardColor;

  const ContentCard({
    super.key,
    required this.title,
    required this.imagePath,
    required this.waveColor,
    required this.cardColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 4,
      clipBehavior: Clip.antiAlias, //! for the wave image has the same Card radius
      child: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset(
            Assets.svg.cardBackground.path,
            color: waveColor,
            fit: BoxFit.cover,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
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
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      children: [
        StaggeredGridTile.extent(
          crossAxisCellCount: 1,
          mainAxisExtent: 180,
          child: ContentCard(
            title: "الخطب والدروس",
            imagePath: Assets.images.mousqe.path,
            cardColor: AppColors.secondaryLight,
            waveColor: AppColors.homeCard,
          ),
        ),
        StaggeredGridTile.extent(
          crossAxisCellCount: 1,
          mainAxisExtent: 220,
          child: ContentCard(
            title: "الفتاوى الشرعية",
            imagePath: Assets.images.qurane.path,
            cardColor: AppColors.secondaryLight,
            waveColor: Color(0xE8DCCC66),
          ),
        ),
        StaggeredGridTile.extent(
          crossAxisCellCount: 1,
          mainAxisExtent: 150,
          child: ContentCard(
            title: "المكتبة الصوتية",
            imagePath: Assets.images.headphone.path,
            cardColor: AppColors.secondaryLight,
            waveColor: Color(0xFFFAF066),
          ),
        ),
        StaggeredGridTile.extent(
          crossAxisCellCount: 1,
          mainAxisExtent: 200,
          child: ContentCard(
            title: "المكتبة المرئية",
            imagePath: Assets.images.tablet.path,
            cardColor: AppColors.secondaryLight,
            waveColor: Color(0xE8DCCC66),
          ),
        ),
        StaggeredGridTile.extent(
          crossAxisCellCount: 1,
          mainAxisExtent: 180,
          child: ContentCard(
            title: "كلمات في مناسبات",
            imagePath: Assets.images.helal.path,
            cardColor: AppColors.secondaryLight,
            waveColor: Color(0xFFFAF066),
          ),
        ),
      ],
    );
  }
}
