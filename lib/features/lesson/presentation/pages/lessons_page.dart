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
import 'category_lessons_page.dart';

class LessonsPage extends StatefulWidget {
  const LessonsPage({super.key});

  @override
  State<LessonsPage> createState() => _LessonsPageState();
}

class _LessonsPageState extends State<LessonsPage> {
  // First 3 category IDs to load initially
  static const List<int> initialCategoryIds = [21, 2, 5];
  static const int perPage = 2;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final bloc = getIt<LessonBloc>();
        // Fetch initial lessons when BLoC is created
        bloc.add(FetchLessonsEvent(
          categoryIds: initialCategoryIds,
          page: 1,
          perPage: perPage,
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
                icon: Icon(Icons.arrow_forward_outlined),
              ),
            ],
          ),
          drawer: Drawer(child: AppDrawer()),



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
                          context.read<LessonBloc>().add(FetchLessonsEvent(
                            categoryIds: initialCategoryIds,
                            page: 1,
                            perPage: perPage,
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
                  ),
                ),
                child: NotificationListener<ScrollNotification>(
                  onNotification: (ScrollNotification scrollInfo) {
                    // Load more when user scrolls to bottom
                    if (!state.isLoadingMore && 
                        !state.hasReachedMax && 
                        scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent) {
                      context.read<LessonBloc>().add(LoadMoreLessonsEvent());
                    }
                    return false;
                  },
                  child: ListView(
                    key: PageStorageKey("lessons_list"),
                    children: [
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            if (state.categories.isNotEmpty)
                              ...state.categories.map((category) {
                                final categoryArticles = category.articles ?? [];
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          category.catTitle ?? "عنوان غير متوفر",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: FontFamily.tajawal,
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.black,
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            // Navigate to CategoryLessonsPage for this specific category
                                            if (category.catId != null) {
                                              Navigator.of(context).push(
                                                MaterialPageRoute(
                                                  builder: (context) => CategoryLessonsPage(
                                                    categoryId: category.catId!,
                                                    categoryTitle: category.catTitle ?? 'فئة الدروس',
                                                    perPage: 10,
                                                  ),
                                                ),
                                              );
                                            }
                                          },
                                          child: Text(
                                            "الكل ",
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontFamily: FontFamily.tajawal,
                                              fontWeight: FontWeight.bold,
                                              color: AppColors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 3),
                                    // Display lessons for this category in a grid
                                    if (categoryArticles.isNotEmpty)
                                      GridView.builder(
                                        shrinkWrap: true,
                                        physics: const NeverScrollableScrollPhysics(),
                                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
                                          childAspectRatio: 0.7,
                                          crossAxisSpacing: 10,
                                          mainAxisSpacing: 10,
                                        ),
                                        itemCount: categoryArticles.length,
                                        itemBuilder: (context, index) {
                                          final lesson = categoryArticles[index];
                                          final isLoading = state.articleDetailStatus.isLoading() && 
                                                           state.articleDetail?.data?.articleId == lesson.articleId;
                                          return cardBuild(
                                            lesson: lesson.articleTitle ?? 'عنوان غير متوفر',
                                            viewCont: lesson.articleVisitor ?? '0',
                                            title:'فضيلة الشيخ',
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
                                      )
                                    else
                                      const Center(
                                        child: Text('لا توجد دروس متاحة لهذه الفئة'),
                                      ),
                                    const SizedBox(height: 20), // Space between categories
                                  ],
                                );
                              })
                            else
                              const Center(
                                child: Text('لا توجد فئات متاحة'),
                              ),
                            
                            // Loading indicator at bottom when loading more
                            if (state.isLoadingMore)
                              const Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Center(
                                  child: CircularProgressIndicator(),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
      color: Colors.white,
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
                      style: TextStyle(
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
                Text(
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
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: FontFamily.tajawal,
                        color: AppColors.grey,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.remove_red_eye_outlined),
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
                color: isLoading ? AppColors.grey : AppColors.primary,
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
