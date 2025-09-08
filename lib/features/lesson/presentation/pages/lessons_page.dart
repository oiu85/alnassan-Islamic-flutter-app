import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nassan_app/core/responsive/device_type.dart';
import '../../../../config/appconfig/app_colors.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../core/shared/wdigets/app_drawer.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../../core/di/app_dependencies.dart';
import '../../../../core/widgets/ui_status_handling.dart';
import '../bloc/lesson_bloc.dart';
import '../bloc/lesson_event.dart';
import '../bloc/lesson_state.dart';
import '../../../html_viewer/presentation/pages/html_book_viewer_page.dart';
import '../widgets/lessons_card.dart';
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

  // Helper methods for responsive sizing
  double _fontSize(double size) => ScreenUtil().setSp(size);
  double _width(double size) => ScreenUtil().setWidth(size);
  double _height(double size) => ScreenUtil().setHeight(size);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final bloc = getIt<LessonBloc>();
        bloc.add(FetchLessonsEvent(
          categoryIds: initialCategoryIds,
          page: 1,
          perPage: perPage,
        ));
        return bloc;
      },
      child: BlocConsumer<LessonBloc, LessonState>(
        listener: (context, state) {
          // Handle navigation to HTML viewer when article detail is loaded
          if (state.articleDetailStatus.isSuccess() && 
              state.htmlContent != null && 
              !state.hasNavigatedToArticle) {
            // Mark that navigation has happened
            context.read<LessonBloc>().add(MarkArticleNavigatedEvent());
            
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HtmlBookViewerPage(
                  htmlContent: state.htmlContent!,
                ),
              ),
            );
          }
        },
        builder: (context, state) {
          return SimpleLottieHandler(
            blocStatus: state.status,
            successWidget: _buildLessonsContent(context, state),
            isEmpty: state.status.isSuccess() && state.categories.isEmpty,
            emptyMessage: 'لا توجد دروس متاحة',
            loadingMessage: 'جاري تحميل الدروس...',
            onRetry: () {
              context.read<LessonBloc>().add(FetchLessonsEvent(
                categoryIds: initialCategoryIds,
                page: 1,
                perPage: perPage,
              ));
            },
            animationSize: 200,
          );
        },
      ),
    );
  }

  Widget _buildLessonsContent(BuildContext context, LessonState state) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_forward_outlined, size: _fontSize(24)),
          ),
        ],
      ),
      drawer: Drawer(child: AppDrawer()),
      body: Container(
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
                  padding: EdgeInsets.all(_width(20)),
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
                                            fontSize: _fontSize(18),
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
                                              fontSize: _fontSize(18),
                                              fontFamily: FontFamily.tajawal,
                                              fontWeight: FontWeight.bold,
                                              color: AppColors.black,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: _height(3)),
                                    // Display lessons for this category in a grid
                                    if (categoryArticles.isNotEmpty)
                                      GridView.builder(
                                        shrinkWrap: true,
                                        physics: const NeverScrollableScrollPhysics(),
                                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: context.deviceValue(
                                            mobile: 2,
                                            tablet: 3,
                                            desktop: 4,
                                          ),
                                          childAspectRatio: context.deviceValue(
                                            mobile: 0.7,
                                            tablet: 0.8,
                                            desktop: 0.9,
                                          ),
                                          crossAxisSpacing: _width(10),
                                          mainAxisSpacing: _height(10),
                                        ),
                                        itemCount: categoryArticles.length,
                                        itemBuilder: (context, index) {
                                          final lesson = categoryArticles[index];
                                          final isLoading = state.articleDetailStatus.isLoading() && 
                                                           state.loadingArticleId == lesson.articleId;
                                          return lessonCardBuild(
                                            lesson: lesson.articleTitle ?? 'عنوان غير متوفر',
                                            viewCont: lesson.articleVisitor ?? '0',
                                            title:'فضيلة الشيخ',
                                            imagePath: Assets.images.backgroundZh.path,
                                            imageNamePath: Assets.images.nassanName.path,
                                            width: _width(161),
                                            height: _height(236),
                                            imageWidth: _width(100),
                                            imageHeight: _height(100),
                                            context: context,
                                            isLoading: isLoading,
                                            onTap: () {
                                              context.read<LessonBloc>().add(LessonCardClickEvent(lesson: lesson));
                                            },
                                          );
                                        },
                                      )
                                    else
                                      Center(
                                        child: Text(
                                          'لا توجد دروس متاحة لهذه الفئة',
                                          style: TextStyle(
                                            fontSize: _fontSize(16),
                                            fontFamily: FontFamily.tajawal,
                                          ),
                                        ),
                                      ),
                                    SizedBox(height: _height(20)), // Space between categories
                                  ],
                                );
                              })
                            else
                              Center(
                                child: Text(
                                  'لا توجد فئات متاحة',
                                  style: TextStyle(
                                    fontSize: _fontSize(16),
                                    fontFamily: FontFamily.tajawal,
                                  ),
                                ),
                              ),
                            
                            // Loading indicator at bottom when loading more
                            if (state.isLoadingMore)
                              Padding(
                                padding: EdgeInsets.all(_width(16)),
                                child: Center(
                                  child: CircularProgressIndicator(color: AppColors.primary,),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
    );
  }
}
