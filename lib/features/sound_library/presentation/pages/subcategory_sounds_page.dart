import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import '../../../../core/shared/wdigets/app_drawer.dart';
import '../../../../gen/assets.gen.dart';
import '../widgets/compact_audio_player.dart';
import '../bloc/sound_library_bloc.dart';
import '../../data/model.dart';

class SubcategorySoundsPage extends StatefulWidget {
  final SoundCategory subcategory;
  
  const SubcategorySoundsPage({
    super.key,
    required this.subcategory,
  });

  @override
  State<SubcategorySoundsPage> createState() => _SubcategorySoundsPageState();
}

class _SubcategorySoundsPageState extends State<SubcategorySoundsPage> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
    
    // Fetch subcategory sounds
    context.read<SoundLibraryBloc>().add(
      FetchSubcategorySoundsEvent(
        subcategoryId: widget.subcategory.catId,
        page: 1,
        perPage: 6,
      ),
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    context.read<SoundLibraryBloc>().add(
      OnSubcategoryScrollEvent(
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
                          widget.subcategory.catTitle,
                          style: TextStyle(
                            fontFamily: FontFamily.tajawal,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      
                      const SizedBox(height: 12),
                      
                      // Content based on state
                      if (state.status == BlocStatus.loading && state.subcategorySounds.isEmpty)
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
                      else
                        _buildSoundsGrid(state.subcategorySounds),
                      
                      // Loading More
                      if (state.isLoadingMoreSubcategory)
                        const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Center(child: CircularProgressIndicator()),
                        ),
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

  Widget _buildSoundsGrid(List<SoundItem> sounds) {
    if (sounds.isEmpty) {
      return const Padding(
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
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.85,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: sounds.length,
        itemBuilder: (context, index) {
          return _buildSoundCard(sounds[index]);
        },
      ),
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
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            CompactAudioPlayer(
              audioUrl: sound.soundUrl ?? "",
              width: double.infinity,
              height: 50,
              playButtonSize: 35,
              playButtonMargin: 6,
              progressBarHeight: 5,
              progressBarThumbRadius: 3,
              fontSize: 10,
              optionsButtonSize: 25,
              optionsButtonMargin: 4,
            ),
          ],
        ),
      ),
    );
  }
}
