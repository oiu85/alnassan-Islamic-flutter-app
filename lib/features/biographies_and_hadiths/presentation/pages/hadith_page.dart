import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/gen/fonts.gen.dart';

import '../../../../core/shared/wdigets/app_drawer.dart';
import '../../../../gen/assets.gen.dart';
import '../../data/model.dart';
import '../bloc/biographies_bloc.dart';
import '../bloc/biographies_event.dart';
import '../bloc/biographies_state.dart';
// ===== HTML VIEWER IMPORTS =====
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
    
    // Fetch initial data
    context.read<BiographiesBloc>().add(
      const FetchBiographiesArticlesEvent(
        categoryId: categoryId,
        page: 1,
        perPage: perPage,
      ),
    );
  }


  // ===== CARD CLICK HANDLER =====
  /// Handles card click by dispatching event to BLoC
 
  void _onArticleCardClick(BiographiesArticle article) {
    context.read<BiographiesBloc>().add(
      ArticleCardClickEvent(article: article),
    );
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
        child: BlocConsumer<BiographiesBloc, BiographiesState>(
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
                if (state.status.isLoading() && state.articles.isEmpty)
                  const SliverToBoxAdapter(
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  )
                else if (state.status.isLoading() && state.articles.isNotEmpty)
                  const SliverToBoxAdapter(
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  )
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
                else
                  SliverGrid(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 19,
                      crossAxisSpacing: 20,
                      childAspectRatio: 1.15,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        if (index >= state.articles.length) {
                          return null;
                        }
                        
                        final article = state.articles[index];
                        return Card(
                          color: AppColors.secondary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: InkWell(
                            onTap: () => _onArticleCardClick(article),
                            child: Stack(
                              clipBehavior: Clip.antiAlias,
                              children: [
                                Positioned(
                                  top: -3,
                                  right: -3,
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
                                  alignment: const Alignment(-1.04, 1.04),
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
          },
        ),
      ),
    );
  }

}

// Container(
// decoration: BoxDecoration(
// boxShadow: [
// BoxShadow(
// color: Colors.black.withOpacity(0.2),
// spreadRadius: 1,
// blurRadius: 6,
// offset: Offset(0, 3),
// ),
// ],
// color: AppColors.secondary,
// borderRadius: BorderRadius.circular(40),
// ),
// child: Stack(
// children: [
//
// ],
// ),
// );
