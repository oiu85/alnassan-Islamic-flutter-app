import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/core/responsive/device_type.dart';
import 'package:nassan_app/gen/assets.gen.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import '../../data/repositories/reprositers_imp.dart';
import '../bloc/home_bloc.dart';
import '../bloc/home_event.dart';
import '../bloc/home_state.dart';
import '../../../../core/network/network_client.dart';
import '../../../../core/shared/wdigets/app_drawer.dart';
import '../widgets/bottom_bar.dart';
import '../widgets/bottom_cards.dart';
import '../widgets/home_carosell.dart';
import '../widgets/home_main_card.dart';

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
                        child: HomeMainCard(state: state),
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
