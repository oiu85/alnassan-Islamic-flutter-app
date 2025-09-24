import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
import 'package:nassan_app/core/di/app_dependencies.dart';
import 'package:nassan_app/core/shared/wdigets/AppScaffold.dart';
import 'package:nassan_app/core/shared/wdigets/ui_status_handling.dart';
import 'package:nassan_app/features/advisory_fatwa/presentation/pages/advisory_viewer_page.dart';
import 'package:nassan_app/features/advisory_fatwa/presentation/pages/fatwa_list_page.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import 'package:nassan_app/core/responsive/device_type.dart';

import '../bloc/category_details_bloc.dart';
import '../bloc/category_details_event.dart';
import '../bloc/category_details_state.dart';
import '../widgets/widgets.dart';
import '../widgets/advisory_fatwa_card_widget.dart';

class CategoryDetailsPage extends StatefulWidget {
  final int categoryId;
  final String categoryTitle;

  const CategoryDetailsPage({
    super.key,
    required this.categoryId,
    required this.categoryTitle,
  });

  @override
  State<CategoryDetailsPage> createState() => _CategoryDetailsPageState();
}

class _CategoryDetailsPageState extends State<CategoryDetailsPage> {
  final int _currentPage = 1;
  final int _itemsPerPage = 10;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<CategoryDetailsBloc>()
        ..add(FetchCategoryDetailsEvent(
          categoryId: widget.categoryId,
          childrenPerPage: _itemsPerPage,
          childrenPage: _currentPage,
        )),
      child: BlocBuilder<CategoryDetailsBloc, CategoryDetailsState>(
        builder: (context, state) {
          return SimpleLottieHandler(
            blocStatus: state.status,
            successWidget: _buildMainContent(context, state),
            isEmpty: state.status.isSuccess() && state.childCategories.isEmpty,
            emptyMessage: 'لا توجد أقسام فرعية متاحة',
            loadingMessage: 'جاري تحميل الأقسام الفرعية...',
            onRetry: () => context.read<CategoryDetailsBloc>().add(
                  FetchCategoryDetailsEvent(
                    categoryId: widget.categoryId,
                    childrenPerPage: _itemsPerPage,
                    childrenPage: _currentPage,
                  ),
                ),
            animationSize: 200.w,
          );
        },
      ),
    );
  }

  Widget _buildMainContent(BuildContext context, CategoryDetailsState state) {
    final parentCategory = state.parentCategory;
    final childCategories = state.childCategories;

    return AppScaffold.custom(
      appBar: AppBar(
        title: Text(
          parentCategory?.catTitle ?? widget.categoryTitle,
          style: TextStyle(
            fontSize: 18.f,
            fontFamily: FontFamily.tajawal,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Column(
        children: [
          // Pagination filter
          BlocBuilder<CategoryDetailsBloc, CategoryDetailsState>(
            builder: (context, state) {
              return context.read<CategoryDetailsBloc>().buildFilterButton(
                context: context,
                categoryId: widget.categoryId,
                childrenPerPage: _itemsPerPage,
              );
            },
          ),
          
          // Main content
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
              itemCount: childCategories.length,
              itemBuilder: (context, index) {
                final childCategory = childCategories[index];
                return _buildCategorySection(context, childCategory);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCategorySection(BuildContext context, dynamic childCategory) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeaderWidget(
          title: childCategory.catTitle ?? 'قسم فرعي',
          actionText: "الكل",
          onActionTap: () {
            if (childCategory.catId != null) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => FatwaListPage(
                    categoryId: childCategory.catId!,
                    categoryTitle: childCategory.catTitle ?? 'الفتاوى',
                  ),
                ),
              );
            }
          },
        ),
        SizedBox(height: 12.h),
        
        // Fatwas for this subcategory
        if (childCategory.fatwas != null && childCategory.fatwas.isNotEmpty)
          LayoutBuilder(
            builder: (context, constraints) {
              // Calculate responsive card width based on screen width
              final double cardWidth = constraints.maxWidth > 600 
                  ? constraints.maxWidth * 0.4 // 40% of width for larger screens
                  : constraints.maxWidth * 0.75; // 75% of width for smaller screens
              
              return Container(
                // Use a dynamic height that adjusts to content
                height: context.deviceValue(
                  mobile: 400.h,  // More height on mobile for expanded text
                  tablet: 380.h,  // Medium height on tablets
                  desktop: 350.h, // Less height needed on desktop due to width
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: childCategory.fatwas.length,
                  itemBuilder: (context, index) {
                    final fatwa = childCategory.fatwas[index];
                    return Padding(
                      padding: EdgeInsets.only(right: index == 0 ? 0 : 12.w),
                  child: AdvisoryFatwaCardWidget(
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
                  ),
                    );
                  },
                ),
              );
            },
          )
        else
          Center(
            child: Text(
              'لا توجد فتاوى في هذا القسم',
              style: TextStyle(
                fontSize: 14.f,
                fontFamily: FontFamily.tajawal,
                color: Colors.grey,
              ),
            ),
          ),
        
        SizedBox(height: 24.h),
      ],
    );
  }
}