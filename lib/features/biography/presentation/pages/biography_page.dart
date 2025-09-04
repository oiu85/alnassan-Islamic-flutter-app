import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../../../../core/responsive/device_type.dart';
import '../../../../../config/appconfig/app_colors.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../../../gen/fonts.gen.dart';
import '../../../../../features/html_viewer/presentation/pages/html_book_viewer_page.dart';
import '../bloc/biography_bloc.dart';
import '../bloc/biography_event.dart';
import '../bloc/biography_state.dart';

class BiographyPage extends StatefulWidget {
  const BiographyPage({Key? key}) : super(key: key);

  @override
  _BiographyPageState createState() => _BiographyPageState();
}

class _BiographyPageState extends State<BiographyPage> {
  // Helper methods for responsive sizing
  double _fontSize(double size) => ScreenUtil().setSp(size);
  double _width(double size) => ScreenUtil().setWidth(size);
  double _height(double size) => ScreenUtil().setHeight(size);

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
            style: TextStyle(
              fontSize: context.deviceValue(
                mobile: _fontSize(16),
                tablet: _fontSize(18),
                desktop: _fontSize(20),
              ),
              fontFamily: FontFamily.tajawal,
            ),
          ),
          SizedBox(height: _height(16)),
          ElevatedButton(
            onPressed: () {
              context.read<BiographyBloc>().add(
                    const FetchBiographyArticleEvent(),
                  );
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(
                horizontal: _width(context.deviceValue(
                  mobile: 24,
                  tablet: 32,
                  desktop: 40,
                )),
                vertical: _height(context.deviceValue(
                  mobile: 12,
                  tablet: 16,
                  desktop: 20,
                )),
              ),
              backgroundColor: AppColors.primary,
            ),
            child: Text(
              'إعادة المحاولة',
              style: TextStyle(
                fontSize: context.deviceValue(
                  mobile: _fontSize(14),
                  tablet: _fontSize(16),
                  desktop: _fontSize(18),
                ),
                fontFamily: FontFamily.tajawal,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    context.read<BiographyBloc>().add(const FetchBiographyArticleEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<BiographyBloc, BiographyState>(
        builder: (context, state) {
          if (state.status.isInitial()) {
            return const SizedBox();
          } else if (state.status.isLoading()) {
            return Center(
              child: SizedBox(
                width: context.deviceValue(
                  mobile: 40.0,
                  tablet: 50.0,
                  desktop: 60.0,
                ),
                height: context.deviceValue(
                  mobile: 40.0,
                  tablet: 50.0,
                  desktop: 60.0,
                ),
                child: CircularProgressIndicator(
                  strokeWidth: context.deviceValue(
                    mobile: 3.0,
                    tablet: 4.0,
                    desktop: 5.0,
                  ),
                ),
              ),
            );
          } else if (state.status.isSuccess()) {
            if (state.article == null || state.htmlContent == null) {
              return Center(
                child: Text(
                  'لا توجد بيانات متاحة',
                  style: TextStyle(
                    fontSize: context.deviceValue(
                      mobile: _fontSize(16),
                      tablet: _fontSize(18),
                      desktop: _fontSize(20),
                    ),
                    fontFamily: FontFamily.tajawal,
                  ),
                ),
              );
            }
            
            return HtmlBookViewerPage(
              htmlContent: state.htmlContent!,
            );
          } else {
            // Fail state
            return _buildErrorWidget(state.errorMessage ?? 'خطأ غير معروف');
          }
        },
      ),
    );
  }
}
