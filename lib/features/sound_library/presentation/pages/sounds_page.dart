import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import '../../../../core/shared/wdigets/app_drawer.dart';
import '../../../../core/shared/wdigets/ui_status_handling.dart';
import '../../../../gen/assets.gen.dart';
import '../widgets/sound_top_bar.dart';
import '../widgets/subcategory_section.dart';
import '../widgets/category_preview.dart';
import '../widgets/sound_card.dart';
import '../bloc/sound_library_bloc.dart';
import '../bloc/sound_library_event.dart';
import '../bloc/sound_library_state.dart';
import '../../data/model.dart';
import 'direct_sounds_page.dart';

/// Main page for displaying sound library with hierarchical categories
class SoundsPage extends StatefulWidget {
  const SoundsPage({super.key});

  @override
  State<SoundsPage> createState() => _SoundsPageState();
}

class _SoundsPageState extends State<SoundsPage> {
  @override
  void initState() {
    super.initState();
    context.read<SoundLibraryBloc>().add(const FetchHierarchicalCategoriesEvent());
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
              successWidget: _buildContent(context, state, bloc),
              isEmpty: !bloc.shouldShowContent(),
              emptyMessage: bloc.getEmptyMessage(),
              loadingMessage: 'جاري تحميل المكتبة الصوتية...',
              onRetry: () => bloc.add(const RefreshSoundLibraryEvent()),
              animationSize: 200,
            ),
          );
        },
      ),
    );
  }

  /// Builds the main content of the sound library page
  Widget _buildContent(BuildContext context, SoundLibraryState state, SoundLibraryBloc bloc) {
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
          child: Container(
            padding: EdgeInsets.only(right: 10.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Title with loading indicator
                Padding(
                  padding:  EdgeInsets.only(right: 15.0.sp,left: 15.sp, top: 32.sp, bottom: 30.sp),
                  child: Row(
                    children: [
                      Text(
                        "المكتبة الصوتية",
                        style: TextStyle(
                          fontFamily: FontFamily.tajawal,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      if (state.status.isLoading()) ...[
                        const SizedBox(width: 10),
                        SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
                          ),
                        ),
                      ],
                    ],
                  ),
                ),

                // Top Bar (always show main categories)
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: SoundTopBar(
                    parentCategories: state.level1Categories,
                    selectedCategory: state.selectedLevel1Category,
                    onCategorySelected: (category) {
                      context.read<SoundLibraryBloc>().add(
                        SelectLevel1CategoryEvent(category: category),
                      );
                    },
                  ),
                ),

                const SizedBox(height: 20),

                if (bloc.shouldShowSelectedCategory())
                  _buildSelectedCategory(context, state, bloc)
                else
                  _buildAllCategories(context, state, bloc),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Builds the selected category content with direct sounds and subcategories
  Widget _buildSelectedCategory(BuildContext context, SoundLibraryState state, SoundLibraryBloc bloc) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Direct sounds section
        if (bloc.shouldShowDirectSounds()) ...[
          _buildDirectSoundsSection(context, state, bloc),
          const SizedBox(height: 16),
        ],

        // Subcategories section
        if (bloc.shouldShowSubcategories())
          ...bloc.getSubcategories().map(
            (subcategory) => SubcategorySection(
              subcategory: subcategory,
              bloc: bloc,
            ),
          ),
      ],
    );
  }

  Widget _buildDirectSoundsSection(BuildContext context, SoundLibraryState state, SoundLibraryBloc bloc) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
          child: Row(
            children: [
              Text(
                state.selectedLevel1Category?.catTitle ?? "الأصوات المباشرة",
                style: TextStyle(
                  fontFamily: FontFamily.tajawal,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black.withValues(alpha: 0.8),
                ),
              ),
              Spacer(),
              if (bloc.shouldShowDirectSoundsAllButton())
                GestureDetector(
                  onTap: () => _navigateToDirectSounds(context, state.selectedLevel1Category!),
                  child: Text(
                    "الكل",
                    style: TextStyle(
                      fontFamily: FontFamily.tajawal,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ),
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(height: 4),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: bloc.getDirectSounds()
                .take(3) // Show only 3 sounds as preview
                .map((sound) => Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: SoundCard(sound: sound),
                ))
                .toList(),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  /// Navigates to direct sounds page
  void _navigateToDirectSounds(BuildContext context, Level1RootCategory category) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BlocProvider.value(
          value: context.read<SoundLibraryBloc>(),
          child: DirectSoundsPage(category: category),
        ),
      ),
    );
  }

  /// Builds all categories view with preview of each category
  Widget _buildAllCategories(BuildContext context, SoundLibraryState state, SoundLibraryBloc bloc) {
    return Column(
      children: state.level1Categories.map((category) => CategoryPreview(category: category)).toList(),
    );
  }

}