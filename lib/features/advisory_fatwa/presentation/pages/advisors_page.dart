import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nassan_app/core/di/app_dependencies.dart';
import 'package:nassan_app/core/shared/wdigets/AppScaffold.dart';
import 'package:nassan_app/core/shared/wdigets/ui_status_handling.dart';

import '../bloc/advisory_categories_bloc.dart';
import '../bloc/advisory_categories_event.dart';
import '../bloc/advisory_categories_state.dart';
import '../bloc/advisory_bloc.dart';
import '../bloc/advisory_events.dart';
import '../widgets/widgets.dart';

class AdvisorsPage extends StatelessWidget {
  const AdvisorsPage({super.key});

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
            animationSize: 200,
          );
        },
      ),
    );
  }

  Widget _buildMainContent(BuildContext context) {
    return AppScaffold.custom(
      appBar: AppBar(
        title: SearchBarWidget(
          hintText: 'البحث في الفتاوى...',
          onChanged: (value) {
            // TODO: Implement search functionality
          },
          onSearch: () {
            // TODO: Implement search functionality
          },
        ),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: ScreenUtil().setWidth(16),
          vertical: ScreenUtil().setHeight(8),
        ),
        children: [
          SizedBox(height: ScreenUtil().setHeight(16)),

          // Subject Index Section
          SectionHeaderWidget(
            title: "الفهرس الموضوعي",
            actionText: "الكل",
            onActionTap: () {
              // TODO: Navigate to all categories
            },
          ),

          SizedBox(height: ScreenUtil().setHeight(12)),
          CategoriesSectionWidget(),

          SizedBox(height: ScreenUtil().setHeight(24)),

          // Most Viewed Fatwas Section
          SectionHeaderWidget(
            title: "الفتاوى الأكثر اطلاعا",
            actionText: "الكل",
            onActionTap: () {
              // TODO: Navigate to most viewed fatwas
            },
          ),

          SizedBox(height: ScreenUtil().setHeight(12)),

          // Popular Advisories Horizontal Scroll
          const PopularAdvisoriesWidget(),

          SizedBox(height: ScreenUtil().setHeight(24)),

          // Latest Fatwas Section
          SectionHeaderWidget(
            title: "اخر الفتاوى اظافة",
            actionText: "الكل",
            onActionTap: () {
              // TODO: Navigate to latest fatwas
            },
          ),

          SizedBox(height: ScreenUtil().setHeight(12)),

          // Recent Advisories Horizontal Scroll
          const RecentAdvisoriesWidget(),

          SizedBox(height: ScreenUtil().setHeight(20)),
        ],
      ),
    );
  }
}