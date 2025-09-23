import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marquee/marquee.dart';
import 'package:nassan_app/core/shared/wdigets/AppScaffold.dart';
import '../../../../config/appconfig/app_colors.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../../core/di/app_dependencies.dart';
import '../../../../core/shared/wdigets/ui_status_handling.dart';
import '../bloc/lesson_bloc.dart';
import '../bloc/lesson_event.dart';
import '../bloc/lesson_state.dart';
import '../widgets/lessons_card.dart';
import 'category_lessons_page.dart';
import '../../../html_viewer/presentation/pages/html_book_viewer_page.dart';

class LessonsPage extends StatefulWidget {
  const LessonsPage({super.key});

  @override
  State<LessonsPage> createState() => _LessonsPageState();
}

class _LessonsPageState extends State<LessonsPage> {
  double _fontSize(double size) => ScreenUtil().setSp(size);
  double _width(double size) => ScreenUtil().setWidth(size);
  double _height(double size) => ScreenUtil().setHeight(size);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final bloc = getIt<LessonBloc>();
        bloc.add(
          FetchLessonsSubCategoriesEvent(
            catMenus: 21,
            articlesPerPage: 3,
            categoriesPerPage: 3,
            articlesPage: 1,
            categoriesPage: 1,
          ),
        );
        return bloc;
      },
      child: BlocBuilder<LessonBloc, LessonState>(
        builder: (context, state) {
          if (state.articleDetailStatus.isSuccess() &&
              state.htmlContent != null &&
              !state.hasNavigatedToArticle) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              context.read<LessonBloc>().add(MarkArticleNavigatedEvent());
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      HtmlBookViewerPage(htmlContent: state.htmlContent!),
                ),
              );
            });
          }

          return SimpleLottieHandler(
            blocStatus: state.status,
            successWidget: _buildLessonsContent(context, state),
            isEmpty: state.status.isSuccess() && state.subCategories.isEmpty,
            emptyMessage: 'لا توجد دروس متاحة',
            loadingMessage: 'جاري تحميل الدروس...',
            onRetry: () {
              context.read<LessonBloc>().add(
                FetchLessonsSubCategoriesEvent(
                  catMenus: 21,
                  articlesPerPage: 3,
                  categoriesPerPage: 3,
                  articlesPage: 1,
                  categoriesPage: 1,
                ),
              );
            },
            animationSize: 200,
          );
        },
      ),
    );
  }

  Widget _buildLessonsContent(BuildContext context, LessonState state) {
    return AppScaffold.custom(
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
                scrollInfo.metrics.pixels ==
                    scrollInfo.metrics.maxScrollExtent) {
              context.read<LessonBloc>().add(LoadMoreLessonsSubCategoriesEvent());
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
                    // Display sub-categories with their articles
                    if (state.subCategories.isNotEmpty)
                      ...state.subCategories.map((category) {
                        final categoryArticles = category.articles?.data ?? [];
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    height: _fontSize(22),
                                    child: LayoutBuilder(
                                      builder: (context, constraints) {
                                        final text = category.catTitle ?? "عنوان غير متوفر";
                                        final textStyle = TextStyle(
                                          fontSize: _fontSize(18),
                                          fontFamily: FontFamily.tajawal,
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.black,
                                        );
                                        
                                        // Calculate text width
                                        final textPainter = TextPainter(
                                          text: TextSpan(text: text, style: textStyle),
                                          textDirection: TextDirection.rtl,
                                        );
                                        textPainter.layout();
                                        
                                        // Only use Marquee if text is wider than available space
                                        if (textPainter.width > constraints.maxWidth) {
                                          return Marquee(
                                            text: text,
                                            style: textStyle,
                                            scrollAxis: Axis.horizontal,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            blankSpace: 20.0,
                                            velocity: 100.0,
                                            pauseAfterRound: Duration(seconds: 1),
                                            startPadding: 10.0,
                                            accelerationDuration: Duration(seconds: 1),
                                            accelerationCurve: Curves.linear,
                                            decelerationDuration: Duration(milliseconds: 500),
                                            decelerationCurve: Curves.easeOut,
                                          );
                                        } else {
                                          // Use regular Text for short text
                                          return Text(
                                            text,
                                            style: textStyle,
                                            overflow: TextOverflow.ellipsis,
                                          );
                                        }
                                      },
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    // Navigate to CategoryLessonsPage for this specific category
                                    if (category.catId != null) {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              CategoryLessonsPage(
                                                categoryId: category.catId!,
                                                categoryTitle:
                                                    category.catTitle ??
                                                    'فئة الدروس',
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
                            // Display lessons for this category in horizontal ListView (3 items)
                            if (categoryArticles.isNotEmpty)
                              SizedBox(
                                height: _height(236),
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: categoryArticles.length,
                                  itemBuilder: (context, index) {
                                    final lesson = categoryArticles[index];
                                    final isLoading =
                                        state.articleDetailStatus.isLoading() &&
                                        state.loadingArticleId ==
                                            lesson.articleId;
                                    return Container(
                                      width: _width(161),
                                      margin: EdgeInsets.only(
                                        right: index < categoryArticles.length - 1 ? _width(10) : 0,
                                      ),
                                      child: lessonCardBuild(
                                        lesson:
                                            lesson.articleTitle ??
                                            'عنوان غير متوفر',
                                        viewCont: lesson.articleVisitor?.toString() ?? '0',
                                        title: 'فضيلة الشيخ',
                                        imagePath: Assets.images.backgroundZh.path,
                                        imageNamePath:
                                            Assets.images.nassanName.path,
                                        width: _width(161),
                                        height: _height(236),
                                        imageWidth: _width(100),
                                        imageHeight: _height(100),
                                        context: context,
                                        isLoading: isLoading,
                                        onTap: () {
                                          context.read<LessonBloc>().add(
                                            LessonSubCategoryCardClickEvent(lesson: lesson),
                                          );
                                        },
                                      ),
                                    );
                                  },
                                ),
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
                            SizedBox(height: _height(20)),
                            // Space between categories
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
                          child: CircularProgressIndicator(
                            color: AppColors.primary,
                          ),
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


