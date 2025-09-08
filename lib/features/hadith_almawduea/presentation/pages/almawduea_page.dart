import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/gen/fonts.gen.dart';

import '../../../../core/shared/wdigets/app_drawer.dart';
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
  static const int categoryId = 18; // Hadith Almawduea category ID
  static const int perPage = 4; // Fixed to 4 items per page

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

  // ===== CARD CLICK HANDLER =====
  /// Handles card click by dispatching event to BLoC
  /// All business logic is now handled in the BLoC layer
  void _onArticleCardClick(AlmawdueaArticle article) {
    context.read<AlmawdueaBloc>().add(
      ArticleCardClickEvent(article: article),
    );
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
        child: BlocConsumer<AlmawdueaBloc, AlmawdueaState>(
          listener: (context, state) {
            // ===== ARTICLE DETAIL LISTENER =====
            // Handle loading state - show loading dialog
            if (state.articleDetailStatus.isLoading()) {
              showDialog(
                context: context,
                barrierDismissible: false,
                builder: (context) => const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }
            // Handle article detail loading completion
            else if (state.articleDetailStatus.isSuccess() && state.htmlContent != null) {
              // Close loading dialog
              Navigator.of(context).pop();
              
              // Navigate to HTML viewer using the pre-mapped content from BLoC
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HtmlBookViewerPage(
                    htmlContent: state.htmlContent!,
                  ),
                ),
              );
            } 
            // Handle error state
            else if (state.articleDetailStatus.isFail()) {
              // Close loading dialog and show error
              Navigator.of(context).pop();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.articleDetailError ?? 'خطأ في تحميل المقال'),
                  backgroundColor: Colors.red,
                ),
              );
            }
          },
          builder: (context, state) {
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

                // Loading state
                if (state.status.isLoading() && state.articles.isEmpty)
                  const SliverToBoxAdapter(
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  )
                // Error state
                else if (state.status.isFail())
                  SliverToBoxAdapter(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          state.error ?? 'حدث خطأ في تحميل البيانات',
                          style: const TextStyle(
                            fontFamily: FontFamily.tajawal,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  )
                // Empty state
                else if (state.articles.isEmpty)
                  const SliverToBoxAdapter(
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text(
                          'لا توجد مقالات متاحة',
                          style: TextStyle(
                            fontFamily: FontFamily.tajawal,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  )
                // Articles list
                else
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        if (index >= state.articles.length) {
                          return null;
                        }
                        
                        final article = state.articles[index];
                        return _buildArticleCard(article);
                      },
                      childCount: state.articles.length,
                    ),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }


  // ===== ARTICLE CARD BUILDER =====
  Widget _buildArticleCard(AlmawdueaArticle article) {
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
                child: Text(
                  // Display article summary
                  article.articleSummary ?? 'ملخص غير متوفر',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: FontFamily.tajawal
                  ),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          Row(children: [
            Text("المزيد", style: TextStyle(fontWeight: FontWeight.bold, fontFamily: FontFamily.tajawal),)
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
            onTap: () => _onArticleCardClick(article),
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 4),
              padding: EdgeInsets.symmetric(horizontal: 2, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                color: AppColors.primary,
              ),
              child: Center(
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
          ),
        ],
      ),
    );
  }
}