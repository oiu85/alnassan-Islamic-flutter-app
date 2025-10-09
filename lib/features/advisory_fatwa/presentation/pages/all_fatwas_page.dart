import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
import 'package:nassan_app/core/di/app_dependencies.dart';
import 'package:nassan_app/core/shared/wdigets/AppScaffold.dart';
import 'package:nassan_app/core/shared/wdigets/ui_status_handling.dart';
import 'package:nassan_app/features/advisory_fatwa/presentation/bloc/advisory_states.dart';
import 'package:nassan_app/gen/fonts.gen.dart';

import '../bloc/advisory_bloc.dart';
import '../bloc/advisory_events.dart';
import '../widgets/advisory_fatwa_card_widget.dart';
import 'advisory_viewer_page.dart';

class AllFatwasPage extends StatefulWidget {
  final String title;
  final bool isRecent; // true for recent, false for popular

  const AllFatwasPage({
    super.key,
    required this.title,
    required this.isRecent,
  });

  @override
  State<AllFatwasPage> createState() => _AllFatwasPageState();
}

class _AllFatwasPageState extends State<AllFatwasPage> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.8) {
      // Load more when reaching 80% of scroll
      if (widget.isRecent) {
        context.read<AdvisoryBloc>().add(const FetchRecentAdvisoriesEvent());
      } else {
        context.read<AdvisoryBloc>().add(const FetchPopularAdvisoriesEvent());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<AdvisoryBloc>()
        ..add(widget.isRecent 
            ? const FetchRecentAdvisoriesEvent() 
            : const FetchPopularAdvisoriesEvent()),
      child: BlocBuilder<AdvisoryBloc, AdvisoryState>(
        builder: (context, state) {
          final advisories = widget.isRecent ? state.recentAdvisories : state.popularAdvisories;
          final status = widget.isRecent ? state.recentStatus : state.popularStatus;

          return AppScaffold.custom(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              title: Text(
                widget.title,
                style: TextStyle(
                  fontSize: 18.f,
                  fontFamily: FontFamily.tajawal,
                  fontWeight: FontWeight.bold,
                ),
              ),
              elevation: 0,
              iconTheme: const IconThemeData(color: Colors.black),
              actions: [
                IconButton(
                  icon: const Icon(Icons.refresh),
                  onPressed: () {
                    if (widget.isRecent) {
                      context.read<AdvisoryBloc>().add(const FetchRecentAdvisoriesEvent());
                    } else {
                      context.read<AdvisoryBloc>().add(const FetchPopularAdvisoriesEvent());
                    }
                  },
                ),
              ],
            ),
            body: SimpleLottieHandler(
              blocStatus: status,
              successWidget: _buildFatwasList(context, advisories),
              isEmpty: status.isSuccess() && advisories.isEmpty,
              emptyMessage: 'لا توجد فتاوى متاحة',
              loadingMessage: 'جاري تحميل الفتاوى...',
              onRetry: () {
                if (widget.isRecent) {
                  context.read<AdvisoryBloc>().add(const FetchRecentAdvisoriesEvent());
                } else {
                  context.read<AdvisoryBloc>().add(const FetchPopularAdvisoriesEvent());
                }
              },
            ),
          );
        },
      ),
    );
  }

  Widget _buildFatwasList(BuildContext context, List advisories) {
    return RefreshIndicator(
      onRefresh: () async {
        if (widget.isRecent) {
          context.read<AdvisoryBloc>().add(const FetchRecentAdvisoriesEvent());
        } else {
          context.read<AdvisoryBloc>().add(const FetchPopularAdvisoriesEvent());
        }
      },
      child: ListView.builder(
        controller: _scrollController,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        itemCount: advisories.length,
        itemBuilder: (context, index) {
          final fatwa = advisories[index];
          return _buildFatwaCard(context, fatwa);
        },
      ),
    );
  }

  Widget _buildFatwaCard(BuildContext context, fatwa) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      child: LayoutBuilder(
        builder: (context, constraints) {
          // Calculate responsive card width based on screen width
          final double cardWidth = constraints.maxWidth > 600 
              ? constraints.maxWidth * 0.9 // 90% of width for larger screens
              : constraints.maxWidth * 0.95; // 95% of width for smaller screens
          
          return AdvisoryFatwaCardWidget(
            advisory: fatwa,
            width: cardWidth,
            onTap: () {
              if (fatwa.advisoryId != null) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => AdvisoryViewerPage(
                      advisoryId: fatwa.advisoryId!,
                    ),
                  ),
                );
              }
            },
          );
        },
      ),
    );
  }
}


