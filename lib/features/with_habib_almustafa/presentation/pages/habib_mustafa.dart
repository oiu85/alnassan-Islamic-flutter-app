import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marquee/marquee.dart';
import 'package:nassan_app/core/responsive/responsive_builder.dart';
import '../../../../config/appconfig/app_colors.dart';
import '../../../../core/responsive/responsive_scaling.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../core/shared/wdigets/app_drawer.dart';
import '../../../../core/shared/wdigets/ui_status_handling.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../../core/network/network_client.dart';
import '../../data/repository/habib_mustafa_repository_impl.dart';
import '../../data/model/habib_mustafa_model.dart';
import '../bloc/habib_mustafa_bloc.dart';
import '../bloc/habib_mustafa_event.dart';
import '../bloc/habib_mustafa_state.dart';
import '../../../../features/html_viewer/domain/models/html_content.dart';
import '../../../../features/html_viewer/presentation/pages/html_book_viewer_page.dart';

class HabibMustafa extends StatelessWidget {
  final int catId;
  final int? catMenus;
  final int? articlesPerPage;
  final int? categoriesPerPage;
  final int? articlesPage;
  final int? categoriesPage;

  const HabibMustafa({
    super.key,
    this.catId = 13,
    this.catMenus = 40,
    this.articlesPerPage = 3,
    this.categoriesPerPage = 3,
    this.articlesPage = 1,
    this.categoriesPage = 1,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          HabibMustafaBloc(HabibMustafaRepositoryImpl(NetworkClient()))..add(
            FetchHabibMustafaDataEvent(
              catId: catId,
              catMenus: catMenus ?? 40,
              articlesPerPage: articlesPerPage ?? 3,
              categoriesPerPage: categoriesPerPage ?? 3,
              articlesPage: articlesPage ?? 1,
              categoriesPage: categoriesPage ?? 1,
            ),
          ),
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
          body: BlocBuilder<HabibMustafaBloc, HabibMustafaState>(
            builder: (context, state) {
              return SimpleLottieHandler(
                blocStatus: state.status,
                successWidget: _buildContent(context, state),
                isEmpty:
                    state.status.isSuccess() && state.subCategories.isEmpty,
                emptyMessage: 'لا توجد دروس متاحة',
                loadingMessage: 'جاري تحميل الدروس...',
                onRetry: () => context.read<HabibMustafaBloc>().add(
                  const FetchHabibMustafaDataEvent(),
                ),
                animationSize: 200,
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildContent(BuildContext context, HabibMustafaState state) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(Assets.images.viewerBackground.path),
        ),
      ),
      child: NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification scrollInfo) {
          // Load more when reaching the bottom
          if (scrollInfo.metrics.pixels == scrollInfo.metrics.maxScrollExtent &&
              !state.hasReachedMax &&
              state.status.isSuccess()) {
            context.read<HabibMustafaBloc>().add(
              LoadMoreArticlesEvent(
                articlesPage: state.currentArticlesPage,
                categoriesPage: state.currentCategoriesPage + 1,
              ),
            );
          }
          return false;
        },
        child: ListView(
          key: PageStorageKey("lessons_list"),
          children: [
            Container(
              padding: EdgeInsets.only(right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ...state.subCategories.map((subCategory) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Sub-category title with "الكل" button
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 14,),
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: SizedBox(
                                  height: 30,
                                  child: Marquee(
                                    text: subCategory.catTitle ?? "عنوان غير محدد",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: FontFamily.tajawal,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.black,
                                    ),
                                    scrollAxis: Axis.horizontal,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    pauseAfterRound: Duration(seconds: 1),
                                    accelerationDuration: Duration(seconds: 1),
                                    accelerationCurve: Curves.easeIn,
                                    decelerationDuration: Duration(
                                      milliseconds: 500,
                                    ),
                                    decelerationCurve: Curves.fastOutSlowIn,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  // TODO: Navigate to all articles in this sub-category
                                },
                                child: Text(
                                  "الكل",
                                  style: TextStyle(
                                    fontSize: 25,
                                    fontFamily: FontFamily.tajawal,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Horizontal scrollable cards for articles in this sub-category
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: (subCategory.articles ?? []).map((
                              article,
                            ) {
                              return cardBuild(
                                article: article,
                                context: context,
                              );
                            }).toList(),
                          ),
                        ),
                        SizedBox(height: 20),
                        // Space between sub-categories
                      ],
                    );
                  }).toList(),
                  // Loading indicator for pagination
                  if (state.status.isLoadingMore() &&
                      state.subCategories.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Center(
                        child: Column(
                          children: [
                            CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                AppColors.primary,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'جاري تحميل المزيد...',
                              style: TextStyle(
                                fontFamily: FontFamily.tajawal,
                                color: AppColors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget cardBuild({
  required BuildContext context,
  required HabibArticle article,
}) {
  return Container(
    width: 190,
    margin: EdgeInsets.only(right: 12),
    child: Card(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //Fixed height container for image stack
          Container(
            height: 120, //Fixed height for image area
            child: Stack(
              clipBehavior: Clip.antiAlias,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 4),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      Assets.images.mohhamed.path,
                      fit: BoxFit.cover,
                      width: 50,
                      height: 50,
                    ),
                  ),
                ),
                Positioned(
                  left: -10,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset(
                      Assets.images.candleBig.path,
                      fit: BoxFit.contain,
                      width: 50,
                      height: 80,
                    ),
                  ),
                ),
                Positioned(
                  left: -4,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset(
                      Assets.images.candleSmall.path,
                      fit: BoxFit.contain,
                      width: 60,
                      height: 60,
                    ),
                  ),
                ),
                Positioned(
                  right: -10,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Image.asset(
                      Assets.images.candleBig.path,
                      fit: BoxFit.contain,
                      width: 50,
                      height: 80,
                    ),
                  ),
                ),
                Positioned(
                  right: -4,
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Image.asset(
                      Assets.images.candleSmall.path,
                      fit: BoxFit.contain,
                      width: 60,
                      height: 60,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Center(
                    child: Text(
                      "فضيلة الشيخ",
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
                  child: Image.asset(Assets.images.nassanName.path),
                ),
              ],
            ),
          ),
          // Content area
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      "الدرس:",
                      style: TextStyle(
                        fontSize: 13,
                        fontFamily: FontFamily.tajawal,
                        color: AppColors.grey,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text(
                        article.articleVisitor ?? "0",
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: FontFamily.tajawal,
                          color: AppColors.grey,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.remove_red_eye_outlined),
                        iconSize: 22,
                        color: AppColors.grey,
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  article.articleTitle ?? "لا يوجد عنوان",
                  style: TextStyle(
                    fontSize: ResponsiveScaling.scale(context, 12),
                    fontFamily: FontFamily.tajawal,
                    color: AppColors.grey,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(height: 20), // Add space between lesson title and button
              GestureDetector(
                onTap: () => _navigateToArticle(context, article),
                child: Container(
                  margin: EdgeInsets.only(bottom: 16),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: AppColors.primary,
                  ),
                  child: Text(
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
        ],
      ),
    ),
  );
}

void _navigateToArticle(BuildContext context, HabibArticle? article) {
  if (article == null) return;

  final htmlContent = HtmlContent(
    title: article.articleTitle ?? 'Untitled',
    htmlContent: article.articleContent ?? article.articleDes ?? '',
    summary: article.articleSummary,
    description: article.articleDes,
    articleId: article.articleId,
    categoryId: article.articleCatId,
    imageUrl: article.articlePic,
    date: article.articleDate,
  );

  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => HtmlBookViewerPage(htmlContent: htmlContent),
    ),
  );
}
