import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/core/utils/device_layout.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/core/shared/wdigets/AppScaffold.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
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

  /// Gets category ID from subcategory
  int _getCategoryId(dynamic subcategory) {
    if (subcategory is Level2Category) return subcategory.catId;
    if (subcategory is Level3Category) return subcategory.catId;
    if (subcategory is Level4Category) return subcategory.catId;
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold.custom(
      backgroundColor: Colors.white,
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
    final sounds = bloc.getSubcategoryDirectSounds();
    final categoryId = _getCategoryId(widget.subcategory);
    final hasReachedMax = bloc.hasReachedMaxSubcategorySounds(categoryId);
    final isLoadingMore = state.status.isLoadingMore();

    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification scrollInfo) {
        // Load more when reaching the bottom (only for grid view, not horizontal scroll)
        if (!bloc.shouldShowSubcategorySubcategories() &&
            scrollInfo.metrics.pixels >= scrollInfo.metrics.maxScrollExtent * 0.8 &&
            !hasReachedMax &&
            !isLoadingMore &&
            state.status.isSuccess()) {
          final currentPage = bloc.getSubcategorySoundsCurrentPage(categoryId);
          bloc.add(LoadMoreSubcategorySoundsEvent(
            categoryId: categoryId,
            page: currentPage + 1,
            perPage: 10,
          ));
        }
        return false;
      },
      child: CustomScrollView(
        slivers: [
          // Main Content — constrain width on tablet/iPad for readable layout
          SliverToBoxAdapter(
            child: Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxWidth: context.maxContentWidth.isFinite
                      ? context.maxContentWidth
                      : double.infinity,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  // Direct sounds from the selected subcategory
                  if (bloc.shouldShowSubcategoryDirectSounds()) ...[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                      ),
                      child: Row(
                        children: [
                      Text(
                            widget.title,
                            style: TextStyle(
                              fontFamily: FontFamily.tajawal,
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          if (bloc.shouldShowAllButtonForSubcategory(widget.subcategory))
                            GestureDetector(
                              onTap: () => _navigateToDirectSoundsPage(context, sounds),
                              child: Text(
                                "الكل",
                                style: TextStyle(
                                  fontFamily: FontFamily.tajawal,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.black,
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12.h),
                    // Use grid layout when no subcategories, horizontal scroll when there are subcategories
                    //? Responsive grid for iPad — avoid crowded layout (App Store guideline)
                    !bloc.shouldShowSubcategorySubcategories()
                        ? GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: context.deviceValue(mobile: 2, tablet: 3, desktop: 4),
                              childAspectRatio: context.deviceValue(mobile: 0.9, tablet: 0.95, desktop: 1.0),
                              crossAxisSpacing: 8,
                              mainAxisSpacing: 8,
                            ),
                            itemCount: sounds.length + (isLoadingMore ? 1 : 0),
                            itemBuilder: (context, index) {
                              if (index < sounds.length) {
                                final sound = sounds[index];
                                return SoundCard(sound: sound);
                              } else if (index == sounds.length && isLoadingMore) {
                                // Loading indicator at the end
                                return Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: CircularProgressIndicator(
                                      valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
                                    ),
                                  ),
                                );
                              }
                              return const SizedBox.shrink();
                            },
                          )
                        : SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: sounds
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
                  ],

                // Subcategories with their sounds
                if (bloc.shouldShowSubcategorySubcategories())
                  ...bloc.getSubcategoriesWithSounds().map(
                    (subcategory) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:  EdgeInsets.symmetric(
                            horizontal: 12.w, vertical: 12.h
                          ),
                          child: Row(
                            children: [
                              Text(
                                bloc.getSubcategoryTitle(subcategory),
                                style: TextStyle(
                                  fontFamily: FontFamily.tajawal,
                                  fontSize: 18.sp,
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
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w600,
                                      color: AppColors.black,
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
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
                      ],
                    ),
                  ),

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
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