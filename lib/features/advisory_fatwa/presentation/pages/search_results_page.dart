import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
import 'package:nassan_app/core/shared/wdigets/AppScaffold.dart';
import 'package:nassan_app/core/shared/wdigets/ui_status_handling.dart';
import 'package:nassan_app/gen/fonts.gen.dart';

import '../bloc/advisory_bloc.dart';
import '../bloc/advisory_events.dart';
import '../bloc/advisory_states.dart';
import '../widgets/advisory_fatwa_card_widget.dart';
import 'advisory_viewer_page.dart';

class SearchResultsPage extends StatefulWidget {
  final String searchQuery;
  final int? advisoryId;
  
  const SearchResultsPage({
    super.key,
    required this.searchQuery,
    this.advisoryId,
  });

  @override
  State<SearchResultsPage> createState() => _SearchResultsPageState();
}

class _SearchResultsPageState extends State<SearchResultsPage> {
  @override
  void initState() {
    super.initState();
    // Dispatch search event when page loads
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // If advisoryId is provided, search by ID, otherwise search by text
      if (widget.advisoryId != null) {
        context.read<AdvisoryBloc>().add(
          SearchAdvisoriesEvent(advisoryId: widget.advisoryId),
        );
      } else {
        context.read<AdvisoryBloc>().add(
          SearchAdvisoriesEvent(query: widget.searchQuery),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AdvisoryBloc, AdvisoryState>(
      builder: (context, state) {
        return AppScaffold.custom(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text(
              'نتائج البحث',
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 18.f,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            iconTheme: const IconThemeData(color: Colors.black),
            actions: [
              // Filter button for pagination
              Padding(
                padding: EdgeInsets.only(left: 8.w),
                child: context.read<AdvisoryBloc>().buildSearchFilterButton(
                  context: context,
                ),
              ),
            ],
          ),
          body: Column(
            children: [
              // Search info below AppBar
              _buildSearchInfo(),
              // Search results
              Expanded(
                child: SimpleLottieHandler(
                  blocStatus: state.searchStatus,
                  successWidget: _buildSearchResults(context, state),
                  isEmpty: state.searchStatus.isSuccess() && state.searchResults.isEmpty,
                  emptyMessage: widget.advisoryId != null
                      ? 'لا توجد فتوى بالرقم ${widget.advisoryId}'
                      : 'لا توجد نتائج للبحث عن "${widget.searchQuery}"',
                  loadingMessage: 'جاري البحث...',
                  onRetry: () {
                    if (widget.advisoryId != null) {
                      context.read<AdvisoryBloc>().add(
                        SearchAdvisoriesEvent(advisoryId: widget.advisoryId),
                      );
                    } else {
                      context.read<AdvisoryBloc>().add(
                        SearchAdvisoriesEvent(query: widget.searchQuery),
                      );
                    }
                  },
                  animationSize: 200.w,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildSearchInfo() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        border: Border(
          bottom: BorderSide(
            color: Colors.grey[300]!,
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          Icon(
            widget.advisoryId != null ? Icons.tag : Icons.search,
            size: 20.f,
            color: Colors.grey[600],
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Text(
              widget.advisoryId != null
                  ? 'البحث عن الفتوى رقم: ${widget.advisoryId}'
                  : 'البحث عن: ${widget.searchQuery}',
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 14.f,
                color: Colors.grey[700],
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchResults(BuildContext context, AdvisoryState state) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 16.h,
      ),
      itemCount: state.searchResults.length,
      itemBuilder: (context, index) {
        final advisory = state.searchResults[index];
        return Padding(
          padding: EdgeInsets.only(bottom: 16.h),
          child: AdvisoryFatwaCardWidget(
            advisory: advisory,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AdvisoryViewerPage(
                    advisoryId: advisory.advisoryId ?? 0,
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

