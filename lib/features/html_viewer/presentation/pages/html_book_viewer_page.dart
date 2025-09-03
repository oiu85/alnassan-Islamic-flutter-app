import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../config/appconfig/app_colors.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/fonts.gen.dart';
import '../services/responsive_text_service.dart';
import '../bloc/html_viewer_bloc.dart';
import '../bloc/html_viewer_event.dart';
import '../bloc/html_viewer_state.dart';
import '../widgets/book_options_toolbar.dart';
import '../widgets/book_page.dart';
import '../widgets/page_navigation.dart';
import '../../domain/models/html_content.dart';
import '../../domain/repositories/html_viewer_repository_impl.dart';

class HtmlBookViewerPage extends StatelessWidget {
  final HtmlContent htmlContent;

  const HtmlBookViewerPage({
    Key? key,
    required this.htmlContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => HtmlViewerBloc(
        HtmlViewerRepositoryImpl(),
      )..add(InitializeHtmlViewerEvent(htmlContent)),
      child: const _HtmlBookViewerContent(),
    );
  }
}

class _HtmlBookViewerContent extends StatelessWidget {
  const _HtmlBookViewerContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HtmlViewerBloc, HtmlViewerState>(
      builder: (context, state) {
        final EdgeInsets padding = ResponsiveTextService.calculatePagePadding(context);
        final bool isDarkMode = state.isDarkMode;

        return Scaffold(
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.images.viewerBackground.path),
                fit: BoxFit.fill,
              ),
            ),
            child: SafeArea(
              child: Column(
                children: [
                  BookOptionsToolbar(),
                  Expanded(
                    child: Center(
                      child: BookPage(),
                    ),
                  ),
                  const PageNavigation(),

                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

Widget _buildToolbarButton({
  required BuildContext context,
  required IconData icon,
  required String label,
  required VoidCallback onPressed,
  required HtmlViewerState state,
}) {
  return InkWell(
    onTap: onPressed,
    borderRadius: BorderRadius.circular(8),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: state.isDarkMode ? AppColors.primary : AppColors.primary,
            size: 24,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: 12,
              color: state.isDarkMode ? Colors.white : AppColors.textPrimary,
            ),
          ),
        ],
      ),
    ),
  );
}

