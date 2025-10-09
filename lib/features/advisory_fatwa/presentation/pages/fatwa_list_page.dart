import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
import 'package:nassan_app/core/di/app_dependencies.dart';
import 'package:nassan_app/core/shared/wdigets/AppScaffold.dart';
import 'package:nassan_app/core/shared/wdigets/ui_status_handling.dart';
import 'package:nassan_app/gen/fonts.gen.dart';

import '../bloc/fatwa_list_bloc.dart';
import '../bloc/fatwa_list_event.dart';
import '../bloc/fatwa_list_state.dart';
import '../widgets/advisory_fatwa_card_widget.dart';
import 'advisory_viewer_page.dart';

class FatwaListPage extends StatelessWidget {
  final int categoryId;
  final String categoryTitle;

  const FatwaListPage({
    super.key,
    required this.categoryId,
    required this.categoryTitle,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<FatwaListBloc>()
        ..add(FetchFatwaListEvent(categoryId: categoryId)),
      child: const _FatwaListContent(),
    );
  }
}

class _FatwaListContent extends StatefulWidget {
  const _FatwaListContent();

  @override
  State<_FatwaListContent> createState() => _FatwaListContentState();
}

class _FatwaListContentState extends State<_FatwaListContent> {
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
      context.read<FatwaListBloc>().add(const LoadMoreFatwasEvent());
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FatwaListBloc, FatwaListState>(
      builder: (context, state) {
        return AppScaffold.custom(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              state.category?.catTitle ?? 'الفتاوى',
              style: TextStyle(
                fontSize: 18.f,
                fontFamily: FontFamily.tajawal,
                fontWeight: FontWeight.bold,
              ),
            ),
            elevation: 0,
            iconTheme: const IconThemeData(color: Colors.black),
            actions: [
              // Filter button for pagination
              BlocBuilder<FatwaListBloc, FatwaListState>(
                builder: (context, state) {
                  return context.read<FatwaListBloc>().buildFilterButton(
                    context: context,
                    perPage: 5,
                  );
                },
              ),
              IconButton(
                icon: const Icon(Icons.refresh),
                onPressed: () {
                  context.read<FatwaListBloc>().add(const RefreshFatwaListEvent());
                },
              ),
            ],
          ),
          body: SimpleLottieHandler(
            blocStatus: state.status,
            successWidget: _buildFatwaList(context, state),
            isEmpty: state.status.isSuccess() && state.fatwas.isEmpty,
            emptyMessage: 'لا توجد فتاوى في هذا القسم',
            loadingMessage: 'جاري تحميل الفتاوى...',
            onRetry: () {
              context.read<FatwaListBloc>().add(
                FetchFatwaListEvent(categoryId: state.category?.catId ?? 0),
              );
            },
          ),
        );
      },
    );
  }

  Widget _buildFatwaList(BuildContext context, FatwaListState state) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<FatwaListBloc>().add(const RefreshFatwaListEvent());
      },
      child: ListView.builder(
        controller: _scrollController,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        itemCount: state.fatwas.length + (state.status.isLoadingMore() ? 1 : 0),
        itemBuilder: (context, index) {
          if (index >= state.fatwas.length) {
            return _buildLoadingIndicator();
          }

          final fatwa = state.fatwas[index];
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

  Widget _buildLoadingIndicator() {
    return Container(
      padding: EdgeInsets.all(16.w),
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
