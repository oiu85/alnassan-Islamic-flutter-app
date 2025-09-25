import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../gen/assets.gen.dart';
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

        return Scaffold(
          backgroundColor: state.isDarkMode ? Colors.grey[900] : Colors.white,
          body: Container(
            decoration: BoxDecoration(
              color: state.isDarkMode ? Colors.grey[900] : null,
              image: state.isDarkMode ? null : DecorationImage(
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


