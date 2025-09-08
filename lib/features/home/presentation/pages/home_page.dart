import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/core/responsive/device_type.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import '../../../../core/widgets/ui_status_handling.dart';
import '../../../../gen/assets.gen.dart';
import '../../../html_viewer/presentation/adapters/home_to_html_viewer_adapter.dart';
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

  double _fontSize(double size) => ScreenUtil().setSp(size);
  double _width(double size) => ScreenUtil().setWidth(size);
  double _height(double size) => ScreenUtil().setHeight(size);
  double _radius(double size) => ScreenUtil().radius(size);


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
                      HomeMainCard(state: state,),
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
  }
}
