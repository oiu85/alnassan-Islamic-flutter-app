import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import '../../../../core/shared/wdigets/app_drawer.dart';
import '../../../../core/shared/wdigets/ui_status_handling.dart';
import '../../../../gen/assets.gen.dart';
import '../widgets/sound_card.dart';
import '../bloc/sound_library_bloc.dart';
import '../bloc/sound_library_event.dart';
import '../bloc/sound_library_state.dart';
import '../../data/model.dart';
import 'direct_sounds_page.dart';

class SubcategorySoundsPage extends StatefulWidget {
  final dynamic subcategory; // Can be Level2Category, Level3Category, or Level4Category
  final String title;

  const SubcategorySoundsPage({
    super.key,
    required this.subcategory,
    required this.title,
  });

  @override
  State<SubcategorySoundsPage> createState() => _SubcategorySoundsPageState();
}

class _SubcategorySoundsPageState extends State<SubcategorySoundsPage> {
  @override
  void initState() {
    super.initState();
    
    // Navigate to the appropriate subcategory level after the widget is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _navigateToSubcategory();
    });
  }

  void _navigateToSubcategory() {
    try {
      if (widget.subcategory is Level2Category) {
        context.read<SoundLibraryBloc>().add(
          NavigateToLevel2CategoryEvent(category: widget.subcategory as Level2Category),
        );
      } else if (widget.subcategory is Level3Category) {
        context.read<SoundLibraryBloc>().add(
          NavigateToLevel3CategoryEvent(category: widget.subcategory as Level3Category),
        );
      } else if (widget.subcategory is Level4Category) {
        context.read<SoundLibraryBloc>().add(
          NavigateToLevel4CategoryEvent(category: widget.subcategory as Level4Category),
        );
      }
    } catch (e) {
      // Error navigating to subcategory: $e
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(child: AppDrawer()),
      body: BlocBuilder<SoundLibraryBloc, SoundLibraryState>(
        builder: (context, state) {
          final bloc = context.read<SoundLibraryBloc>();
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.images.viewerBackground.path),
                fit: BoxFit.cover,
              ),
            ),
            child: SimpleLottieHandler(
              blocStatus: state.status,
              successWidget: _buildSubcategoryContent(context, state, bloc),
              isEmpty: !bloc.shouldShowSubcategoryContent(),
              emptyMessage: bloc.getSubcategoryEmptyMessage(),
              loadingMessage: 'جاري تحميل المحتوى...',
              onRetry: () {
                _navigateToSubcategory();
              },
              animationSize: 200,
            ),
          );
        },
      ),
    );
  }

  Widget _buildSubcategoryContent(BuildContext context, SoundLibraryState state, SoundLibraryBloc bloc) {
    return CustomScrollView(
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

        // Main Content
        SliverToBoxAdapter(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Direct sounds from the selected subcategory
                if (bloc.shouldShowSubcategoryDirectSounds()) ...[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 8,
                    ),
                    child: Row(
                      children: [
                    Text(
                          widget.title,
                          style: TextStyle(
                            fontFamily: FontFamily.tajawal,
                            fontSize: 20.f,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                        if (bloc.shouldShowAllButtonForSubcategory(widget.subcategory))
                          GestureDetector(
                            onTap: () => _navigateToDirectSoundsPage(context, bloc.getSubcategoryDirectSounds()),
                            child: Text(
                              "الكل",
                              style: TextStyle(
                                fontFamily: FontFamily.tajawal,
                                fontSize: 18.f,
                                fontWeight: FontWeight.w600,
                                color: AppColors.primary,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.h),
                  // Use grid layout when no subcategories, horizontal scroll when there are subcategories
                  !bloc.shouldShowSubcategorySubcategories()
                      ? GridView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1.4,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8,
                          ),
                          itemCount: bloc.getSubcategoryDirectSounds().length,
                          itemBuilder: (context, index) {
                            final sound = bloc.getSubcategoryDirectSounds()[index];
                            return SoundCard(sound: sound);
                          },
                        )
                      : SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: bloc.getSubcategoryDirectSounds()
                                .take(3) // Show only 3 sounds as preview
                                .map(
                                  (sound) => Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: SoundCard(sound: sound),
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                  SizedBox(height: 16.h),
                ],

                // Subcategories with their sounds
                if (bloc.shouldShowSubcategorySubcategories())
                  ...bloc.getSubcategoriesWithSounds().map(
                    (subcategory) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                            vertical: 8,
                          ),
                          child: Row(
                            children: [
                              Text(
                                bloc.getSubcategoryTitle(subcategory),
                                style: TextStyle(
                                  fontFamily: FontFamily.tajawal,
                                  fontSize: 18.f,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.black.withValues(alpha: 0.8),
                                ),
                              ),
                              Spacer(),
                              if (bloc.shouldShowAllButtonForSubcategory(subcategory))
                                GestureDetector(
                                  onTap: () => _navigateToSubcategoryPage(context, subcategory, bloc),
                                  child: Text(
                                    "الكل",
                                    style: TextStyle(
                                      fontFamily: FontFamily.tajawal,
                                      fontSize: 18.f,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.primary,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                        SizedBox(height: 4.h),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: bloc.getPreviewSounds(subcategory)
                                .take(3)
                                .map(
                                  (sound) => Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: SoundCard(sound: sound),
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                        SizedBox(height: 16.h),
                      ],
                    ),
                  ),

              ],
            ),
        ),
      ],
    );
  }

  void _navigateToSubcategoryPage(BuildContext context, dynamic subcategory, SoundLibraryBloc bloc) {
    // Navigate to a new page for subcategory and provide the BLoC
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BlocProvider.value(
          value: bloc,
          child: SubcategorySoundsPage(
            subcategory: subcategory,
            title: bloc.getSubcategoryTitle(subcategory),
          ),
        ),
      ),
    );
  }

  /// Navigates to direct sounds page for the current subcategory
  void _navigateToDirectSoundsPage(BuildContext context, List<SoundData> sounds) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BlocProvider.value(
          value: context.read<SoundLibraryBloc>(),
          child: DirectSoundsPage(
            category: Level1RootCategory(
              catId: 0,
              catFatherId: 0,
              catTitle: "الأصوات المباشرة",
              catPos: "0",
              catActive: true,
              directSoundsCount: sounds.length.toString(),
              directSounds: sounds,
              level2Children: [],
            ),
          ),
        ),
      ),
    );
  }

}