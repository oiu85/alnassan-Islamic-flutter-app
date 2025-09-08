import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/core/responsive/responsive_builder.dart';
import '../../../../config/appconfig/app_colors.dart';
import '../../../../core/responsive/responsive_scaling.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../core/shared/wdigets/app_drawer.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../../core/di/app_dependencies.dart';
import '../bloc/lesson_bloc.dart';
import '../bloc/lesson_event.dart';
import '../bloc/lesson_state.dart';
import '../../../html_viewer/presentation/pages/html_book_viewer_page.dart';

class CategoryLessonsPage extends StatefulWidget {
  final int categoryId;
  final String categoryTitle;
  final int perPage;

  const CategoryLessonsPage({
    super.key,
    required this.categoryId,
    required this.categoryTitle,
    this.perPage = 10,
  });

  @override
  State<CategoryLessonsPage> createState() => _CategoryLessonsPageState();
}

class _CategoryLessonsPageState extends State<CategoryLessonsPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final bloc = getIt<LessonBloc>();
        // Fetch all lessons from the specific category
        bloc.add(FetchAllLessonsFromCategoryEvent(
          categoryId: widget.categoryId,
          page: 1,
          perPage: widget.perPage,
        ));
        return bloc;
      },
      child: ResponsiveBuilder(
        builder: (context, responsive) => Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_forward_outlined),
              ),
            ],
          ),
          drawer: const Drawer(child: AppDrawer()),
          body: BlocConsumer<LessonBloc, LessonState>(
            listener: (context, state) {
              // Handle article detail navigation
              if (state.articleDetailStatus.isSuccess() && state.htmlContent != null) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => HtmlBookViewerPage(
                      htmlContent: state.htmlContent!,
                    ),
                  ),
                );
              }
              
              // Handle errors
              if (state.status.isFail()) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.error ?? 'حدث خطأ في تحميل الدروس')),
                );
              }
              
              if (state.articleDetailStatus.isFail()) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(state.articleDetailError ?? 'حدث خطأ في تحميل تفاصيل الدرس')),
                );
              }
            },
            builder: (context, state) {
              if (state.status.isLoading()) {
                return const Center(child: CircularProgressIndicator());
              }

              if (state.status.isFail()) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        state.error ?? 'حدث خطأ في تحميل الدروس',
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          context.read<LessonBloc>().add(FetchAllLessonsFromCategoryEvent(
                            categoryId: widget.categoryId,
                            page: 1,
                            perPage: widget.perPage,
                          ));
                        },
                        child: const Text('إعادة المحاولة'),
                      ),
                    ],
                  ),
                );
              }

              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Assets.images.viewerBackground.path),
                    fit: BoxFit.cover,
                  ),
                ),
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
                        child: Row(
                          children: [
                            Text(
                              widget.categoryTitle,
                              style: const TextStyle(
                                fontFamily: FontFamily.tajawal,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(width: 8),
                            // Filter button for pagination
                            context.read<LessonBloc>().buildFilterButton(
                              context: context,
                              categoryId: widget.categoryId,
                              perPage: widget.perPage,
                            ),
                          ],
                        ),
                      ),
                    ),

                    // Loading state
                    if (state.status.isLoading() && state.articles.isEmpty)
                      const SliverToBoxAdapter(
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: CircularProgressIndicator(),
                          ),
                        ),
                      )
                    // Error state
                    else if (state.status.isFail())
                      SliverToBoxAdapter(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              state.error ?? 'حدث خطأ في تحميل البيانات',
                              style: const TextStyle(
                                fontFamily: FontFamily.tajawal,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      )
                    // Empty state
                    else if (state.articles.isEmpty)
                      const SliverToBoxAdapter(
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text(
                              'لا توجد دروس متاحة في هذه الفئة',
                              style: TextStyle(
                                fontFamily: FontFamily.tajawal,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      )
                    // Articles grid
                    else
                      SliverPadding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        sliver: SliverGrid(
                          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 0.7,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                          ),
                          delegate: SliverChildBuilderDelegate(
                            (context, index) {
                              if (index >= state.articles.length) {
                                return null;
                              }
                              
                              final lesson = state.articles[index];
                              final isLoading = state.articleDetailStatus.isLoading() && 
                                               state.articleDetail?.data?.articleId == lesson.articleId;
                              return cardBuild(
                                lesson: lesson.articleTitle ?? 'عنوان غير متوفر',
                                viewCont: lesson.articleVisitor ?? '0',
                                title: 'فضيلة الشيخ',
                                imagePath: Assets.images.backgroundZh.path,
                                imageNamePath: Assets.images.nassanName.path,
                                width: 161,
                                height: 236,
                                imageWidth: 100,
                                imageHeight: 100,
                                context: context,
                                isLoading: isLoading,
                                onTap: () {
                                  context.read<LessonBloc>().add(LessonCardClickEvent(lesson: lesson));
                                },
                              );
                            },
                            childCount: state.articles.length,
                          ),
                        ),
                      ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

}

Widget cardBuild({
  required BuildContext context,
  required String lesson,
  required String viewCont,
  required String title,
  required String imagePath,
  required String imageNamePath,
  required double width,
  required double height,
  required double imageWidth,
  required double imageHeight,
  bool isLoading = false,
  VoidCallback? onTap,
}) {
  return SizedBox(
    height: 236,
    width: width,
    child: Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Stack(
              children: [
                Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                  width: width,
                  height: height,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Center(
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontFamily: FontFamily.tajawal,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(imageNamePath),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "الدرس:",
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: FontFamily.tajawal,
                    color: AppColors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      viewCont,
                      style: const TextStyle(
                        fontSize: 12,
                        fontFamily: FontFamily.tajawal,
                        color: AppColors.grey,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.remove_red_eye_outlined),
                      iconSize: 24,
                      color: AppColors.grey,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              lesson,
              style: TextStyle(
                fontSize: ResponsiveScaling.scale(context, 12),
                fontFamily: FontFamily.tajawal,
                color: AppColors.grey,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          GestureDetector(
            onTap: isLoading ? null : onTap,
            child: Container(
              margin: const EdgeInsets.only(bottom: 4),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                color: isLoading ? AppColors.grey : AppColors.secondary,
              ),
              child: isLoading
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                      ),
                    )
                  : const Text(
                      "عرض التفاصيل",
                      style: TextStyle(
                        fontFamily: FontFamily.tajawal,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
            ),
          ),
        ],
      ),
    ),
  );
}
