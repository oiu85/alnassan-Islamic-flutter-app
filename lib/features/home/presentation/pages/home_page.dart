import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/features/html_viewer/presentation/pages/store_html.dart';
import 'package:nassan_app/features/html_viewer/presentation/adapters/home_to_html_viewer_adapter.dart';
import 'package:nassan_app/gen/assets.gen.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import '../bloc/home_bloc.dart';
import '../bloc/home_event.dart';
import '../bloc/home_state.dart';
import '../../domain/reprositers_imp.dart';
import '../../../../core/network_client.dart';
import '../widgets/bottom_cards.dart';
import '../widgets/home_carosell.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  Widget _buildErrorWidget(String message) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (message.contains('internet') || message.contains('connection'))
            Lottie.asset(Assets.lottie.noInternet)
          else
            Lottie.asset(Assets.lottie.noData),
          const SizedBox(height: 20),
          Text(message),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      HomeBloc(HomeRepositoryImpl(NetworkClient()))
        ..add(const FetchHomeDataEvent()),
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          if (state.status.isFail()) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.error ?? 'An error occurred')),
            );
          }
        },
        builder: (context, state) {
          if (state.status.isLoading()) {
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          }

          if (state.status.isFail()) {
            return Scaffold(
              body: _buildErrorWidget(state.error ?? 'An error occurred'),
            );
          }
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
              leading: Builder(
                builder: (BuildContext context) {
                  return IconButton(
                    padding: EdgeInsets.symmetric(horizontal: 14),
                    icon: Icon(Icons.menu, size: 30),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  );
                },
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications_outlined, size: 30),
                ),
              ],
            ),
            drawer: Drawer(
              child: ListView(
                children: <Widget>[DrawerHeader(child: Text("Menu"))],
              ),
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ListView(
                shrinkWrap: true,  // Ensure ListView takes only necessary space
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "أهلا بكم",
                          style: TextStyle(
                            fontSize: 25,
                            fontFamily: FontFamily.tajawal,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "فضيلة الشيخ ",
                              style: TextStyle(
                                fontFamily: FontFamily.tajawal,
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "أحمد شريف النعسان",
                              style: TextStyle(
                                fontSize: 17,
                                fontFamily: FontFamily.tajawal,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: AppColors.secondary,
                      gradient: LinearGradient(
                        colors: [AppColors.white, AppColors.secondary],
                        stops: [0.02, 0.5],
                        begin: Alignment.topLeft,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 25),
                                child: Center(
                                  child: Text(
                                    state.homeData?.data?.recentArticles?.first.articleSummary?.split('\n').take(5).join('\n') ?? '',
                                    textAlign: TextAlign.center,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: FontFamily.tajawal,
                                      height: 1.5,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              GestureDetector(
                                onTap: () {
                                  final articleId = state.homeData?.data?.recentArticles?.first.articleId;
                                  if (articleId != null) {
                                    // Use the new HTML viewer adapter
                                    HomeToHtmlViewerAdapter.navigateToHtmlViewerFromArticle(
                                      context, 
                                      state.homeData?.data?.recentArticles?.first
                                    );
                                  }
                                },
                                child: Text(
                                  'المزيد',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: FontFamily.tajawal,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primary,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: -16,
                          right: -14,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(180),
                            ),
                            child: Image.asset(
                              Assets.images.circulerZh.path,
                              width: 76,
                              height: 76,
                            ),
                          ),
                        ),
                        Positioned(
                          top: -16,
                          left: -14,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(180),
                            ),
                            child: Image.asset(
                              Assets.images.circulerZh.path,
                              width: 76,
                              height: 76,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: -16,
                          right: -14,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(180),
                            ),
                            child: Image.asset(
                              Assets.images.circulerZh.path,
                              width: 76,
                              height: 76,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: -16,
                          left: -14,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(180),
                            ),
                            child: Image.asset(
                              Assets.images.circulerZh.path,
                              width: 76,
                              height: 76,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Text(
                      "مواضيع هامة:",
                      style: TextStyle(
                        fontFamily: FontFamily.tajawal,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  HomeCarousel(),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Text(
                      "المحتوى",
                      style: TextStyle(
                        fontFamily: FontFamily.tajawal,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  BottomCards(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
