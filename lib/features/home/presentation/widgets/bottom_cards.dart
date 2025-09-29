import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/core/di/app_dependencies.dart';
import 'package:nassan_app/core/responsive/device_type.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
import 'package:nassan_app/core/network/network_client.dart';
import 'package:nassan_app/features/lesson/presentation/bloc/lesson_bloc.dart';
import 'package:nassan_app/features/lesson/presentation/pages/lessons_page.dart';
import 'package:nassan_app/features/lesson/presentation/bloc/lesson_event.dart';
import 'package:nassan_app/features/sound_library/presentation/pages/sounds_page.dart';
import 'package:nassan_app/features/sound_library/presentation/bloc/sound_library_bloc.dart';
import 'package:nassan_app/features/words_on_occasions/presentation/pages/words_on_occasions_page.dart';
import 'package:nassan_app/features/words_on_occasions/presentation/bloc/words_on_occasions_bloc.dart';
import 'package:nassan_app/features/words_on_occasions/data/repository/words_on_occasions_repository_impl.dart';
import 'package:nassan_app/features/video_library/presentation/pages/video_page.dart';
import 'package:nassan_app/features/advisory_fatwa/presentation/pages/advisors_page.dart';

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
  
  // Using extension methods for easier access
  // No need for helper methods - use extensions directly: 25.w, 30.h, 16.f

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(23.r)
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(bottomRight: Radius.circular(23.r)),
            child: SvgPicture.asset(
              Assets.svg.cardBackground.path,
              color: waveColor,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 13.h, left: 34.w, right: 12.w),
            child: Text(
              title,
              textAlign: TextAlign.center,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              softWrap: true,
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: context.deviceValue(
                  mobile: 14.f,
                  tablet: 22.f,
                  desktop: 26.f,
                ),
              ),
            ),
          ),
          Positioned(
            top: paddingTop.h,
            right: paddingRight.w,
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
  
  // Using extension methods for easier access
  // No need for helper methods - use extensions directly: 25.w, 30.h, 16.f

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
      mainAxisSpacing: 20.h,
      crossAxisSpacing: 20.w,
      children: [

        StaggeredGridTile.extent(
          crossAxisCellCount: 1,
          mainAxisExtent: context.deviceValue(
            mobile: 191.h,
            tablet: 270.h,
            desktop: 300.h,
          ),
          child: InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => const AdvisorsPage(),
              ));
            },
            child: ContentCard(
              paddingRight: 60.w,
              paddingTop: 65.h,
              cardMainImage: Image.asset(
                Assets.images.qurane.path,
                width: 80.w,
                height: 80.h,
              ),
              title: "الفتاوى الشرعية",
              cardColor: AppColors.bottomCardColor.withAlpha(70),
              waveColor: AppColors.waveCardColor,
            ),
          ),
        ),
        // cardColor: Color(0xFFE3B260).withOpacity(0.3),



        StaggeredGridTile.extent(
          crossAxisCellCount: 1,
          mainAxisExtent: context.deviceValue(
            mobile: 191.h,
            tablet: 270.h,
            desktop: 300.h,
          ),
          child: InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => BlocProvider(
                  create: (context) => getIt<LessonBloc>()..add(
                    FetchLessonsSubCategoriesEvent(catMenus: 21)
                  ),
                  child: LessonsPage(),
                ),
              ));
            },
            child: ContentCard(
              paddingRight: 80.w,
              paddingTop: 65.h,
              cardMainImage: Image.asset(
                Assets.images.mousqe.path,
                width: 70.w,
                height: 70.h,
              ),
              title: "الخطب والدروس",
              cardColor: AppColors.bottomCardColor2.withAlpha(125),
              waveColor: AppColors.waveCardColor2,
            ),
          ),
        ),





        StaggeredGridTile.extent(
          crossAxisCellCount: 1,
          mainAxisExtent: context.deviceValue(
            mobile: 191.h,
            tablet: 270.h,
            desktop: 300.h,
          ),
          child: InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => const VideoPage(),
              ));
            },
            child: ContentCard(
              paddingRight: 79.w,
              paddingTop: 65.h,
              cardMainImage: Image.asset(
                Assets.images.tablet.path,
                width: 70.w,
                height: 70.h,
              ),
              title: "المكتبة المرئية",
              cardColor: AppColors.bottomCardColor2.withAlpha(125),
              waveColor: AppColors.waveCardColor2,
            ),
          ),
        ),
        StaggeredGridTile.extent(
          crossAxisCellCount: 1,
          mainAxisExtent: context.deviceValue(
            mobile: 191.h,
            tablet: 270.h,
            desktop: 300.h,
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
              paddingRight: 70.w,
              paddingTop: 65.h,
              cardMainImage: Image.asset(
                Assets.images.headphone.path,
                width: 70.w,
                height: 70.h,
              ),
              title: "المكتبة الصوتية",
              cardColor: AppColors.bottomCardColor.withAlpha(75),
              waveColor: AppColors.waveCardColor,
            ),
          ),
        ),

        StaggeredGridTile.extent(
          crossAxisCellCount: 1,
          mainAxisExtent: context.deviceValue(
            mobile: 191.h,
            tablet: 270.h,
            desktop: 300.h,
          ),
          child: InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => BlocProvider(
                  create: (context) => WordsOnOccasionsBloc(
                    WordsOnOccasionsRepositoryImpl(NetworkClient())
                  ),
                  child: WordsOnOccasionsPage(),
                ),
              ));
            },
            child: ContentCard(
              paddingRight: 60.w,
              paddingTop: 65.h,
              cardMainImage: Image.asset(
                Assets.images.helal.path,
                width: 80.w,
                height: 75.h,
              ),
              title: "كلمات في مناسبات",
              cardColor: AppColors.bottomCardColor.withAlpha(70),
              waveColor: AppColors.waveCardColor,
            ),
          ),
        ),
      ],
    );
  }
}
