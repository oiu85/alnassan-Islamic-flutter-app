import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/core/responsive/device_type.dart';
import 'package:nassan_app/features/html_viewer/presentation/adapters/home_to_html_viewer_adapter.dart';
import 'package:nassan_app/gen/assets.gen.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import '../../data/repositories/reprositers_imp.dart';
import '../bloc/home_bloc.dart';
import '../bloc/home_event.dart';
import '../bloc/home_state.dart';
import '../../../../core/network_client.dart';
import '../widgets/app_drawer.dart';
import '../widgets/bottom_bar.dart';
import '../widgets/bottom_cards.dart';
import '../widgets/home_carosell.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  
  // Helper method for font sizes
  // Helper methods for responsive sizing
  double _fontSize(double size) => ScreenUtil().setSp(size);
  double _width(double size) => ScreenUtil().setWidth(size);
  double _height(double size) => ScreenUtil().setHeight(size);
  double _radius(double size) => ScreenUtil().radius(size);

  Widget _buildErrorWidget(String message) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (message.contains('internet') || message.contains('connection'))
            Lottie.asset(Assets.lottie.noInternet)
          else
            Lottie.asset(Assets.lottie.noData),
          SizedBox(height: _height(20)),
          Text(
            message,
            style: TextStyle(fontSize: _fontSize(16)),
          ),
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
              appBar: AppBar(title: Text('الرئيسية')),
              body: _buildErrorWidget(state.error ?? 'An error occurred'),
            );
          }
          
          // Ensure homeData is not null before proceeding
          if (state.homeData == null) {
            return Scaffold(
              appBar: AppBar(title: Text('الرئيسية')),
              body: _buildErrorWidget('لا يوجد بيانات متاحة'),
            );
          }
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
              actions: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications_outlined, size: ScreenUtil().setSp(30)),
                  ),
                ),
              ],
            ),
            drawer: Drawer(
              child: AppDrawer(),
            ),
            // bottomNavigationBar: BottomNavBarWidget(),
            body: Stack(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: _width(20)),
                  child: ListView(
                    shrinkWrap: true,  // Ensure ListView takes only necessary space
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: _width(5)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "أهلا بكم",
                              style: TextStyle(
                                fontSize: _fontSize(25),
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
                                    fontSize: _fontSize(28),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "أحمد شريف النعسان",
                                  style: TextStyle(
                                    fontSize: _fontSize(17),
                                    fontFamily: FontFamily.tajawal,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: _height(12)),
                      Container(
                        height: context.deviceValue(
                          mobile: 200.h,
                          tablet: 260.h,
                          desktop: 300.h,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.secondary,
                          gradient: LinearGradient(
                            colors: [AppColors.white, AppColors.secondary],
                            stops: [0.02, 0.5],
                            begin: Alignment.topLeft,
                          ),
                          borderRadius: BorderRadius.circular(_radius(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: _radius(1),
                              blurRadius: _radius(5),
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
                                    padding: EdgeInsets.symmetric(horizontal: _width(25)),
                                    child: Center(
                                      child: Text(
                                        state.homeData?.data?.recentArticles?.isNotEmpty == true
                                          ? (state.homeData?.data?.recentArticles?.first.articleSummary?.split('\n').take(5).join('\n') ?? '')
                                          : 'لا يوجد محتوى متاح',
                                        textAlign: TextAlign.center,
                                        maxLines: 3,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: _fontSize(16),
                                          fontFamily: FontFamily.tajawal,
                                          height: 1.5,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: _height(10)),
                                  GestureDetector(
                                    onTap: () {
                                      try {
                                        if (state.homeData?.data?.recentArticles?.isNotEmpty == true) {
                                          final articleId = state.homeData?.data?.recentArticles?.first.articleId;
                                          if (articleId != null) {
                                            HomeToHtmlViewerAdapter.navigateToHtmlViewerFromArticle(
                                              context,
                                              state.homeData?.data?.recentArticles?.first
                                            );
                                          }
                                        } else {
                                          ScaffoldMessenger.of(context).showSnackBar(
                                            SnackBar(content: Text('لا يوجد مقال لعرضه'))
                                          );
                                        }
                                      } catch (e) {
                                        ScaffoldMessenger.of(context).showSnackBar(
                                          SnackBar(content: Text('حدث خطأ في عرض المقال'))
                                        );
                                      }
                                    },
                                    child: Text(
                                      'المزيد',
                                      style: TextStyle(
                                        fontSize: _fontSize(16),
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
                              top: _height(-16),
                              right: _width(-14),
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(180),
                                ),
                                child: Image.asset(
                                  Assets.images.circulerZh.path,
                                  width: _width(76),
                                  height: _height(76),
                                ),
                              ),
                            ),
                            Positioned(
                              top: _height(-16),
                              left: _width(-14),
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(180),
                                ),
                                child: Image.asset(
                                  Assets.images.circulerZh.path,
                                  width: _width(76),
                                  height: _height(76),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: _height(-16),
                              right: _width(-14),
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(180),
                                ),
                                child: Image.asset(
                                  Assets.images.circulerZh.path,
                                  width: _width(76),
                                  height: _height(76),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: _height(-16),
                              left: _width(-14),
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(180),
                                ),
                                child: Image.asset(
                                  Assets.images.circulerZh.path,
                                  width: _width(76),
                                  height: _height(76),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: _height(10)),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: _width(5)),
                        child: Text(
                          "مواضيع هامة:",
                          style: TextStyle(
                            fontFamily: FontFamily.tajawal,
                            fontSize: _fontSize(20),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      HomeCarousel(),
                      SizedBox(height: _height(15)),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: _width(5)),
                        child: Text(
                          "المحتوى",
                          style: TextStyle(
                            fontFamily: FontFamily.tajawal,
                            fontSize: _fontSize(20),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(height: _height(20)),
                      BottomCards(),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                    child: BottomNavBarWidget(
                      index: true,
                    )
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
