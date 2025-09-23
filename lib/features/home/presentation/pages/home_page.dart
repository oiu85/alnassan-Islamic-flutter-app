import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/core/shared/wdigets/app_drawer.dart';
import 'package:nassan_app/core/shared/widgets/close_app_button.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import '../../../../core/shared/wdigets/ui_status_handling.dart';
import '../../../../core/shared/wdigets/AppScaffold.dart';
import '../../../../core/responsive/screen_util_res.dart';
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

  // Using extension methods for easier access
  // No need for helper methods - use extensions directly: 25.w, 30.h, 16.f

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
          padding: EdgeInsets.symmetric(horizontal: 27.w),
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height - 
                          MediaQuery.of(context).padding.top - 
                          MediaQuery.of(context).padding.bottom,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "أهلا بكم",
                        style: TextStyle(
                          fontSize: 25.f,
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
                              fontSize: 28.f,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "أحمد شريف النعسان",
                            style: TextStyle(
                              fontSize: 17.f,
                              fontFamily: FontFamily.tajawal,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 27.h),
                HomeMainCard(state: state,),
                SizedBox(height: 24.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Text(
                    "مواضيع هامة:",
                    style: TextStyle(
                      fontFamily: FontFamily.tajawal,
                      fontSize: 24.f,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                HomeCarousel(
                  importantTopics: state.homeData?.data?.importantTopics?.data,
                ),
                SizedBox(height: 23.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: Text(
                    "المحتوى",
                    style: TextStyle(
                      fontFamily: FontFamily.tajawal,
                      fontSize: 24.f,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                BottomCards(),
                ],
              ),
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
                size: 30.f,
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
