import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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

  // Helper methods for responsive sizing
  double _fontSize(double size) => ScreenUtil().setSp(size);

  double _width(double size) => ScreenUtil().setWidth(size);

  double _height(double size) => ScreenUtil().setHeight(size);

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
                horizontal: _width(16),
                vertical: _height(12),
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
                    height: _height(48),
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(_width(12)),
                    ),
                    child: InkWell(
                      onTap: _onFilterPressed,
                      borderRadius: BorderRadius.circular(_width(12)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: _width(12)),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              Icons.filter_list,
                              color: Colors.white,
                              size: _width(20),
                            ),
                            SizedBox(width: _width(4)),
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
                  SizedBox(width: _width(16)),
                  // Search Bar
                  Expanded(
                    child: Container(
                      height: _height(48),
                      decoration: BoxDecoration(
                        color: AppColors.grey.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(_width(60)),
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
                          fontSize: _fontSize(16),
                          color: Colors.black87,
                        ),
                        decoration: InputDecoration(
                          hintText: 'ابحث هنا...',
                          hintStyle: TextStyle(
                            fontFamily: FontFamily.tajawal,
                            fontSize: _fontSize(16),
                            color: AppColors.grey,
                          ),
                          prefixIcon: IconButton(
                            icon: Icon(
                              Icons.search,
                              color: AppColors.primary,
                              size: _width(24),
                            ),
                            onPressed: _onSearchPressed,
                          ),
                          suffixIcon: _searchController.text.isNotEmpty
                              ? IconButton(
                                  icon: Icon(
                                    Icons.clear,
                                    color: AppColors.grey,
                                    size: _width(20),
                                  ),
                                  onPressed: () {
                                    _searchController.clear();
                                  },
                                )
                              : null,
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: _width(16),
                            vertical: _height(12),
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
              mobile: _width(200),
              tablet: _width(300),
              desktop: _width(400),
            ),
            height: context.deviceValue(
              mobile: _height(200),
              tablet: _height(300),
              desktop: _height(400),
            ),
            fit: BoxFit.contain,
          ),
          SizedBox(height: _height(24)),
          // Empty State Text
          Text(
            'ابدأ البحث عن المحتوى',
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: _fontSize(20),
              fontWeight: FontWeight.bold,
              color: AppColors.grey,
            ),
          ),
          SizedBox(height: _height(8)),
          Text(
            'اكتب في شريط البحث للعثور على الفتاوى، الدروس، والكتب',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: _fontSize(16),
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
          SizedBox(height: _height(16)),
          Text(
            'جاري البحث...',
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: _fontSize(16),
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
            size: _width(64),
            color: AppColors.error,
          ),
          SizedBox(height: _height(16)),
          Text(
            'حدث خطأ في البحث',
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: _fontSize(18),
              fontWeight: FontWeight.bold,
              color: AppColors.error,
            ),
          ),
          SizedBox(height: _height(8)),
          Text(
            error,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: _fontSize(14),
              color: AppColors.grey,
            ),
          ),
          SizedBox(height: _height(16)),
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
                fontSize: _fontSize(14),
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
              size: _width(64),
              color: AppColors.grey.withValues(alpha: 0.5),
            ),
            SizedBox(height: _height(16)),
            Text(
              'لا توجد نتائج',
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: _fontSize(18),
                fontWeight: FontWeight.bold,
                color: AppColors.grey,
              ),
            ),
            SizedBox(height: _height(8)),
            Text(
              'لم نجد نتائج لـ "${state.searchText}"',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: _fontSize(14),
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
            horizontal: _width(16),
            vertical: _height(12),
          ),
          child: Row(
            children: [
              Text(
                'نتائج البحث لـ: "${state.searchText}"',
                style: TextStyle(
                  fontFamily: FontFamily.tajawal,
                  fontSize: _fontSize(16),
                  fontWeight: FontWeight.bold,
                  color: AppColors.black,
                ),
              ),
              const Spacer(),
              if (state.selectedFilter != 'جميع الأقسام')
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: _width(8),
                    vertical: _height(4),
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.primary.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(_width(12)),
                  ),
                  child: Text(
                    state.selectedFilter,
                    style: TextStyle(
                      fontFamily: FontFamily.tajawal,
                      fontSize: _fontSize(12),
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
        horizontal: ScreenUtil().setWidth(16),
        vertical: ScreenUtil().setHeight(8),
      ),
      child: Padding(
        padding: EdgeInsets.all(ScreenUtil().setWidth(16)),
        child: Center(
          child: Text(
            'قريباً يمكنك البحث في هذه القسم',
            style: TextStyle(
              fontFamily: FontFamily.tajawal,
              fontSize: ScreenUtil().setSp(16),
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
      padding: EdgeInsets.all(ScreenUtil().setWidth(16)),
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
                  horizontal: ScreenUtil().setWidth(32),
                  vertical: ScreenUtil().setHeight(12),
                ),
              ),
              child: Text(
                'تحميل المزيد',
                style: TextStyle(
                  fontFamily: FontFamily.tajawal,
                  fontSize: ScreenUtil().setSp(14),
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
          topLeft: Radius.circular(_width(20)),
          topRight: Radius.circular(_width(20)),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Handle bar
          Container(
            margin: EdgeInsets.only(top: _height(12)),
            width: _width(40),
            height: _height(4),
            decoration: BoxDecoration(
              color: AppColors.grey.withValues(alpha: 0.3),
              borderRadius: BorderRadius.circular(_width(2)),
            ),
          ),
          SizedBox(height: _height(20)),
          // Title
          Padding(
            padding: EdgeInsets.symmetric(horizontal: _width(20)),
            child: Text(
              'اختر القسم',
              style: TextStyle(
                fontFamily: FontFamily.tajawal,
                fontSize: _fontSize(20),
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
          SizedBox(height: _height(20)),
          // Filter Options
          ...filterOptions.map((filter) {
            final isSelected = filter == selectedFilter;
            return Container(
              margin: EdgeInsets.symmetric(
                horizontal: _width(20),
                vertical: _height(4),
              ),
              child: InkWell(
                onTap: () => onFilterSelected(filter),
                borderRadius: BorderRadius.circular(_width(12)),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: _width(20),
                    vertical: _height(16),
                  ),
                  decoration: BoxDecoration(
                    color: isSelected 
                        ? AppColors.primary.withValues(alpha: 0.1)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(_width(12)),
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
                          size: _width(24),
                        ),
                      if (isSelected) SizedBox(width: _width(12)),
                      Expanded(
                        child: Text(
                          filter,
                          style: TextStyle(
                            fontFamily: FontFamily.tajawal,
                            fontSize: _fontSize(16),
                            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                            color: isSelected ? AppColors.primary : Colors.black87,
                          ),
                        ),
                      ),
                      if (isSelected)
                        Icon(
                          Icons.radio_button_checked,
                          color: AppColors.primary,
                          size: _width(20),
                        ),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
          SizedBox(height: _height(20)),
          // Bottom padding for safe area
          SizedBox(height: MediaQuery.of(context).padding.bottom + _height(20)),
        ],
      ),
    );
  }
}
