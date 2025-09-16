import 'package:flutter/material.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
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
                padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
                child: Text(
                  category.catTitle,
                  style: TextStyle(
                    fontFamily: FontFamily.tajawal,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            // Direct sounds content
            SliverToBoxAdapter(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (category.directSounds.isNotEmpty) ...[
                      const SizedBox(height: 8),
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
                      const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Center(
                          child: Text(
                            'لا توجد أصوات متاحة',
                            style: TextStyle(
                              fontFamily: FontFamily.tajawal,
                              fontSize: 16,
                              color: AppColors.grey,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
