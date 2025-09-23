import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:nassan_app/core/responsive/device_type.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import '../../../../config/appconfig/app_colors.dart';
import '../../../../gen/assets.gen.dart';
import '../bloc/advisory_categories_bloc.dart';
import '../bloc/advisory_categories_event.dart';
import '../bloc/advisory_categories_state.dart';

class CategoriesSectionWidget extends StatefulWidget {
  const CategoriesSectionWidget({super.key});

  @override
  State<CategoriesSectionWidget> createState() => _CategoriesSectionWidgetState();
}

class _CategoriesSectionWidgetState extends State<CategoriesSectionWidget> {
  late ScrollController _scrollController;
  bool _scrollListenerAdded = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll(BuildContext context) {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent * 0.8) {
      // Only load more if we haven't reached the max and not currently loading
      final bloc = context.read<AdvisoryCategoriesBloc>();
      final state = bloc.state;
      
      print('Scroll triggered - hasReachedMax: ${state.hasReachedMax}, isLoading: ${state.status.isLoading()}, isLoadingMore: ${state.status.isLoadingMore()}, currentPage: ${state.currentPage}');
      
      if (!state.hasReachedMax && !state.status.isLoading() && !state.status.isLoadingMore()) {
        print('Loading more categories...');
        bloc.add(const LoadMoreAdvisoryCategoriesEvent());
      } else {
        print('Skipping load more - conditions not met');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // Add scroll listener after bloc is available
    if (!_scrollListenerAdded) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _scrollController.addListener(() => _onScroll(context));
        _scrollListenerAdded = true;
      });
    }

    return BlocBuilder<AdvisoryCategoriesBloc, AdvisoryCategoriesState>(
      builder: (context, state) {
        return _buildCategoriesSection(context, state);
      },
    );
  }

  Widget _buildCategoriesSection(BuildContext context, AdvisoryCategoriesState state) {
    if (state.status.isLoading()) {
      return _buildLoadingState(context);
    }

    if (state.status.isFail()) {
      return _buildErrorState(context);
    }

    if (state.categories.isEmpty) {
      return _buildEmptyState(context);
    }

    return _buildCategoriesList(context, state);
  }

  Widget _buildLoadingState(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(
        context.deviceValue(mobile: 100, tablet: 120, desktop: 140),
      ),
      child: Center(
        child: Lottie.asset(
          Assets.lottie.loading,
          height: ScreenUtil().setHeight(60),
          width: ScreenUtil().setWidth(60),
          fit: BoxFit.contain,
          repeat: true,
        ),
      ),
    );
  }

  Widget _buildErrorState(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(
        context.deviceValue(mobile: 100, tablet: 120, desktop: 140),
      ),
      child: Center(
        child: Lottie.asset(
          Assets.lottie.notFound,
          height: ScreenUtil().setHeight(60),
          width: ScreenUtil().setWidth(60),
          fit: BoxFit.contain,
          repeat: true,
        ),
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    return Container(
      height: ScreenUtil().setHeight(
        context.deviceValue(mobile: 100, tablet: 120, desktop: 140),
      ),
      child: Center(
        child: Lottie.asset(
          Assets.lottie.noData,
          height: ScreenUtil().setHeight(60),
          width: ScreenUtil().setWidth(60),
          fit: BoxFit.contain,
          repeat: true,
        ),
      ),
    );
  }

  Widget _buildCategoriesList(BuildContext context, AdvisoryCategoriesState state) {
    return SingleChildScrollView(
      controller: _scrollController,
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          ...state.categories.map((category) {
            return _buildCategoryCard(context, category);
          }).toList(),
          if (state.status.isLoadingMore() && state.categories.isNotEmpty)
            _buildLoadingMoreIndicator(context),
        ],
      ),
    );
  }

  Widget _buildCategoryCard(BuildContext context, category) {
    return Container(
      margin: EdgeInsets.only(left: ScreenUtil().setWidth(8)),
      height: ScreenUtil().setHeight(
        context.deviceValue(mobile: 100, tablet: 120, desktop: 140),
      ),
      width: ScreenUtil().setWidth(
        context.deviceValue(mobile: 120, tablet: 140, desktop: 160),
      ),
      child: Card(
        elevation: 0,
        color: AppColors.secondary.withOpacity(0.8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: InkWell(
          onTap: () {
            // TODO: Navigate to category details or fatwas
          },
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            clipBehavior: Clip.antiAlias,
            children: [
              Positioned(
                top: -5,
                right: -8,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(180),
                  ),
                  child: Image.asset(
                    Assets.images.circulerZh.path,
                    width: ScreenUtil().setWidth(40),
                    height: ScreenUtil().setHeight(40),
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(-1.2, 1.3),
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(180),
                  ),
                  child: Image.asset(
                    Assets.images.circulerZh.path,
                    width: ScreenUtil().setWidth(40),
                    height: ScreenUtil().setHeight(40),
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(-0.5, 0.2),
                child: Padding(
                  padding: EdgeInsets.all(ScreenUtil().setWidth(8)),
                  child: Text(
                    category.catTitle ?? 'قسم',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: FontFamily.tajawal,
                      fontSize: ScreenUtil().setSp(
                        context.deviceValue(
                          mobile: 12.0,
                          tablet: 14.0,
                          desktop: 16.0,
                        ),
                      ),
                    ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLoadingMoreIndicator(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: ScreenUtil().setWidth(8)),
      height: ScreenUtil().setHeight(
        context.deviceValue(mobile: 100, tablet: 120, desktop: 140),
      ),
      width: ScreenUtil().setWidth(60),
      child: Center(
        child: Lottie.asset(
          Assets.lottie.loading,
          height: ScreenUtil().setHeight(40),
          width: ScreenUtil().setWidth(40),
          fit: BoxFit.contain,
          repeat: true,
        ),
      ),
    );
  }
}
