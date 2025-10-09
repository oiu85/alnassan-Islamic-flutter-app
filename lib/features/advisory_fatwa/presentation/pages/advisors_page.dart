import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
import 'package:nassan_app/core/di/app_dependencies.dart';
import 'package:nassan_app/core/shared/wdigets/AppScaffold.dart';
import 'package:nassan_app/core/shared/wdigets/ui_status_handling.dart';

import '../bloc/advisory_categories_bloc.dart';
import '../bloc/advisory_categories_event.dart';
import '../bloc/advisory_categories_state.dart';
import '../bloc/advisory_bloc.dart';
import '../bloc/advisory_events.dart';
import '../widgets/widgets.dart';
import 'all_fatwas_page.dart';
import 'search_results_page.dart';

class AdvisorsPage extends StatelessWidget {
  const AdvisorsPage({super.key});

  /// Converts Arabic numerals (٠١٢٣٤٥٦٧٨٩) to English numerals (0123456789)
  String _convertArabicToEnglishNumbers(String input) {
    const arabicNumerals = '٠١٢٣٤٥٦٧٨٩';
    const englishNumerals = '0123456789';
    
    String result = input;
    for (int i = 0; i < arabicNumerals.length; i++) {
      result = result.replaceAll(arabicNumerals[i], englishNumerals[i]);
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AdvisoryCategoriesBloc>()
            ..add(const FetchAdvisoryCategoriesEvent()),
        ),
        BlocProvider(
          create: (context) => getIt<AdvisoryBloc>()
            ..add(const FetchRecentAdvisoriesEvent())
            ..add(const FetchPopularAdvisoriesEvent()),
        ),
      ],
      child: BlocBuilder<AdvisoryCategoriesBloc, AdvisoryCategoriesState>(
        builder: (context, state) {
          return SimpleLottieHandler(
            blocStatus: state.status,
            successWidget: _buildMainContent(context),
            isEmpty: state.status.isSuccess() && state.categories.isEmpty,
            emptyMessage: 'لا توجد أقسام متاحة',
            loadingMessage: 'جاري تحميل الأقسام...',
            onRetry: () => context.read<AdvisoryCategoriesBloc>().add(const FetchAdvisoryCategoriesEvent()),
            animationSize: 200.w,
          );
        },
      ),
    );
  }

  Widget _buildMainContent(BuildContext context) {
    String currentSearchQuery = '';
    
    return AppScaffold.custom(
      backgroundColor: Colors.white,
      appBar: AppBar(
        
        backgroundColor: Colors.white,
        title: SearchBarWidget(
          hintText: 'البحث في الفتاوى...',
          onChanged: (value) {
            currentSearchQuery = value;
          },
          onSearch: () {
            final searchQuery = currentSearchQuery.trim();
            if (searchQuery.isNotEmpty) {
              final advisoryBloc = context.read<AdvisoryBloc>();
              
              // Convert Arabic numerals to English numerals
              final convertedQuery = _convertArabicToEnglishNumbers(searchQuery);
              
              // Check if search query is a number (advisory ID)
              final advisoryId = int.tryParse(convertedQuery);
              
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => BlocProvider.value(
                    value: advisoryBloc,
                    child: SearchResultsPage(
                      searchQuery: searchQuery,
                      advisoryId: advisoryId,
                    ),
                  ),
                ),
              );
            }
          },
        ),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 16.w,
          vertical: 8.h,
        ),
        children: [
          // Subject Index Section
          SectionHeaderWidget(
            title: "الفهرس الموضوعي",
          ),

          SizedBox(height: 12.h),
          CategoriesSectionWidget(),

          SizedBox(height: 24.h),

          // Most Viewed Fatwas Section
          SectionHeaderWidget(
            title: "الفتاوى الأكثر اطلاعا",
            actionText: " الكل" ,
            onActionTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const AllFatwasPage(
                    title: "الفتاوى الأكثر اطلاعا",
                    isRecent: false,
                  ),
                ),
              );
            },
          ),
          // Popular Advisories Horizontal Scroll
          AdvisoriesSectionWidget(
            title: "الفتاوى الأكثر اطلاعا",
            isRecent: false,
          ),

          SizedBox(height: 24.h),

          // Latest Fatwas Section
          SectionHeaderWidget(
            title: "اخر الفتاوى اضافة",
            actionText: "الكل",
            onActionTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const AllFatwasPage(
                    title: "اخر الفتاوى اظافة",
                    isRecent: true,
                  ),
                ),
              );
            },
          ),

          SizedBox(height: 12.h),

          // Recent Advisories Horizontal Scroll
          AdvisoriesSectionWidget(
            title: "اخر الفتاوى اظافة",
            isRecent: true,
          ),

          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}