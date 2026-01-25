import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
import 'package:nassan_app/core/shared/wdigets/AppScaffold.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import '../../../../core/shared/wdigets/app_drawer.dart';
import '../../../../gen/assets.gen.dart';
import '../widgets/sound_card.dart';
import '../bloc/sound_library_bloc.dart';
import '../bloc/sound_library_event.dart';
import '../bloc/sound_library_state.dart';
import '../../data/model.dart';

/// Page for displaying all direct sounds from a category with pagination
class DirectSoundsPage extends StatefulWidget {
  final Level1RootCategory category;

  const DirectSoundsPage({
    super.key,
    required this.category,
  });

  @override
  State<DirectSoundsPage> createState() => _DirectSoundsPageState();
}

class _DirectSoundsPageState extends State<DirectSoundsPage> {
  @override
  void initState() {
    super.initState();
    // Initialize displaySounds with category sounds if not already set
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final bloc = context.read<SoundLibraryBloc>();
      final categoryId = widget.category.catId;
      
      // Initialize displaySounds with category sounds if empty
      if (bloc.state.displaySounds.isEmpty && widget.category.directSounds.isNotEmpty) {
        bloc.add(InitializeDirectSoundsEvent(
          categoryId: categoryId,
          sounds: widget.category.directSounds,
          pagination: widget.category.directSoundsPagination,
        ));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold.custom(
      backgroundColor: Colors.white,
      body: BlocBuilder<SoundLibraryBloc, SoundLibraryState>(
        builder: (context, state) {
          final bloc = context.read<SoundLibraryBloc>();
          final categoryId = widget.category.catId;
          
          // Use displaySounds from state if available, otherwise use category sounds
          final sounds = state.displaySounds.isNotEmpty 
              ? state.displaySounds 
              : widget.category.directSounds;
          
          final hasReachedMax = bloc.hasReachedMaxDirectSounds(categoryId);
          final isLoadingMore = state.status.isLoadingMore();

          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.images.viewerBackground.path),
                fit: BoxFit.cover,
              ),
            ),
            child: NotificationListener<ScrollNotification>(
              onNotification: (ScrollNotification scrollInfo) {
                // Load more when reaching the bottom
                if (scrollInfo.metrics.pixels >= scrollInfo.metrics.maxScrollExtent * 0.8 &&
                    !hasReachedMax &&
                    !isLoadingMore &&
                    state.status.isSuccess()) {
                  final currentPage = bloc.getDirectSoundsCurrentPage(categoryId);
                  bloc.add(LoadMoreDirectSoundsEvent(
                    categoryId: categoryId,
                    page: currentPage + 1,
                    perPage: 10,
                  ));
                }
                return false;
              },
              child: CustomScrollView(
                slivers: [
                  // Title
                  SliverToBoxAdapter(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
                      child: Text(
                        widget.category.catTitle,
                        style: TextStyle(
                          fontFamily: FontFamily.tajawal,
                          fontSize: 24.f,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),

                  // Direct sounds content
                  if (sounds.isNotEmpty) ...[
                    SliverPadding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      sliver: SliverGrid(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1,
                          crossAxisSpacing: 12.w,
                          mainAxisSpacing: 12.h,
                        ),
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            if (index < sounds.length) {
                              final sound = sounds[index];
                              return SoundCard(sound: sound);
                            } else if (index == sounds.length && isLoadingMore) {
                              // Loading indicator at the end
                              return Center(
                                child: Padding(
                                  padding: EdgeInsets.all(16.w),
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
                                  ),
                                ),
                              );
                            }
                            return const SizedBox.shrink();
                          },
                          childCount: sounds.length + (isLoadingMore ? 1 : 0),
                        ),
                      ),
                    ),
                  ] else ...[
                    SliverFillRemaining(
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.all(24.w),
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
                    ),
                  ],
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
