import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nassan_app/core/responsive/device_type.dart';
import 'package:nassan_app/core/responsive/responsive_builder.dart';
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
  // Helper methods for responsive sizing
  double _fontSize(double size) => ScreenUtil().setSp(size);
  double _width(double size) => ScreenUtil().setWidth(size);
  double _height(double size) => ScreenUtil().setHeight(size);

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
              if (state.articleDetailStatus.isSuccess() && 
                  state.htmlContent != null && 
                  !state.hasNavigatedToArticle) {
                // Mark that navigation has happened
                context.read<LessonBloc>().add(MarkArticleNavigatedEvent());
                
                Navigator.of(context).push(
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
                successWidget: _buildCategoryLessonsContent(context, state),
                isEmpty: state.status.isSuccess() && state.articles.isEmpty,
                emptyMessage: 'لا توجد دروس متاحة في هذه الفئة',
                loadingMessage: 'جاري تحميل الدروس...',
                onRetry: () {
                  context.read<LessonBloc>().add(FetchAllLessonsFromCategoryEvent(
                    categoryId: widget.categoryId,
                    page: 1,
                    perPage: widget.perPage,
                  ));
                },
                animationSize: 200,
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryLessonsContent(BuildContext context, LessonState state) {
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
              padding: EdgeInsets.symmetric(horizontal: _width(12), vertical: _height(30)),
              child: Row(
                children: [
                  Text(
                    widget.categoryTitle,
                    style: TextStyle(
                      fontFamily: FontFamily.tajawal,
                      fontSize: _fontSize(20),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: _width(8)),
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
          // Articles grid
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: _width(20)),
            sliver: SliverGrid(
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
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  if (index >= state.articles.length) {
                    return null;
                  }
                  
                  final lesson = state.articles[index];
                  final isLoading = state.articleDetailStatus.isLoading() && 
                                   state.loadingArticleId == lesson.articleId;
                  return lessonCardBuild(
                    lesson: lesson.articleTitle ?? 'عنوان غير متوفر',
                    viewCont: lesson.articleVisitor ?? '0',
                    title: 'فضيلة الشيخ',
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
                childCount: state.articles.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

