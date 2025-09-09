import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/gen/fonts.gen.dart';

import '../../../../core/shared/wdigets/app_drawer.dart';
import '../../../../core/shared/wdigets/ui_status_handling.dart';
import '../../../../gen/assets.gen.dart';
import '../../data/model.dart';
import '../bloc/biographies_bloc.dart';
import '../bloc/biographies_event.dart';
import '../bloc/biographies_state.dart';
import '../../../html_viewer/presentation/pages/html_book_viewer_page.dart';

class HadithPage extends StatefulWidget {
  const HadithPage({super.key});

  @override
  State<HadithPage> createState() => _HadithPageState();
}

class _HadithPageState extends State<HadithPage> {
  static const int categoryId = 26;
  static const int perPage = 10; // Fixed to 10 items per page

  @override
  void initState() {
    super.initState();
    
    context.read<BiographiesBloc>().add(
      const FetchBiographiesArticlesEvent(
        categoryId: categoryId,
        page: 1,
        perPage: perPage,
      ),
    );
  }


  // ===== CARD CLICK HANDLER =====
  void _onArticleCardClick(BiographiesArticle article) {
    context.read<BiographiesBloc>().add(
      ArticleCardClickEvent(article: article),
    );
  }
  // ===== NAVIGATION HANDLER =====
  void _handleNavigation(BuildContext context, BiographiesState state) {
    if (state.articleDetailStatus.isSuccess() && 
        state.htmlContent != null && 
        !state.hasNavigatedToArticle) {
      // Mark that navigation has happened
      context.read<BiographiesBloc>().add(MarkArticleNavigatedEvent());
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HtmlBookViewerPage(
            htmlContent: state.htmlContent!,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(child: AppDrawer()),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.viewerBackground.path),
            fit: BoxFit.cover,
          ),
        ),
        child: BlocBuilder<BiographiesBloc, BiographiesState>(
          builder: (context, state) {
            return SimpleLottieHandler(
              blocStatus: state.status,
              successWidget: _buildHadithContent(context, state),
              isEmpty: state.status.isSuccess() && state.articles.isEmpty,
              emptyMessage: 'لا توجد مقالات متاحة',
              loadingMessage: 'جاري تحميل المقالات...',
              onRetry: () {
                context.read<BiographiesBloc>().add(
                  const FetchBiographiesArticlesEvent(
                    categoryId: categoryId,
                    page: 1,
                    perPage: perPage,
                  ),
                );
              },
              animationSize: 200,
            );
          },
        ),
      ),
    );
  }

  Widget _buildHadithContent(BuildContext context, BiographiesState state) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _handleNavigation(context, state);
    });

    return CustomScrollView(
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
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 30),
            child: Row(
              children: [
                Text(
                  state.biographiesData?.data?.categories?.first.catTitle ?? "باب التراجم",
                  style: const TextStyle(
                    fontFamily: FontFamily.tajawal,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(width: 8),
                // Combined filter button for pagination
                context.read<BiographiesBloc>().buildFilterButton(
                  context: context,
                  categoryId: categoryId,
                  perPage: perPage,
                ),
              ],
            ),
          ),
        ),
        SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 19,
            crossAxisSpacing: 20,
            childAspectRatio: 1.3,
          ),
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              if (index >= state.articles.length) {
                return null;
              }
              
              final article = state.articles[index];
              final isLoading = state.articleDetailStatus.isLoading() && 
                               state.loadingArticleId == article.articleId;
              return Card(
                elevation: 4,
                color: AppColors.secondary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: InkWell(
                  onTap: () => _onArticleCardClick(article),
                  child: Stack(
                    clipBehavior: Clip.antiAlias,
                    children: [
                      // Loading indicator
                      if (isLoading)
                        const Center(
                          child: CircularProgressIndicator(
                            color: AppColors.darkGrey,
                          ),
                        ),
                      Positioned(
                        top: -8,
                        right: -10,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(180),
                          ),
                          child: Image.asset(
                            Assets.images.circulerZh.path,
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ),
                      Align(
                        alignment: const Alignment(-1.18, 1.3),
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(180),
                          ),
                          child: Image.asset(
                            Assets.images.circulerZh.path,
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ),
                      Align(
                        alignment: const Alignment(-0.3, 0.2),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            article.articleTitle ?? 'عنوان غير متوفر',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontFamily: FontFamily.tajawal,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            childCount: state.articles.length,
          ),
        ),
      ],
    );
  }
}