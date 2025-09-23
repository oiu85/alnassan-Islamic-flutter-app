import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nassan_app/core/responsive/screen_util_res.dart';
import 'package:nassan_app/config/appconfig/app_colors.dart';
import 'package:nassan_app/core/responsive/device_type.dart';
import 'package:nassan_app/gen/assets.gen.dart';
import 'package:nassan_app/gen/fonts.gen.dart';
import '../bloc/global_search_bloc.dart';
import '../bloc/global_search_event.dart';
import '../bloc/global_search_state.dart';
import '../widgets/search_article_card.dart';
import '../widgets/search_sound_card.dart';
import '../services/search_navigation_service.dart';
import '../../data/repository/global_search_repository_impl.dart';
import '../../../../core/network/network_client.dart';

class GlobalSearchPage extends StatefulWidget {
  const GlobalSearchPage({super.key});

  @override
  State<GlobalSearchPage> createState() => _GlobalSearchPageState();
}

class _GlobalSearchPageState extends State<GlobalSearchPage> {
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();
  late final GlobalSearchBloc _searchBloc;


  @override
  void initState() {
    super.initState();
    _searchBloc = GlobalSearchBloc(GlobalSearchRepositoryImpl(NetworkClient()))..startKeyboardMonitoring();
    _searchController.addListener(_onSearchChanged);
    _searchFocusNode.addListener(_onFocusChanged);
    
    // Ensure the search field doesn't auto-focus
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _searchFocusNode.unfocus();
    });
  }

  @override
  void dispose() {
    _searchController.removeListener(_onSearchChanged);
    _searchFocusNode.removeListener(_onFocusChanged);
    _searchController.dispose();
    _searchFocusNode.dispose();
    _searchBloc.close();
    super.dispose();
  }

  void _onSearchChanged() {
    if (!mounted) return;
    _searchBloc.add(SearchTextChanged(_searchController.text));
  }

  void _onSearchPressed() {
    if (_searchController.text.trim().isNotEmpty) {
      _searchBloc.add(PerformSearch(
        query: _searchController.text.trim(),
        type: _searchBloc.state.selectedFilter != 'جميع الأقسام' 
            ? _searchBloc.state.selectedFilter 
            : null,
      ));
    }
  }

  void _onFocusChanged() {
    if (!mounted) return;
    
    if (_searchFocusNode.hasFocus) {
      _searchBloc.add(const SearchFieldFocused());
    } else {
      _searchBloc.add(const SearchFieldUnfocused());
    }
  }

  void _onFilterPressed() {
    _showFilterBottomSheet();
  }

  void _onFilterSelected(String filter) {
    _searchBloc.add(FilterChanged(filter));
    Navigator.pop(context); // Close the bottom sheet
  }

  void _showFilterBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) => _buildFilterBottomSheet(
        filterOptions: _searchBloc.filterOptions,
        selectedFilter: _searchBloc.state.selectedFilter,
        onFilterSelected: _onFilterSelected,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _searchBloc,
        child: BlocListener<GlobalSearchBloc, GlobalSearchState>(
          listener: (context, state) {
            // Clear text controller when search state is cleared
            if (state.searchText.isEmpty && _searchController.text.isNotEmpty) {
              _searchController.clear();
            }
          },
        child: BlocBuilder<GlobalSearchBloc, GlobalSearchState>(
          builder: (context, state) {
            return PopScope(
              onPopInvoked: (didPop) {
                // Only dismiss keyboard when actually navigating away
                if (didPop) {
                  _searchBloc.add(const PageDeactivated());
                }
              },
              child: Scaffold(
                backgroundColor: Colors.white,
                body: GestureDetector(
                  onTap: () {
                    // Only dismiss keyboard when tapping outside the search field
                    if (_searchFocusNode.hasFocus) {
                      _searchFocusNode.unfocus();
                    }
                  },
                  child: SafeArea(
                    child: Column(
                      children: [
            // Search Bar and Filter Button
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 16.w,
                vertical: 12.h,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.1),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  // Filter Button
                  Container(
                    height: 48.h,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(12.w),
                    ),
                    child: InkWell(
                        onTap: _onFilterPressed,
                        borderRadius: BorderRadius.circular(12.w),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.w),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.filter_list,
                              color: Colors.white,
                              size: 20.w,
                            ),
                            SizedBox(width: 4.w),
                            // Text(
                            //   _selectedFilter,
                            //   style: TextStyle(
                            //     fontFamily: FontFamily.tajawal,
                            //     fontSize: _fontSize(8),
                            //     color: Colors.white,
                            //     fontWeight: FontWeight.w600,
                            //   ),
                            // ),
                            // SizedBox(width: _width(4)),
                            // Icon(
                            //   Icons.keyboard_arrow_down,
                            //   color: Colors.white,
                            //   size: _width(16),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16.w),
                  // Search Bar
                  Expanded(
                    child: Container(
                      height: 48.h,
                      decoration: BoxDecoration(
                        color: AppColors.grey.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(60.w) ,
                        border: Border.all(
                          color: AppColors.grey.withValues(alpha: 0.3),
                          width: 1,
                        ),
                      ),
                      child: TextField(
                        controller: _searchController,
                        focusNode: _searchFocusNode,
                        textDirection: TextDirection.rtl,
                        autofocus: false,
                        enableInteractiveSelection: true,
                        style: TextStyle(
                          fontFamily: FontFamily.tajawal,
                          fontSize: 16.f,
                          color: Colors.black87,
                        ),
                        decoration: InputDecoration(
                          hintText: 'ابحث هنا...',
                          hintStyle: TextStyle(
                            fontFamily: FontFamily.tajawal,
                            fontSize: 16.f,
                            color: AppColors.grey,
                          ),
                          prefixIcon: IconButton(
                            icon: Icon(
                              Icons.search,
                              color: AppColors.primary,
                              size: 24.w,
                            ),
                            onPressed: _onSearchPressed,
                          ),
                          suffixIcon: _searchController.text.isNotEmpty
                              ? IconButton(
                                  icon: Icon(
                                    Icons.clear,
                                    color: AppColors.grey,
                                    size: 20.w,
                                  ),
                                  onPressed: () {
                                    _searchController.clear();
                                  },
                                )
                              : null,
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.w,
                            vertical: 12.h,
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
            // Content Area
            Expanded(
              child: _buildContent(state),
            ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildContent(GlobalSearchState state) {
    if (state.isSearchEmpty) {
      return _buildEmptyState();
    }
    
    if (state.isLoading) {
      return _buildLoadingState();
    }
    
    if (state.errorMessage != null) {
      return _buildErrorState(state.errorMessage!);
    }
    
    if (state.searchResults != null) {
      return _buildSearchResults(state);
    }
    
    return _buildEmptyState();
  }

  Widget _buildEmptyState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Empty State Image
          Image.asset(
            Assets.images.searchEmpty.path,
            width: context.deviceValue(
              mobile: 200.w,
              tablet: 300.w,
              desktop: 400.w,
            ),
            height: context.deviceValue(
              mobile: 200.h,
              tablet: 300.h,
              desktop: 400.h,
            ),
            fit: BoxFit.contain,
          ),
          SizedBox(height: 24.h),
          // Empty State Text
          Text(
            'ابدأ البحث عن المحتوى',
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: 20.f,
              fontWeight: FontWeight.bold,
              color: AppColors.grey,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'اكتب في شريط البحث للعثور على الفتاوى، الدروس، والكتب',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: 16.f,
              color: AppColors.grey.withValues(alpha: 0.7),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoadingState() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
          ),
          SizedBox(height: 16.h),
          Text(
            'جاري البحث...',
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: 16.f,
              color: AppColors.grey,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorState(String error) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            size: 64.w,
            color: AppColors.error,
          ),
          SizedBox(height: 16.h),
          Text(
            'حدث خطأ في البحث',
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: 18.f,
              fontWeight: FontWeight.bold,
              color: AppColors.error,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            error,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: 14.f,
              color: AppColors.grey,
            ),
          ),
          SizedBox(height: 16.h),
          ElevatedButton(
            onPressed: () {
              if (_searchController.text.trim().isNotEmpty) {
                _searchBloc.add(PerformSearch(
                  query: _searchController.text.trim(),
                  type: _searchBloc.state.selectedFilter != 'جميع الأقسام' 
                      ? _searchBloc.state.selectedFilter 
                      : null,
                ));
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.primary,
              foregroundColor: Colors.white,
            ),
            child: Text(
              'إعادة المحاولة',
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 14.f,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchResults(GlobalSearchState state) {
    final results = state.searchResults!;
    final articles = results.data.articles;
    final sounds = results.data.sounds;
    final advisories = results.data.advisories;
    
    // Check if there are any results
    if (articles.isEmpty && sounds.isEmpty && advisories.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.search_off,
              size: 64.w,
              color: AppColors.grey.withValues(alpha: 0.5),
            ),
            SizedBox(height: 16.h),
            Text(
              'لا توجد نتائج',
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 18.f,
                fontWeight: FontWeight.bold,
                color: AppColors.grey,
              ),
            ),
            SizedBox(height: 8.h),
            Text(
              'لم نجد نتائج لـ "${state.searchText}"',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 14.f,
                color: AppColors.grey.withValues(alpha: 0.7),
              ),
            ),
          ],
        ),
      );
    }
    
    return Column(
      children: [
        // Search info header
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 16.w,
            vertical: 12.h,
          ),
          child: Row(
            children: [
              Text(
                'نتائج البحث لـ: "${state.searchText}"',
                style: TextStyle(
                  fontFamily: FontFamily.tajawal,
                  fontSize: 16.f,
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
              ),
              const Spacer(),
              if (state.selectedFilter != 'جميع الأقسام')
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 8.w,
                    vertical: 4.h,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.primary.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(12.w),
                  ),
                  child: Text(
                    state.selectedFilter,
                    style: TextStyle(
                      fontFamily: FontFamily.tajawal,
                      fontSize: 12.f,
                      color: AppColors.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
            ],
          ),
        ),
        // Results list
        Expanded(
          child: ListView.builder(
            itemCount: _getTotalItemCount(articles, sounds, advisories) + 
                      (state.hasMoreResults ? 1 : 0),
            itemBuilder: (context, index) {
              // Load more button
              if (index == _getTotalItemCount(articles, sounds, advisories)) {
                return _buildLoadMoreButton(state);
              }
              
              return _buildResultItem(
                context,
                index,
                articles,
                sounds,
                advisories,
              );
            },
          ),
        ),
      ],
    );
  }

  int _getTotalItemCount(List articles, List sounds, List advisories) {
    return articles.length + sounds.length + advisories.length;
  }

  Widget _buildResultItem(
    BuildContext context,
    int index,
    List articles,
    List sounds,
    List advisories,
  ) {
    int currentIndex = 0;
    
    // Articles section
    if (index < articles.length) {
      final article = articles[index];
      return SearchArticleCard(
        article: article,
        onTap: () => _onArticleTap(article),
      );
    }
    currentIndex += articles.length;
    
    // Sounds section
    if (index < currentIndex + sounds.length) {
      final sound = sounds[index - currentIndex];
      return SearchSoundCard(
        sound: sound,
        onTap: () => _onSoundTap(sound),
      );
    }
    currentIndex += sounds.length;
    
    // Advisories section (placeholder for now)
    if (index < currentIndex + advisories.length) {
      return _buildAdvisoryPlaceholder();
    }
    
    return const SizedBox.shrink();
  }

  Widget _buildAdvisoryPlaceholder() {
    return Card(
      margin: EdgeInsets.symmetric(
        horizontal: 16.w,
        vertical: 8.h,
      ),
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Center(
          child: Text(
            'قريباً يمكنك البحث في هذه القسم',
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: 16.f,
              color: AppColors.grey,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoadMoreButton(GlobalSearchState state) {
    if (!state.hasMoreResults) return const SizedBox.shrink();
    
    return Container(
      padding: EdgeInsets.all(16.w),
      child: state.isLoadingMore
          ? Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(AppColors.primary),
              ),
            )
          : ElevatedButton(
              onPressed: () {
                _searchBloc.add(const LoadMoreResults());
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(
                  horizontal: 32.w,
                  vertical: 12.h,
                ),
              ),
              child: Text(
                'تحميل المزيد',
                style: TextStyle(
                  fontFamily: FontFamily.tajawal,
                  fontSize: 14.f,
                ),
              ),
            ),
    );
  }

  void _onArticleTap(article) {
    // Navigate to article detail page
    SearchNavigationService.navigateToArticle(context, article.id);
  }

  void _onSoundTap(sound) {
    // Navigate to sound player
    SearchNavigationService.navigateToSound(context, sound.id);
  }

  Widget _buildFilterBottomSheet({
    required List<String> filterOptions,
    required String selectedFilter,
    required Function(String) onFilterSelected,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.w),
          topRight: Radius.circular(20.w),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Handle bar
          Container(
            margin: EdgeInsets.only(top: 12.h),
            width: 40.w,
            height: 4.h,
            decoration: BoxDecoration(
              color: AppColors.grey.withValues(alpha: 0.3),
              borderRadius: BorderRadius.circular(2.w),
            ),
          ),
          SizedBox(height: 20.h),
          // Title
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Text(
              'اختر القسم',
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 20.f,  
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
          SizedBox(height: 20.h),
          // Filter Options
          ...filterOptions.map((filter) {
            final isSelected = filter == selectedFilter;
            return Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 4.h,
              ),
              child: InkWell(
                onTap: () => onFilterSelected(filter),
                borderRadius: BorderRadius.circular(12.w),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.w,
                    vertical: 16.h,
                  ),
                  decoration: BoxDecoration(
                    color: isSelected 
                        ? AppColors.primary.withValues(alpha: 0.1)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(12.w),
                    border: Border.all(
                      color: isSelected 
                          ? AppColors.primary
                          : AppColors.grey.withValues(alpha: 0.2),
                      width: isSelected ? 2 : 1,
                    ),
                  ),
                  child: Row(
                    children: [
                      if (isSelected)
                        Icon(
                          Icons.check_circle,
                          color: AppColors.primary,
                          size: 24.w,
                        ),
                      if (isSelected) SizedBox(width: 12.w),
                      Expanded(
                        child: Text(
                          filter,
                          style: TextStyle(
                            fontFamily: FontFamily.tajawal,
                            fontSize: 16.f,
                            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                            color: isSelected ? AppColors.primary : Colors.black87,
                          ),
                        ),
                      ),
                      if (isSelected)
                        Icon(
                          Icons.radio_button_checked,
                          color: AppColors.primary,
                          size: 20.w,
                        ),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
          SizedBox(height: 20.h),
          // Bottom padding for safe area
          SizedBox(height: MediaQuery.of(context).padding.bottom + 20.h),
        ],
      ),
    );
  }
}
