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
import '../widgets/search_advisory_card.dart';
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
    final query = _searchController.text.trim();
    if (query.isNotEmpty) {
      // Hide keyboard when search is pressed
      FocusScope.of(context).unfocus();
      
      _searchBloc.add(PerformSearch(
        query: query,
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
    
    // Automatically trigger a new search with the selected filter
    // if there's already a search query
    if (_searchController.text.trim().isNotEmpty) {
      _searchBloc.add(PerformSearch(
        query: _searchController.text.trim(),
        type: filter != 'جميع الأقسام' ? filter : null,
      ));
    }
  }

  void _showFilterBottomSheet() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
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
                      height: context.deviceValue(
                        mobile: MediaQuery.of(context).size.width < 360 ? 44.h : 48.h,
                        tablet: 52.h,
                        desktop: 56.h,
                      ),
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
                          fontSize: context.deviceValue(
                            mobile: MediaQuery.of(context).size.width < 360 ? 14.f : 16.f,
                            tablet: 16.f,
                            desktop: 18.f,
                          ),
                          color: Colors.black87,
                        ),
                        decoration: InputDecoration(
                          hintText: 'ابحث هنا...',
                          hintStyle: TextStyle(
                            fontFamily: FontFamily.tajawal,
                            fontSize: context.deviceValue(
                              mobile: MediaQuery.of(context).size.width < 360 ? 14.f : 16.f,
                              tablet: 16.f,
                              desktop: 18.f,
                            ),
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
              child: RefreshIndicator(
                onRefresh: () async {
                  if (_searchController.text.trim().isNotEmpty) {
                    _searchBloc.add(PerformSearch(
                      query: _searchController.text.trim(),
                      type: _searchBloc.state.selectedFilter != 'جميع الأقسام' 
                          ? _searchBloc.state.selectedFilter 
                          : null,
                    ));
                  }
                },
                color: AppColors.primary,
                backgroundColor: Colors.white,
                child: _buildContent(state),
              ),
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
      if (state.noResultsFound) {
        return _buildNoResultsFoundState(state.searchText);
      }
      return _buildSearchResults(state);
    }
    
    return _buildEmptyState();
  }

  Widget _buildEmptyState() {
    final hasSearchHistory = _searchBloc.state.searchHistory.isNotEmpty;
    
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Search History Section
          if (hasSearchHistory) _buildSearchHistorySection(),
          
          // Empty State Image and Text
          Container(
            height: hasSearchHistory ? 400.h : 500.h,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Empty State Image
                Image.asset(
                  Assets.images.searchEmpty.path,
                  width: context.deviceValue(
                    mobile: 180.w,
                    tablet: 260.w,
                    desktop: 340.w,
                  ),
                  height: context.deviceValue(
                    mobile: 180.h,
                    tablet: 260.h,
                    desktop: 340.h,
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
                    color: AppColors.black,
                  ),
                ),
                SizedBox(height: 8.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Text(
                    'اكتب في شريط البحث للعثور على الفتاوى، الدروس، والكتب',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: FontFamily.tajawal,
                      fontSize: 16.f,
                      color: AppColors.black.withValues(alpha: 0.7),
                    ),
                  ),
                ),
                SizedBox(height: 24.h),
                ElevatedButton.icon(
                  onPressed: () {
                    // Focus on search field when button is pressed
                    _searchFocusNode.requestFocus();
                  },
                  icon: Icon(
                    Icons.search,
                    size: 20.w,
                    color: Colors.white,
                  ),
                  label: Text(
                    'ابدأ البحث الآن',
                    style: TextStyle(
                      fontFamily: FontFamily.tajawal,
                      fontSize: context.deviceValue(
                        mobile: MediaQuery.of(context).size.width < 360 ? 13.f : 14.f,
                        tablet: 15.f,
                        desktop: 16.f,
                      ),
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.w),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _buildSearchHistorySection() {
    final history = _searchBloc.state.searchHistory;
    
    return Container(
      width: double.infinity,
      padding: context.deviceValue(
        mobile: EdgeInsets.all(16.w),
        tablet: EdgeInsets.all(20.w),
        desktop: EdgeInsets.all(24.w),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header with title and clear button
          Row(
            children: [
              Text(
                'سجل البحث',
                style: TextStyle(
                  fontFamily: FontFamily.tajawal,
                  fontSize: context.deviceValue(
                    mobile: MediaQuery.of(context).size.width < 360 ? 16.f : 18.f,
                    tablet: 20.f,
                    desktop: 22.f,
                  ),
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
              ),
              const Spacer(),
              TextButton(
                onPressed: () {
                  _searchBloc.add(const ClearSearchHistory());
                },
                child: Text(
                  'مسح الكل',
                  style: TextStyle(
                    fontFamily: FontFamily.tajawal,
                    fontSize: 14.f,
                    color: AppColors.primary,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          // Search history items
          Wrap(
            spacing: 8.w,
            runSpacing: 8.h,
            children: history.map((query) => _buildSearchHistoryItem(query)).toList(),
          ),
        ],
      ),
    );
  }
  
  Widget _buildSearchHistoryItem(String query) {
    return InkWell(
      onTap: () {
        // Set the search text and perform search
        _searchController.text = query;
        _searchBloc.add(SearchTextChanged(query));
        _searchBloc.add(PerformSearch(
          query: query,
          type: _searchBloc.state.selectedFilter != 'جميع الأقسام' 
              ? _searchBloc.state.selectedFilter 
              : null,
        ));
      },
      borderRadius: BorderRadius.circular(20.w),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: AppColors.grey.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(20.w),
          border: Border.all(
            color: AppColors.grey.withValues(alpha: 0.2),
            width: 1,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.history,
              size: 16.w,
              color: AppColors.grey,
            ),
            SizedBox(width: 8.w),
            Text(
              query,
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 14.f,
                color: AppColors.black,
              ),
            ),
            SizedBox(width: 4.w),
            InkWell(
              onTap: () {
                _searchBloc.add(RemoveFromSearchHistory(query));
              },
              borderRadius: BorderRadius.circular(12.w),
              child: Padding(
                padding: EdgeInsets.all(4.w),
                child: Icon(
                  Icons.close,
                  size: 14.w,
                  color: AppColors.grey,
                ),
              ),
            ),
          ],
        ),
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
          if (_searchBloc.state.searchText.isNotEmpty)
            Padding(
              padding: EdgeInsets.only(top: 8.h),
              child: Text(
                'نبحث عن "${_searchBloc.state.searchText}"',
                style: TextStyle(
                  fontFamily: FontFamily.tajawal,
                  fontSize: 14.f,
                  fontStyle: FontStyle.italic,
                  color: AppColors.grey.withValues(alpha: 0.7),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildErrorState(String error) {
    // Choose appropriate icon based on error message
    IconData errorIcon = Icons.error_outline;
    Color iconColor = AppColors.error;
    
    if (error.contains('اتصال') || error.contains('الإنترنت')) {
      errorIcon = Icons.wifi_off;
      iconColor = AppColors.error;
    } else if (error.contains('لم يتم العثور')) {
      errorIcon = Icons.search_off;
      iconColor = AppColors.grey;
    } else if (error.contains('كلمة بحث أطول')) {
      errorIcon = Icons.text_fields;
      iconColor = AppColors.primary;
    }
    
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            errorIcon,
            size: 64.w,
            color: iconColor,
          ),
          SizedBox(height: 16.h),
          Text(
            _getErrorTitle(error),
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: context.deviceValue(
                mobile: MediaQuery.of(context).size.width < 360 ? 16.f : 18.f,
                tablet: 20.f,
                desktop: 22.f,
              ),
              fontWeight: FontWeight.bold,
              color: iconColor,
            ),
          ),
          SizedBox(height: 8.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Text(
              error,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: context.deviceValue(
                  mobile: MediaQuery.of(context).size.width < 360 ? 13.f : 14.f,
                  tablet: 15.f,
                  desktop: 16.f,
                ),
                color: AppColors.grey,
              ),
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
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.w),
              ),
            ),
            child: Text(
              'إعادة المحاولة',
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 14.f,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
  
  String _getErrorTitle(String error) {
    if (error.contains('اتصال') || error.contains('الإنترنت')) {
      return 'مشكلة في الاتصال';
    } else if (error.contains('لم يتم العثور')) {
      return 'لم يتم العثور على نتائج';
    } else if (error.contains('كلمة بحث أطول')) {
      return 'كلمة البحث قصيرة';
    } else if (error.contains('الخادم')) {
      return 'خطأ في الخادم';
    }
    return 'حدث خطأ في البحث';
  }

  Widget _buildNoResultsFoundState(String searchQuery) {
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Text(
              'لم نجد نتائج لـ "$searchQuery"',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: 14.f,
                color: AppColors.grey.withValues(alpha: 0.7),
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Text(
            'يمكنك تجربة:',
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: context.deviceValue(
                mobile: 15.f,
                tablet: 16.f,
                desktop: 18.f,
              ),
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),
          SizedBox(height: 8.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSearchTip('استخدام كلمات مفتاحية مختلفة'),
                _buildSearchTip('تجنب الأخطاء الإملائية'),
                _buildSearchTip('اختيار قسم محدد للبحث فيه'),
              ],
            ),
          ),
        ],
      ),
    );
  }
  
  Widget _buildSearchTip(String tip) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Row(
        children: [
          Icon(
            Icons.tips_and_updates_outlined,
            size: 16.w,
            color: AppColors.primary,
          ),
          SizedBox(width: 8.w),
          Expanded(
            child: Text(
              tip,
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: context.deviceValue(
                  mobile: MediaQuery.of(context).size.width < 360 ? 13.f : 14.f,
                  tablet: 14.f,
                  desktop: 16.f,
                ),
                color: AppColors.grey,
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
    
    // Check if there are any results - this should be handled by noResultsFound flag now
    if (articles.isEmpty && sounds.isEmpty && advisories.isEmpty) {
      return _buildNoResultsFoundState(state.searchText);
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
                  fontSize: context.deviceValue(
                    mobile: MediaQuery.of(context).size.width < 360 ? 14.f : 16.f,
                    tablet: 16.f,
                    desktop: 18.f,
                  ),
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
    
    // Advisories section
    if (index < currentIndex + advisories.length) {
      final advisory = advisories[index - currentIndex];
      return SearchAdvisoryCard(
        advisory: advisory,
        onTap: () => _onAdvisoryTap(advisory),
      );
    }
    
    return const SizedBox.shrink();
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

  void _onAdvisoryTap(advisory) {
    // Navigate to advisory viewer
    SearchNavigationService.navigateToAdvisory(context, advisory.id);
  }

  Widget _buildFilterBottomSheet({
    required List<String> filterOptions,
    required String selectedFilter,
    required Function(String) onFilterSelected,
  }) {
    // Get counts for each filter category if search results exist
    Map<String, int> categoryCounts = {
      'قسم المقالات': 0,
      'قسم الفتاوى': 0,
      'قسم الصوتيات': 0,
    };
    
    int totalCount = 0;
    
    if (_searchBloc.state.searchResults != null) {
      final results = _searchBloc.state.searchResults!;
      categoryCounts['قسم المقالات'] = results.data.articles.length;
      categoryCounts['قسم الفتاوى'] = results.data.advisories.length;
      categoryCounts['قسم الصوتيات'] = results.data.sounds.length;
      
      totalCount = categoryCounts.values.fold(0, (sum, count) => sum + count);
    }
    
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.w),
          topRight: Radius.circular(20.w),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
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
            child: Row(
              children: [
                Text(
                  'اختر القسم',
                  style: TextStyle(
                    fontFamily: FontFamily.tajawal,
                    fontSize: context.deviceValue(
                      mobile: MediaQuery.of(context).size.width < 360 ? 18.f : 20.f,
                      tablet: 22.f,
                      desktop: 24.f,
                    ),
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                const Spacer(),
                if (totalCount > 0)
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 12.w,
                      vertical: 4.h,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.primary.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(16.w),
                    ),
                    child: Text(
                      '$totalCount نتيجة',
                      style: TextStyle(
                        fontFamily: FontFamily.tajawal,
                        fontSize: context.deviceValue(
                          mobile: 13.f,
                          tablet: 14.f,
                          desktop: 16.f,
                        ),
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary,
                      ),
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: 20.h),
          // Filter Options
          ...filterOptions.map((filter) {
            final isSelected = filter == selectedFilter;
            final count = filter == 'جميع الأقسام' ? totalCount : categoryCounts[filter] ?? 0;
            final isDisabled = filter != 'جميع الأقسام' && count == 0 && _searchBloc.state.searchResults != null;
            
            return Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 4.h,
              ),
              child: InkWell(
                onTap: isDisabled ? null : () => onFilterSelected(filter),
                borderRadius: BorderRadius.circular(12.w),
                child: Opacity(
                  opacity: isDisabled ? 0.5 : 1.0,
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
                              fontSize: context.deviceValue(
                                mobile: MediaQuery.of(context).size.width < 360 ? 14.f : 16.f,
                                tablet: 16.f,
                                desktop: 18.f,
                              ),
                              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                              color: isSelected ? AppColors.primary : Colors.black87,
                            ),
                          ),
                        ),
                        if (_searchBloc.state.searchResults != null)
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 8.w,
                              vertical: 2.h,
                            ),
                            decoration: BoxDecoration(
                              color: isSelected 
                                  ? AppColors.primary 
                                  : AppColors.grey.withValues(alpha: 0.1),
                              borderRadius: BorderRadius.circular(12.w),
                            ),
                            child: Text(
                              '$count',
                              style: TextStyle(
                                fontFamily: FontFamily.tajawal,
                                fontSize: 12.f,
                                fontWeight: FontWeight.bold,
                                color: isSelected ? Colors.white : AppColors.grey,
                              ),
                            ),
                          ),
                        if (isSelected && _searchBloc.state.searchResults == null)
                          Icon(
                            Icons.radio_button_checked,
                            color: AppColors.primary,
                            size: 20.w,
                          ),
                      ],
                    ),
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
