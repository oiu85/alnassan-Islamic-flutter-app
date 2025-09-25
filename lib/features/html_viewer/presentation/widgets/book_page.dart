import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nassan_app/core/responsive/device_type.dart';

import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../../../../config/appconfig/app_colors.dart';
import '../bloc/html_viewer_bloc.dart';
import '../bloc/html_viewer_state.dart';
import '../services/responsive_text_service.dart';

class BookPage extends StatelessWidget {
  const BookPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HtmlViewerBloc, HtmlViewerState>(
      builder: (context, state) {
        if (state.status == HtmlViewerStatus.loading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (state.status == HtmlViewerStatus.error) {
          return Center(
            child: Text(
              state.errorMessage ?? 'An error occurred',
              style: TextStyle(
                color: Colors.red,
                fontFamily: FontFamily.tajawal,
              ),
            ),
          );
        }
        if (state.currentPage == null) {
          return Center(
            child: Text(
              'No content to display',
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
              ),
            ),
          );
        }
        // Get screen information for responsive layout
        final MediaQueryData mediaQuery = MediaQuery.of(context);
        final bool isLandscape = mediaQuery.orientation ==
            Orientation.landscape;

        // Calculate sizes based on orientation and device type
        final double fontSize = ResponsiveTextService.calculateFontSize(
            context,
            state.textSize * (isLandscape
                ? 0.9
                : 1.0) // Slightly reduce font size in landscape
        );
        final EdgeInsets padding = ResponsiveTextService.calculatePagePadding(
            context);
        final double lineHeight = ResponsiveTextService.calculateLineHeight(
            context);

        return Container(
          constraints: BoxConstraints(
            maxWidth: isLandscape
                ? mediaQuery.size.width *
                0.8 // 80% of screen width in landscape
                : mediaQuery.size.width *
                0.98, // 95% of screen width in portrait
          ),
          decoration: BoxDecoration(
            color: state.isDarkMode ? Colors.grey[800] : null,
            image: state.isDarkMode ? null : DecorationImage(
              image: AssetImage(Assets.images.viewerBackground.path),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(ScreenUtil().radius(12)),
          ),
          padding: padding,
          child: LayoutBuilder(
            builder: (context, constraints) {
              // Calculate content width based on constraints
              final contentWidth = constraints.maxWidth * 0.9999;

              return SingleChildScrollView(
                child: SizedBox(
                  width: contentWidth,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (state.currentPage!.pageNumber == 1 &&
                          state.htmlContent != null) ...[
                        Center(
                          child: Text(
                            "بسم الله الرحمن الرحيم",
                            style: TextStyle(
                              fontFamily: FontFamily.amiri,
                              fontSize: fontSize * context.deviceValue(
                                mobile: 2.0,
                                tablet: 2.2,
                                desktop: 2.4,
                              ),
                              fontWeight: FontWeight.bold,
                              color: state.isDarkMode ? Colors.amber : AppColors.primary,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                      // HTML content
                      Html(
                        data: state.currentPage!.content,
                        style: {
                          "body": Style(
                            fontFamily: FontFamily.tajawal,
                            fontSize: FontSize(fontSize),
                          ),
                          "h1": Style(
                            fontFamily: FontFamily.amiri,
                            fontSize: FontSize(fontSize * 1.5),
                            fontWeight: FontWeight.bold,
                            color: state.isDarkMode ? Colors.white : AppColors.textPrimary,
                          ),
                          "h2": Style(
                            fontFamily: FontFamily.amiri,
                            fontSize: FontSize(fontSize * 1.3),
                            fontWeight: FontWeight.bold,
                            color: state.isDarkMode ? Colors.white : AppColors
                                .textPrimary,
                          ),
                          "p": Style(
                            fontFamily: FontFamily.tajawal,
                            fontSize: FontSize(fontSize),
                            lineHeight: LineHeight(lineHeight),
                            color: state.isDarkMode ? Colors.white70 : AppColors.textPrimary,
                          ),
                          "span": Style(
                            fontFamily: FontFamily.tajawal,
                            fontSize: FontSize(fontSize),
                            lineHeight: LineHeight(lineHeight),
                            textAlign: TextAlign.start,
                            color: state.isDarkMode ? Colors.white70 : AppColors.textPrimary,
                            //? For Adding Shadow To The Text :
                            // textShadow: [
                            //   Shadow(
                            //       blurRadius: 5.0,
                            //       color: Colors.grey.withOpacity(0.6),
                            //       offset: Offset(2.0, 2.0)
                            //   ),
                            // ],
                            // backgroundColor: Colors.yellow.withOpacity(0.1),
                            // padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 2.0),
                            // borderRadius: BorderRadius.circular(8.0),
                          ),
                          "a": Style(
                            fontSize: FontSize(
                                ResponsiveTextService.calculateFontSize(
                                    context, 18)),
                            color: Colors.blue,
                            textDecoration: TextDecoration.underline,
                          ),
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}