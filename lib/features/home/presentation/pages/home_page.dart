import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nassan_app/core/shared/wdigets/app_drawer.dart';
import 'package:nassan_app/core/shared/widgets/close_app_button.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import '../../../../core/shared/wdigets/ui_status_handling.dart';
import '../../../../core/shared/wdigets/AppScaffold.dart';
import '../../data/repositories/reprositers_imp.dart';
import '../bloc/home_bloc.dart';
import '../bloc/home_event.dart';
import '../bloc/home_state.dart';
import '../../../../core/network/network_client.dart';
import '../widgets/bottom_cards.dart';
import '../widgets/home_carosell.dart';
import '../widgets/home_main_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  double _fontSize(double size) => ScreenUtil().setSp(size);
  double _width(double size) => ScreenUtil().setWidth(size);
  double _height(double size) => ScreenUtil().setHeight(size);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      HomeBloc(HomeRepositoryImpl(NetworkClient()))..add(const FetchHomeDataEvent()),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return SimpleLottieHandler(
            blocStatus: state.status,
            successWidget: homeContent(context, state),
            isEmpty: state.status.isSuccess() && state.homeData == null,
            emptyMessage: 'لا توجد بيانات متاحة',
            loadingMessage: 'جاري تحميل البيانات...',
            onRetry: () => context.read<HomeBloc>().add(const FetchHomeDataEvent()),
            animationSize: 200,
          );
        },
      ),
    );
  }

  Widget homeContent(BuildContext context, HomeState state) {
    return CloseAppWillPopScope(
      child: AppScaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: _width(27)),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: _width(10)),
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
                SizedBox(height: _height(27)),
                HomeMainCard(state: state,),
                SizedBox(height: _height(24)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: _width(5)),
                  child: Text(
                    "مواضيع هامة:",
                    style: TextStyle(
                      fontFamily: FontFamily.tajawal,
                      fontSize: _fontSize(24),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                HomeCarousel(
                  importantTopics: state.homeData?.data?.importantTopics?.data,
                ),
                SizedBox(height: _height(23)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: _width(5)),
                  child: Text(
                    "المحتوى",
                    style: TextStyle(
                      fontFamily: FontFamily.tajawal,
                      fontSize: _fontSize(24),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: _height(20)),
                BottomCards(),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
              onPressed: () {
                // TODO: Handle notifications
              },
              icon: Icon(
                Icons.notifications_outlined,
                size: ScreenUtil().setSp(30),
              ),
            ),
          ],
        ),
        drawer: Drawer(
          child: AppDrawer(
            categories: state.homeData?.data?.articleCategories,
          ),
        ),
      ),
    );
  }
}
