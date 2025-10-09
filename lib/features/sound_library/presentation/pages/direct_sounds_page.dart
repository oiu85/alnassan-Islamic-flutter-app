import 'package:flutter/material.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
import 'package:nassan_app/core/shared/wdigets/AppScaffold.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import '../../../../core/shared/wdigets/app_drawer.dart';
import '../../../../gen/assets.gen.dart';
import '../widgets/sound_card.dart';
import '../../data/model.dart';

/// Page for displaying all direct sounds from a category
class DirectSoundsPage extends StatelessWidget {
  final Level1RootCategory category;

  const DirectSoundsPage({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return AppScaffold.custom(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.viewerBackground.path),
            fit: BoxFit.cover,
          ),
        ),
        child: CustomScrollView(
          slivers: [
            // Title
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20.w,),
                child: Text(
                  category.catTitle,
                  style: TextStyle(
                    fontFamily: FontFamily.tajawal,
                    fontSize: 24.f,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            // Direct sounds content
            SliverToBoxAdapter(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (category.directSounds.isNotEmpty) ...[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 16.w),
                        child: GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 1,
                                crossAxisSpacing: 2.w,
                                mainAxisSpacing: 2.h,
                              ),
                          itemCount: category.directSounds.length,
                          itemBuilder: (context, index) {
                            final sound = category.directSounds[index];
                            return SoundCard(sound: sound);
                          },
                        ),
                      ),
                    ] else ...[
                      Padding(
                        padding: EdgeInsets.all(24.w),
                        child: Center(
                          child: Text(
                            'لا توجد أصوات متاحة',
                            style: TextStyle(
                              fontFamily: FontFamily.tajawal,
                              fontSize: 18.f,
                              color: AppColors.grey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
            ),
          ],
        ),
      ),
    );
  }

}
