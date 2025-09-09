import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/gen/fonts.gen.dart';

import '../../../../core/shared/wdigets/app_drawer.dart';
import '../../../../core/shared/wdigets/ui_status_handling.dart';
import '../../../../gen/assets.gen.dart';
import '../../data/model.dart';
import '../bloc/almawduea_bloc.dart';
import '../bloc/almawduea_event.dart';
import '../bloc/almawduea_state.dart';
// ===== HTML VIEWER IMPORTS =====
import '../../../html_viewer/presentation/pages/html_book_viewer_page.dart';

class AlmawdueaPage extends StatefulWidget {
  const AlmawdueaPage({super.key});

  @override
  State<AlmawdueaPage> createState() => _AlmawdueaPageState();
}

class _AlmawdueaPageState extends State<AlmawdueaPage> {
  static const int categoryId = 18;
  static const int perPage = 4;

  @override
  void initState() {
    super.initState();
    
    // Fetch initial data
    context.read<AlmawdueaBloc>().add(
      const FetchAlmawdueaArticlesEvent(
        categoryId: categoryId,
        page: 1,
        perPage: perPage,
      ),
    );
  }
  // ===== EXPAND/COLLAPSE HANDLER =====
  void _toggleArticleExpansion(int articleId) {
    context.read<AlmawdueaBloc>().add(
      ToggleArticleExpansionEvent(articleId: articleId),
    );
  }

  // ===== CARD CLICK HANDLER =====
  void _onArticleCardClick(AlmawdueaArticle article) {
    context.read<AlmawdueaBloc>().add(
      ArticleCardClickEvent(article: article),
    );
  }

  // ===== NAVIGATION HANDLER =====
  void _handleNavigation(BuildContext context, AlmawdueaState state) {
    if (state.articleDetailStatus.isSuccess() && 
        state.htmlContent != null && 
        !state.hasNavigatedToArticle) {
      // Mark that navigation has happened
      context.read<AlmawdueaBloc>().add(MarkArticleNavigatedEvent());
      
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
        margin: EdgeInsets.symmetric(horizontal: 12),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.viewerBackground.path),
            fit: BoxFit.cover,
          ),
        ),
        child: BlocBuilder<AlmawdueaBloc, AlmawdueaState>(
          builder: (context, state) {
            return SimpleLottieHandler(
              blocStatus: state.status,
              successWidget: _buildAlmawdueaContent(context, state),
              isEmpty: state.status.isSuccess() && state.articles.isEmpty,
              emptyMessage: 'لا توجد مقالات متاحة',
              loadingMessage: 'جاري تحميل المقالات...',
              onRetry: () {
                context.read<AlmawdueaBloc>().add(
                  const FetchAlmawdueaArticlesEvent(
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

  Widget _buildAlmawdueaContent(BuildContext context, AlmawdueaState state) {
    // Handle navigation when content is ready
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
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 30),
            child: Row(
              children: [
                Text(
                  state.almawdueaData?.data?.categories?.first.catTitle ?? "الأحاديث الموضوعة",
                  style: TextStyle(
                    fontFamily: FontFamily.tajawal,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 8),
                // Filter button for pagination
                context.read<AlmawdueaBloc>().buildFilterButton(
                  context: context,
                  categoryId: categoryId,
                  perPage: perPage,
                ),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              if (index >= state.articles.length) {
                return null;
              }
              
              final article = state.articles[index];
              final isLoading = state.articleDetailStatus.isLoading() && 
                               state.loadingArticleId == article.articleId;
              final isExpanded = state.expandedArticles.contains(article.articleId);
              return _buildArticleCard(article, isLoading, isExpanded);
            },
            childCount: state.articles.length,
          ),
        ),
      ],
    );
  }


  Widget _buildArticleCard(AlmawdueaArticle article, bool isLoading, bool isExpanded) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4, vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: AppColors.secondary,
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  // Display article title
                  article.articleTitle ?? 'عنوان غير متوفر',
                  style: TextStyle(
                    fontWeight: FontWeight.bold, 
                    fontFamily: FontFamily.tajawal, 
                    fontSize: 12
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "السؤال: ",
                style: TextStyle(
                  color: AppColors.primary,
                  fontWeight: FontWeight.bold,
                  fontFamily: FontFamily.tajawal
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  child: Text(
                    // Display article summary
                    article.articleSummary ?? 'ملخص غير متوفر',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: FontFamily.tajawal,
                      height: 1.4,
                    ),
                    maxLines: isExpanded ? null : 4,
                    overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(children: [
            InkWell(
              onTap: () => _toggleArticleExpansion(article.articleId ?? 0),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      isExpanded ? "عرض أقل" : "المزيد",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: FontFamily.tajawal,
                        color: Colors.black,
                        fontSize: 13,
                        letterSpacing: 0.5,
                      ),
                    ),
                    SizedBox(width: 6),
                    Icon(
                      isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                      color: Colors.black,
                      size: 16,
                    ),
                  ],
                ),
              ),
            )
          ],),
          Divider(
            color: AppColors.primary,
            thickness: 2,
          ),
          Row(
            children: [
              Spacer(),
              IconButton(onPressed: (){}, icon: Icon(Icons.calendar_month_outlined)),
              Text(article.articleDate ?? 'غير محدد', style: TextStyle(fontSize: 12)),
              IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye_outlined)),
              Text(article.articleVisitor ?? '0', style: TextStyle(fontFamily: FontFamily.tajawal)),
            ],
          ),
          GestureDetector(
            onTap: isLoading ? null : () => _onArticleCardClick(article),
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 4),
              padding: EdgeInsets.symmetric(horizontal: 2, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                color: isLoading ? AppColors.secondary : AppColors.primary,
              ),
              child: Center(
                child: isLoading
                    ? CircularProgressIndicator(
                        color: AppColors.primary,
                        strokeWidth: 2,
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
          ),
        ],
      ),
    );
  }
}