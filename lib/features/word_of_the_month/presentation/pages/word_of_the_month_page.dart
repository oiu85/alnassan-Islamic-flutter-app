import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';

import '../../../../core/shared/wdigets/app_drawer.dart';
import '../../../../core/shared/wdigets/ui_status_handling.dart';
import '../../../../gen/assets.gen.dart';
import '../../data/model/word_of_the_month_model.dart';
import '../bloc/word_of_the_month_bloc.dart';
import '../bloc/word_of_the_month_event.dart';
import '../bloc/word_of_the_month_state.dart';
// ===== HTML VIEWER IMPORTS =====
import '../../../html_viewer/presentation/pages/html_book_viewer_page.dart';

class WordOfTheMonthPage extends StatefulWidget {
  final int catId;
  final String catMenus;
  final int articlesPerPage;

  const WordOfTheMonthPage({
    super.key,
    required this.catId,
    required this.catMenus,
    this.articlesPerPage = 4,
  });

  @override
  State<WordOfTheMonthPage> createState() => _WordOfTheMonthPageState();
}

class _WordOfTheMonthPageState extends State<WordOfTheMonthPage> {
  @override
  void initState() {
    super.initState();
    
    // Fetch initial data
    context.read<WordOfTheMonthBloc>().add(
      FetchWordOfTheMonthDataEvent(
        catId: widget.catId,
        catMenus: widget.catMenus,
        articlesPerPage: widget.articlesPerPage,
        articlesPage: 1,
      ),
    );
  }

  // ===== EXPAND/COLLAPSE HANDLER =====
  void _toggleArticleExpansion(int articleId) {
    context.read<WordOfTheMonthBloc>().add(
      ToggleArticleExpansionEvent(articleId: articleId),
    );
  }

  // ===== CARD CLICK HANDLER =====
  void _onArticleCardClick(WordOfTheMonthArticle article) {
    context.read<WordOfTheMonthBloc>().add(
      ArticleCardClickEvent(article: article),
    );
  }

  // ===== NAVIGATION HANDLER =====
  void _handleNavigation(BuildContext context, WordOfTheMonthState state) {
    if (state.articleDetailStatus.isSuccess() && 
        state.htmlContent != null && 
        !state.hasNavigatedToArticle) {
      // Mark that navigation has happened
      context.read<WordOfTheMonthBloc>().add(MarkArticleNavigatedEvent());
      
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
      backgroundColor: Colors.white,
      drawer: const Drawer(child: AppDrawer()),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 12.w),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.images.viewerBackground.path),
            fit: BoxFit.cover,
          ),
        ),
        child: BlocBuilder<WordOfTheMonthBloc, WordOfTheMonthState>(
          builder: (context, state) {
            return SimpleLottieHandler(
              blocStatus: state.status,
              successWidget: _buildWordOfTheMonthContent(context, state),
              isEmpty: state.status.isSuccess() && state.articles.isEmpty,
              emptyMessage: 'لا توجد مقالات متاحة',
              loadingMessage: 'جاري تحميل المقالات...',
              onRetry: () {
                context.read<WordOfTheMonthBloc>().add(
                  FetchWordOfTheMonthDataEvent(
                    catId: widget.catId,
                    catMenus: widget.catMenus,
                    articlesPerPage: widget.articlesPerPage,
                    articlesPage: 1,
                  ),
                );
              },
              animationSize: 200.w,
            );
          },
        ),
      ),
    );
  }

  Widget _buildWordOfTheMonthContent(BuildContext context, WordOfTheMonthState state) {
    // Handle navigation when content is ready
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _handleNavigation(context, state);
    });

    return CustomScrollView(
      slivers: [
        SliverAppBar(
          backgroundColor: Colors.white,
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
              padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 30.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          state.wordOfTheMonthData?.data?.subCategories?.first.catTitle ?? "كلمة الشهر",
                          style: TextStyle(
                            fontFamily: FontFamily.tajawal,
                            fontSize: 20.f,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: 8.w),
                      // Filter button for pagination
                      BlocBuilder<WordOfTheMonthBloc, WordOfTheMonthState>(
                        builder: (context, state) {
                          final bloc = context.read<WordOfTheMonthBloc>();
                          final filterButton = bloc.buildFilterButton(
                            context: context,
                            catId: widget.catId,
                            catMenus: widget.catMenus,
                            articlesPerPage: widget.articlesPerPage,
                          );
                          
                          // Show loading indicator when changing pages
                          if (state.status.isLoading() && state.currentPage > 1) {
                            return Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  width: 16.w,
                                  height: 16.h,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2.w,
                                    valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
                                  ),
                                ),
                                SizedBox(width: 8.w),
                                filterButton,
                              ],
                            );
                          }
                          
                          return filterButton;
                        },
                      ),
                    ],
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

  Widget _buildArticleCard(WordOfTheMonthArticle article, bool isLoading, bool isExpanded) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.w, vertical: 5.h),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 15.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.r),
        boxShadow: [
          BoxShadow(
            color: AppColors.secondary,
            spreadRadius: 1.r,
            blurRadius: 3.r,
            offset: Offset(0, 2.h),
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
                    fontSize: 12.f
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
                      fontSize: 14.f,
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
          SizedBox(height: 8.h),
          Row(children: [
            InkWell(
              onTap: () => _toggleArticleExpansion(article.articleId ?? 0),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      isExpanded ? "عرض أقل" : "المزيد",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: FontFamily.tajawal,
                        color: Colors.black,
                        fontSize: 13.f,
                        letterSpacing: 0.5,
                      ),
                    ),
                    SizedBox(width: 6.w),
                    Icon(
                      isExpanded ? Icons.keyboard_arrow_up : Icons.keyboard_arrow_down,
                      color: Colors.black,
                      size: 16.f,
                    ),
                  ],
                ),
              ),
            )
          ],),
          Divider(
            color: AppColors.primary,
            thickness: 2.h,
          ),
          Row(
            children: [
              Spacer(),
              IconButton(onPressed: (){}, icon: Icon(Icons.calendar_month_outlined)),
              Text(article.articleDate ?? 'غير محدد', style: TextStyle(fontSize: 12.f)),
              IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye_outlined)),
              Text(article.articleVisitor ?? '0', style: TextStyle(fontFamily: FontFamily.tajawal)),
            ],
          ),
          GestureDetector(
            onTap: isLoading ? null : () => _onArticleCardClick(article),
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 4.h),
              padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 10.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80.r),
                color: isLoading ? AppColors.secondary : AppColors.primary,
              ),
              child: Center(
                child: isLoading
                    ? CircularProgressIndicator(
                        color: AppColors.primary,
                        strokeWidth: 2.w,
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
