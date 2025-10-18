import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/core/shared/wdigets/AppScaffold.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';

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
    return AppScaffold.custom(
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
              animationSize: 200.w,
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
        SliverToBoxAdapter(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
            child: Row(
              children: [
                Text(
                  state.almawdueaData?.data?.categories?.first.catTitle ?? "الأحاديث الموضوعة",
                  style: TextStyle(
                    fontFamily: FontFamily.tajawal,
                    fontSize: 20.f,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 8.w),
                // Filter button for pagination with better handling
                BlocBuilder<AlmawdueaBloc, AlmawdueaState>(
                  builder: (context, state) {
                    final bloc = context.read<AlmawdueaBloc>();
                    final filterButton = bloc.buildFilterButton(
                      context: context,
                      categoryId: categoryId,
                      perPage: perPage,
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
          // Wrap in a flexible container to prevent overflow
          Flexible(
            child: LayoutBuilder(
              builder: (context, constraints) {
                // Calculate if text needs expand button
                final TextPainter textPainter = TextPainter(
                  text: TextSpan(
                    text: article.articleSummary ?? 'ملخص غير متوفر',
                    style: TextStyle(
                      fontSize: 14.f,
                      fontFamily: FontFamily.tajawal,
                      height: 1.4,
                    ),
                  ),
                  maxLines: 4,
                  textDirection: TextDirection.rtl,
                )..layout(maxWidth: constraints.maxWidth);
                
                final bool isTextOverflowing = textPainter.didExceedMaxLines;
                
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      // Display article summary
                      article.articleSummary ?? 'ملخص غير متوفر',
                      style: TextStyle(
                        fontSize: 14.f,
                        fontFamily: FontFamily.tajawal,
                        height: 1.4,
                      ),
                      maxLines: isExpanded ? 5 : 4,
                      overflow: TextOverflow.ellipsis,
                    ),
                    // Only show expand button if text overflows
                    if (isTextOverflowing)
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
                      ),
                  ],
                );
              },
            ),
          ),
          Divider(
            color: AppColors.primary,
            thickness: 2.h,
          ),
          Row(
            children: [
              Spacer(),
              Icon(Icons.calendar_month_outlined, size: 18.f, color: Colors.grey[600]),
              SizedBox(width: 4.w),
              Text(
                article.articleDate ?? 'غير محدد', 
                style: TextStyle(
                  fontSize: 12.f,
                  fontFamily: FontFamily.tajawal,
                  color: Colors.grey[600],
                )
              ),
              SizedBox(width: 12.w),
              Icon(Icons.remove_red_eye_outlined, size: 18.f, color: Colors.grey[600]),
              SizedBox(width: 4.w),
              Text(
                article.articleVisitor?.toString() ?? '0', 
                style: TextStyle(
                  fontSize: 12.f,
                  fontFamily: FontFamily.tajawal,
                  color: Colors.grey[600],
                )
              ),
            ],
          ),
          SizedBox(height: 20.h),
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