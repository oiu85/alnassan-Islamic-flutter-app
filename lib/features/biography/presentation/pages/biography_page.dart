import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/ui_status_handling.dart';
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


  @override
  void initState() {
    super.initState();
    context.read<BiographyBloc>().add(const FetchBiographyArticleEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BiographyBloc, BiographyState>(
      builder: (context, state) {
        return SimpleLottieHandler(
          blocStatus: state.status,
          successWidget: _buildBiographyContent(context, state),
          isEmpty: state.status.isSuccess() && (state.article == null || state.htmlContent == null),
          emptyMessage: 'لا توجد بيانات متاحة',
          loadingMessage: 'جاري تحميل البيانات...',
          onRetry: () => context.read<BiographyBloc>().add(const FetchBiographyArticleEvent()),
          animationSize: 200,
        );
      },
    );
  }

  Widget _buildBiographyContent(BuildContext context, BiographyState state) {
    if (state.article == null || state.htmlContent == null) {
      return const SizedBox();
    }
    
    return HtmlBookViewerPage(
      htmlContent: state.htmlContent!,
    );
  }
}
