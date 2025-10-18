import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/core/responsive/responsive_builder.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
import 'package:nassan_app/core/shared/wdigets/AppScaffold.dart';
import '../../../../config/appconfig/app_colors.dart';
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

class CategoryArticlesPage extends StatefulWidget {
  final int categoryId;
  final String categoryTitle;

  const CategoryArticlesPage({
    super.key,
    required this.categoryId,
    required this.categoryTitle,
  });

  @override
  State<CategoryArticlesPage> createState() => _CategoryArticlesPageState();
}

class _CategoryArticlesPageState extends State<CategoryArticlesPage> {
  int? _loadingArticleId; // Track which article is loading

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          HabibMustafaBloc(HabibMustafaRepositoryImpl(NetworkClient()))..add(
            FetchCategoryArticlesEvent(
              categoryId: widget.categoryId,
              page: 1,
              perPage: 6,
            ),
          ),
      child: ResponsiveBuilder(
        builder: (context, responsive) => AppScaffold.custom(
          drawer: Drawer(child: AppDrawer()),
          body: BlocBuilder<HabibMustafaBloc, HabibMustafaState>(
            builder: (context, state) {
              return SimpleLottieHandler(
                blocStatus: state.status,
                successWidget: _buildCategoryArticlesContent(context, state),
                isEmpty:
                    state.status.isSuccess() && state.categoryArticles.isEmpty,
                emptyMessage: 'لا توجد مقالات متاحة',
                loadingMessage: 'جاري تحميل المقالات...',
                onRetry: () => context.read<HabibMustafaBloc>().add(
                  FetchCategoryArticlesEvent(
                    categoryId: widget.categoryId,
                    page: 1,
                    perPage: 6,
                  ),
                ),
                animationSize: 200.w,
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryArticlesContent(BuildContext context, HabibMustafaState state) {
    // Handle navigation when article detail is ready
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _handleNavigation(context, state);
    });

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
              !state.hasReachedMaxCategoryArticles &&
              state.status.isSuccess()) {
            context.read<HabibMustafaBloc>().add(
              LoadMoreCategoryArticlesEvent(
                categoryId: widget.categoryId,
                page: state.currentCategoryArticlesPage + 1,
                perPage: 6,
              ),
            );
          }
          return false;
        },
        child: ListView(
          key: PageStorageKey("category_articles_list"),
          padding: EdgeInsets.all(10.w),
          children: [
            // Category title with filter button
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      widget.categoryTitle,
                      style: TextStyle(
                        fontSize: 18.f,
                        fontFamily: FontFamily.tajawal,
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 8.w),
                  // Filter button for pagination
                  context.read<HabibMustafaBloc>().buildCategoryFilterButton(
                    context: context,
                    categoryId: widget.categoryId,
                    perPage: 6,
                  ),
                ],
              ),
            ),
            
            // Articles grid with 2 cards per row
            _buildArticlesGrid(context, state),
            
            // Loading indicator for pagination
            if (state.status.isLoadingMore() && state.categoryArticles.isNotEmpty)
              Padding(
                padding: EdgeInsets.all(16.w),
                child: Center(
                  child: Column(
                    children: [
                      CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                          AppColors.primary,
                        ),
                      ),
                      SizedBox(height: 8.h),
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
    );
  }

  Widget _buildArticlesGrid(BuildContext context, HabibMustafaState state) {
    // Group articles into pairs for 2 cards per row
    final articles = state.categoryArticles;
    final List<List<HabibArticle>> articlePairs = [];
    
    for (int i = 0; i < articles.length; i += 2) {
      if (i + 1 < articles.length) {
        // Two articles in this row
        articlePairs.add([articles[i], articles[i + 1]]);
      } else {
        // Only one article in this row
        articlePairs.add([articles[i]]);
      }
    }

    return Column(
      children: articlePairs.map((pair) {
        return Padding(
          padding: EdgeInsets.only(bottom: 16.h),
          child: Row(
            children: [
              // First card
              Expanded(
                child: _buildCategoryArticleCard(context, pair[0], 0),
              ),
              SizedBox(width: 12.w),
              // Second card (if exists)
              if (pair.length > 1)
                Expanded(
                  child: _buildCategoryArticleCard(context, pair[1], 1),
                )
              else
                Expanded(child: SizedBox()), // Empty space for single card
            ],
          ),
        );
      }).toList(),
    );
  }

  Widget _buildCategoryArticleCard(BuildContext context, HabibArticle article, int index) {
    return Container(
      child: Card(
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 120.h, // Fixed height for image area
              child: Stack(
                clipBehavior: Clip.antiAlias,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 4.h),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Image.asset(
                        Assets.images.mohhamed.path,
                        fit: BoxFit.cover,
                        width: 50.w,
                        height: 50.h,
                      ),
                    ),
                  ),
                  Positioned(
                    left: (-10).w,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Image.asset(
                        Assets.images.candleBig.path,
                        fit: BoxFit.contain,
                        width: 50.w,
                        height: 80.h,
                      ),
                    ),
                  ),
                  Positioned(
                    left: (-4).w,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Image.asset(
                        Assets.images.candleSmall.path,
                        fit: BoxFit.contain,
                        width: 60.w,
                        height: 60.h,
                      ),
                    ),
                  ),
                  Positioned(
                    right: (-10).w,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(
                        Assets.images.candleBig.path,
                        fit: BoxFit.contain,
                        width: 50.w,
                        height: 80.h,
                      ),
                    ),
                  ),
                  Positioned(
                    right: (-4).w,
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Image.asset(
                        Assets.images.candleSmall.path,
                        fit: BoxFit.contain,
                        width: 60.w,
                        height: 60.h,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 40.h),
                    child: Center(
                      child: Text(
                        "فضيلة الشيخ",
                        style: TextStyle(
                          fontFamily: FontFamily.tajawal,
                          fontSize: 13.f,
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
            // Content area (same as original)
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 8.w),
                      child: Text(
                        "الدرس:",
                        style: TextStyle(
                          fontSize: 13.f,
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
                            fontSize: 12.f,
                            fontFamily: FontFamily.tajawal,
                            color: AppColors.grey,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.remove_red_eye_outlined),
                          iconSize: 22.f,
                          color: AppColors.grey,
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Text(
                    article.articleTitle ?? "لا يوجد عنوان",
                    style: TextStyle(
                      fontSize: 12.f,
                      fontFamily: FontFamily.tajawal,
                      color: AppColors.grey,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(height: 20.h), // Add space between lesson title and button
                GestureDetector(
                  onTap: _loadingArticleId == article.articleId ? null : () => _onArticleCardClick(context, article),
                  child: Container(
                    margin: EdgeInsets.only(bottom: 16.h),
                    padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80.r),
                      color: _loadingArticleId == article.articleId 
                          ? AppColors.primary.withOpacity(0.7)
                          : AppColors.primary,
                    ),
                    child: _loadingArticleId == article.articleId
                        ? Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                width: 16.w,
                                height: 16.h,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2.w,
                                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                                ),
                              ),
                              SizedBox(width: 8.w),
                              Text(
                                "جاري التحميل...",
                                style: TextStyle(
                                  fontFamily: FontFamily.tajawal,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.f,
                                ),
                              ),
                            ],
                          )
                        : Text(
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

  // ===== ARTICLE CARD CLICK HANDLER =====
  void _onArticleCardClick(BuildContext context, HabibArticle article) {
    // Set loading state
    setState(() {
      _loadingArticleId = article.articleId;
    });

    // Use BLoC to fetch article details
    context.read<HabibMustafaBloc>().add(
      ArticleCardClickEvent(article: article),
    );
  }

  // ===== NAVIGATION HANDLER =====
  void _handleNavigation(BuildContext context, HabibMustafaState state) {
    if (state.articleDetailStatus.isSuccess() && 
        state.selectedArticle != null && 
        !state.hasNavigatedToArticle) {
      // Reset loading state
      setState(() {
        _loadingArticleId = null;
      });
      
      // Mark that navigation has happened
      context.read<HabibMustafaBloc>().add(MarkArticleNavigatedEvent());
      
      _navigateToArticle(context, state.selectedArticle!);
    }
  }

  void _navigateToArticle(BuildContext context, HabibArticle article) {
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
}
