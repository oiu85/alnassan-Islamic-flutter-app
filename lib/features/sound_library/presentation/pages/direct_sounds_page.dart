import 'package:flutter/material.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
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
    return Scaffold(
      drawer: const Drawer(child: AppDrawer()),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.viewerBackground.path),
            fit: BoxFit.cover,
          ),
        ),
        child: CustomScrollView(
          slivers: [
            // App Bar
            SliverAppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              pinned: false,
              floating: true,
              actions: [
                IconButton(
                  icon: const Icon(Icons.arrow_forward_outlined),
                  onPressed: () => Navigator.of(context).maybePop(),
                ),
              ],
            ),

            // Title
            SliverToBoxAdapter(
              child: Container(
                child: Text(
                  category.catTitle,
                  style: TextStyle(
                    fontSize: 20.f,
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
                      SizedBox(height: 8.h),
                      GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 1.4,
                              crossAxisSpacing: 8,
                              mainAxisSpacing: 8,
                            ),
                        itemCount: category.directSounds.length,
                        itemBuilder: (context, index) {
                          final sound = category.directSounds[index];
                          return SoundCard(sound: sound);
                        },
                      ),
                    ] else ...[
                      Padding(
                        padding: EdgeInsets.all(20.w),
                        child: Center(
                          child: Text(
                            'لا توجد أصوات متاحة',
                            style: TextStyle(
                              fontFamily: FontFamily.tajawal,
                              fontSize: 16.f,
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
