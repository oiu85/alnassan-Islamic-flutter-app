import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import '../../../../core/di/app_dependencies.dart';
import '../../../../core/shared/wdigets/app_drawer.dart';
import '../../../../gen/assets.gen.dart';
import '../widgets/sound_top_bar.dart';
import '../widgets/compact_audio_player.dart';
import '../bloc/sound_library_bloc.dart';
import '../../data/model.dart';
import 'subcategory_sounds_page.dart';

class SoundsPage extends StatefulWidget {
  const SoundsPage({super.key});

  @override
  State<SoundsPage> createState() => _SoundsPageState();
}

class _SoundsPageState extends State<SoundsPage> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);

    // Fetch initial data
    context.read<SoundLibraryBloc>().add(FetchParentCategoriesEvent());
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    final bloc = context.read<SoundLibraryBloc>();
    final state = bloc.state;
    
    // Check if we should load more content for the selected parent category
    if (state.selectedParentCategory != null && 
        !state.isLoadingMore && 
        !state.hasReachedMax &&
        _scrollController.position.pixels >= _scrollController.position.maxScrollExtent * 0.8) {
      
      bloc.add(LoadMoreParentCategoryContentEvent(
        parentCategoryId: state.selectedParentCategory!.catId,
        page: state.currentPage + 1,
      ));
    }
    
    // Also trigger the original scroll event
    bloc.add(
      OnScrollEvent(
        scrollPosition: _scrollController.position.pixels,
        maxScrollExtent: _scrollController.position.maxScrollExtent,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(child: AppDrawer()),
      body: BlocBuilder<SoundLibraryBloc, SoundLibraryState>(
        builder: (context, state) {
          return CustomScrollView(
            controller: _scrollController,
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
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(Assets.images.viewerBackground.path),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Text(
                          "المكتبة الصوتية",
                          style: TextStyle(
                            fontFamily: FontFamily.tajawal,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      // Top Bar
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: SoundTopBar(
                          parentCategories: state.parentCategories,
                          selectedCategory: state.selectedParentCategory,
                          onCategorySelected: (category) {
                            context.read<SoundLibraryBloc>().add(
                              SelectParentCategoryEvent(category: category),
                            );
                          },
                        ),
                      ),

                      const SizedBox(height: 12),

                      // Content based on state
                      if (state.status == BlocStatus.loading &&
                          state.parentCategories.isEmpty)
                        const Center(
                          child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: CircularProgressIndicator(),
                          ),
                        )
                      else if (state.status == BlocStatus.fail)
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              'خطأ: ${state.error ?? "حدث خطأ غير متوقع"}',
                              style: TextStyle(
                                fontFamily: FontFamily.tajawal,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        )
                      else if (state.selectedParentCategory != null)
                        _buildSelectedCategory(state)
                      else
                        _buildAllCategories(state),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildSelectedCategory(SoundLibraryState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Content Sections
        if (state.displaySubcategories.isNotEmpty)
          ...state.displaySubcategories.map(
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
                        subcategory.catTitle,
                        style: TextStyle(
                          fontFamily: FontFamily.tajawal,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: AppColors.black.withValues(alpha: 0.8),
                        ),
                      ),
                      Spacer(),
                       GestureDetector(
                         onTap: () {
                           Navigator.push(
                             context,
                             MaterialPageRoute(
                               builder: (context) => BlocProvider(
                                 create: (context) => getIt<SoundLibraryBloc>(),
                                 child: SubcategorySoundsPage(
                                   subcategory: subcategory,
                                 ),
                               ),
                             ),
                           );
                         },
                         child: Text(
                           "الكل",
                           style: TextStyle(
                             fontFamily: FontFamily.tajawal,
                             fontSize: 18,
                             fontWeight: FontWeight.w600,
                             color: AppColors.primary,
                           ),
                         ),
                       ),
                    ],
                  ),
                ),
                const SizedBox(height: 4),
                if (subcategory.sounds != null)
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: subcategory.sounds!
                          .map(
                            (sound) => Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: _buildSoundCard(sound),
                            ),
                          )
                          .toList(),
                    ),
                  ),
              ],
            ),
          )
        else if (state.displaySounds.isNotEmpty)
          ...state.displaySounds.map((sound) => _buildSoundCard(sound))
        else
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Center(
              child: Text(
                'لا توجد محتويات متاحة',
                style: TextStyle(
                  fontFamily: FontFamily.tajawal,
                  fontSize: 16,
                  color: AppColors.grey,
                ),
              ),
            ),
          ),

        // Loading More
        if (state.isLoadingMore)
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Center(child: CircularProgressIndicator()),
          ),
      ],
    );
  }

  Widget _buildAllCategories(SoundLibraryState state) {
    return Column(
      children: [
        ...state.parentCategories.map(
          (category) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  category.catTitle,
                  style: TextStyle(
                    fontFamily: FontFamily.tajawal,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                    color: AppColors.black,
                  ),
                ),
              ),
              const SizedBox(height: 8),

              if (category.hasDirectSounds == true && category.sounds != null)
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: category.sounds!
                        .map(
                          (sound) => Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: _buildSoundCard(sound),
                          ),
                        )
                        .toList(),
                  ),
                ),

              if (category.hasChildren == true && category.children != null)
                ...category.children!.map(
                  (child) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0, ),
                        child: Text(
                          child.catTitle,
                          style: TextStyle(
                            fontFamily: FontFamily.tajawal,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.black.withValues(alpha: 0.8),
                          ),
                        ),
                      ),
                      const SizedBox(height: 6),
                      if (child.sounds != null)
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: child.sounds!
                                .map(
                                  (sound) => Padding(
                                    padding: const EdgeInsets.only(right: 8.0),
                                    child: _buildSoundCard(sound),
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

        // Loading More
        if (state.isLoadingMore)
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Center(child: CircularProgressIndicator()),
          ),
      ],
    );
  }

  Widget _buildSoundCard(SoundItem sound) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      color: Colors.white,
      child: Container(
        width: 200,
        height: 175,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Row(
              children: [
                Image.asset(Assets.images.headphone2.path, width: 20, height: 20),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    sound.soundTitle,
                    style: const TextStyle(
                      fontFamily: FontFamily.tajawal,
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            CompactAudioPlayer(
              audioUrl: sound.soundUrl ?? "",
              width: 180,
              height: 50,
              playButtonSize: 35,
              playButtonMargin: 6,
              progressBarHeight: 5,
              progressBarThumbRadius: 3,
              fontSize: 15,
              optionsButtonSize: 25,
              optionsButtonMargin: 4,
            ),
          ],
        ),
      ),
    );
  }
}
