import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/core/responsive/responsive_scaling.dart';
import 'package:nassan_app/gen/fonts.gen.dart';

import '../../../../core/shared/wdigets/app_drawer.dart';
import '../../../../core/shared/wdigets/ui_status_handling.dart';
import '../../../../gen/assets.gen.dart';
import '../../data/model/words_on_occasions_model.dart';
import '../bloc/words_on_occasions_bloc.dart';
import '../bloc/words_on_occasions_event.dart';
import '../bloc/words_on_occasions_state.dart';
// Import category articles page
import '../../../with_habib_almustafa/presentation/pages/category_articles_page.dart';
// Import HTML viewer
import '../../../../features/html_viewer/domain/models/html_content.dart';
import '../../../../features/html_viewer/presentation/pages/html_book_viewer_page.dart';

class WordsOnOccasionsPage extends StatefulWidget {
  const WordsOnOccasionsPage({super.key});

  @override
  State<WordsOnOccasionsPage> createState() => _WordsOnOccasionsPageState();
}

class _WordsOnOccasionsPageState extends State<WordsOnOccasionsPage> {
  final ScrollController _scrollController = ScrollController();
  int? _loadingArticleId; // Track which article is loading

  @override
  void initState() {
    super.initState();
    
    // Fetch initial data
    context.read<WordsOnOccasionsBloc>().add(
      const FetchWordsOnOccasionsDataEvent(),
    );

    // Setup scroll listener for pagination
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent * 0.8) {
      final state = context.read<WordsOnOccasionsBloc>().state;
      if (!state.hasReachedMax && !state.status.isLoadingMore()) {
        context.read<WordsOnOccasionsBloc>().add(
          LoadMoreSubCategoriesEvent(
            categoriesPage: state.currentCategoriesPage + 1,
          ),
        );
      }
    }
  }

  void _onArticleCardClick(BuildContext context, WordsOnOccasionsArticle article) {
    // Set loading state
    setState(() {
      _loadingArticleId = article.articleId;
    });

    // Simulate loading delay and then navigate to HTML viewer
    Future.delayed(Duration(milliseconds: 500), () {
      if (mounted) {
        setState(() {
          _loadingArticleId = null;
        });

        final htmlContent = HtmlContent(
          title: article.articleTitle ?? 'Untitled',
          htmlContent: article.articleDes ?? '',
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
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(child: AppDrawer()),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.viewerBackground.path),
            fit: BoxFit.cover,
          ),
        ),
        child: BlocBuilder<WordsOnOccasionsBloc, WordsOnOccasionsState>(
          builder: (context, state) {
            return SimpleLottieHandler(
              blocStatus: state.status,
              successWidget: _buildWordsOnOccasionsContent(context, state),
              isEmpty: state.status.isSuccess() && state.subCategories.isEmpty,
              emptyMessage: 'لا توجد بيانات متاحة',
              loadingMessage: 'جاري تحميل البيانات...',
              onRetry: () {
                context.read<WordsOnOccasionsBloc>().add(
                  const FetchWordsOnOccasionsDataEvent(),
                );
              },
              animationSize: 200,
            );
          },
        ),
      ),
    );
  }

  Widget _buildWordsOnOccasionsContent(BuildContext context, WordsOnOccasionsState state) {
    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          pinned: false,
          floating: true,
          actions: [
            IconButton(
              icon: const Icon(Icons.arrow_forward_outlined),
              onPressed: () {
                Navigator.of(context).maybePop();
              },
            ),
          ],
        ),
        SliverToBoxAdapter(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 30),
            child: Text(
              "كلمات في مناسبات",
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              if (index >= state.subCategories.length) {
                return null;
              }
              
              final subCategory = state.subCategories[index];
              return _buildSubCategorySection(context, subCategory);
            },
            childCount: state.subCategories.length,
          ),
        ),
        // Loading indicator for pagination
        if (state.status.isLoadingMore() && state.subCategories.isNotEmpty)
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ),
      ],
    );
  }

  Widget _buildSubCategorySection(BuildContext context, WordsOnOccasionsCategory subCategory) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Sub-category title with "الكل" button
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    subCategory.catTitle ?? "كلمات في مناسبات",
                    style: TextStyle(
                      fontFamily: FontFamily.tajawal,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    // Navigate to category articles page for this sub-category
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CategoryArticlesPage(
                          categoryId: subCategory.catId ?? 9,
                          categoryTitle: subCategory.catTitle ?? "كلمات في مناسبات",
                        ),
                      ),
                    );
                  },
                  child: Text(
                    "الكل",
                    style: TextStyle(
                      fontSize: 20,
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
              children: (subCategory.articles?.data ?? []).map((article) {
                return _buildArticleCard(context, article);
              }).toList(),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildArticleCard(BuildContext context, WordsOnOccasionsArticle article) {
    return Container(
      width: 190,
      margin: EdgeInsets.only(right: 12),
      child: Card(
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Fixed height container for image stack
            Container(
              height: 120, // Fixed height for image area
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
                        "الكلمة:",
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
                  onTap: _loadingArticleId == article.articleId ? null : () => _onArticleCardClick(context, article),
                  child: Container(
                    margin: EdgeInsets.only(bottom: 16),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      color: _loadingArticleId == article.articleId 
                          ? AppColors.primary.withOpacity(0.7)
                          : AppColors.primary,
                    ),
                    child: _loadingArticleId == article.articleId
                        ? Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SizedBox(
                                width: 16,
                                height: 16,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                                ),
                              ),
                              SizedBox(width: 8),
                              Text(
                                "جاري التحميل...",
                                style: TextStyle(
                                  fontFamily: FontFamily.tajawal,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
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
}
