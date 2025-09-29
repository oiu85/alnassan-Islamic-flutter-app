import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/core/di/app_dependencies.dart';
import 'package:nassan_app/core/shared/wdigets/ui_status_handling.dart';
import 'package:nassan_app/gen/assets.gen.dart';

import '../bloc/advisory_viewer_bloc.dart';
import '../bloc/advisory_viewer_event.dart';
import '../bloc/advisory_viewer_state.dart';
import '../widgets/advisory_viewer_toolbar.dart';
import '../widgets/advisory_content.dart';

class AdvisoryViewerPage extends StatelessWidget {
  final int advisoryId;

  const AdvisoryViewerPage({
    Key? key,
    required this.advisoryId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AdvisoryViewerBloc>()
        ..add(FetchAdvisoryDetailsEvent(advisoryId)),
      child: const _AdvisoryViewerContent(),
    );
  }
}

class _AdvisoryViewerContent extends StatelessWidget {
  const _AdvisoryViewerContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdvisoryViewerBloc, AdvisoryViewerState>(
      builder: (context, state) {
        return Scaffold(
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(Assets.images.viewerBackground.path),
                fit: BoxFit.fill,
                colorFilter: state.isNightMode
                    ? const ColorFilter.mode(
                        Colors.black87,
                        BlendMode.darken,
                      )
                    : null,
              ),
            ),
            child: SafeArea(
              child: Column(
                children: [
                  const AdvisoryViewerToolbar(),
                  Expanded(
                    child: SimpleLottieHandler(
                      blocStatus: state.status,
                      successWidget: const AdvisoryContent(),
                      isEmpty: state.status.isSuccess() && state.advisory == null,
                      emptyMessage: 'لم يتم العثور على الفتوى',
                      loadingMessage: 'جاري تحميل الفتوى...',
                      onRetry: () {
                        final advisoryId = context.read<AdvisoryViewerBloc>().state.advisory?.advisoryId;
                        if (advisoryId != null) {
                          context.read<AdvisoryViewerBloc>().add(FetchAdvisoryDetailsEvent(advisoryId));
                        }
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
