import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/logger/app_logger.dart';
import '../../../../core/models/page_state/bloc_status.dart';
import '../../../../core/shared/wdigets/filter_button.dart';
import '../../data/repository/habib_mustafa_repository_impl.dart';
import '../../data/model/habib_mustafa_model.dart';
import 'habib_mustafa_event.dart';
import 'habib_mustafa_state.dart';

class HabibMustafaBloc extends Bloc<HabibMustafaEvent, HabibMustafaState> {
  final HabibMustafaRepositoryImpl _habibMustafaRepositoryImpl;

  HabibMustafaBloc(this._habibMustafaRepositoryImpl) : super(const HabibMustafaState()) {
    on<FetchHabibMustafaDataEvent>(_onFetchHabibMustafaData);
    on<LoadMoreArticlesEvent>(_onLoadMoreArticles);
    on<FetchCategoryArticlesEvent>(_onFetchCategoryArticles);
    on<LoadMoreCategoryArticlesEvent>(_onLoadMoreCategoryArticles);
    on<ChangeCategoryPageEvent>(_onChangeCategoryPage);
    on<FetchArticleDetailEvent>(_onFetchArticleDetail);
    on<ArticleCardClickEvent>(_onArticleCardClick);
    on<MarkArticleNavigatedEvent>(_onMarkArticleNavigated);
  }

  Future<void> _onFetchHabibMustafaData(
    FetchHabibMustafaDataEvent event,
    Emitter<HabibMustafaState> emit,
  ) async {
    AppLogger.business('Initiating Habib Mustafa data fetch', {
      'status': state.status.toString(),
      'catId': event.catId,
      'articlesPage': event.articlesPage,
    });
    
    emit(state.copyWith(status: const BlocStatus.loading()));

    final result = await _habibMustafaRepositoryImpl.getHabibMustafaData(
      catId: event.catId,
      catMenus: event.catMenus,
      articlesPerPage: event.articlesPerPage,
      categoriesPerPage: event.categoriesPerPage,
      articlesPage: event.articlesPage,
      categoriesPage: event.categoriesPage,
    );
    
    result.fold(
      // Left side - Error case
      (error) {
        AppLogger.error('Habib Mustafa data fetch error: $error');
        emit(
          state.copyWith(
            status: BlocStatus.fail(error: error),
            error: error,
          ),
        );
      },
      // Right side - Success case
      (habibMustafaModel) {
        AppLogger.apiResponse('HabibMustafaBloc - Processed Model', habibMustafaModel);
        
        if (habibMustafaModel.data == null) {
          AppLogger.error('No data in response');
          emit(
            state.copyWith(
              status: const BlocStatus.fail(
                error: 'Invalid response format',
              ),
              error: 'Invalid response format',
            ),
          );
          return;
        }
        
        if (habibMustafaModel.data?.subCategories == null || 
            habibMustafaModel.data!.subCategories!.isEmpty) {
          AppLogger.warning('No sub-categories found');
          emit(
            state.copyWith(
              status: const BlocStatus.fail(
                error: 'No sub-categories found',
              ),
              error: 'No sub-categories found',
            ),
          );
          return;
        }

        // Ensure each sub-category only has maximum 3 articles
        final initialSubCategories = habibMustafaModel.data!.subCategories!;
        final limitedInitialSubCategories = initialSubCategories.map((subCategory) {
          final articles = subCategory.articles?.data ?? [];
          final limitedArticles = articles.take(3).toList();
          
          return subCategory.copyWith(
            articles: ArticlesWrapper(
              data: limitedArticles,
              pagination: subCategory.articles?.pagination,
            ),
          );
        }).toList();

        AppLogger.business('Habib Mustafa data fetch successful', {
          'subCategoriesCount': limitedInitialSubCategories.length,
        });
        
        emit(
          state.copyWith(
            status: const BlocStatus.success(),
            habibMustafaData: habibMustafaModel,
            subCategories: limitedInitialSubCategories,
            currentArticlesPage: event.articlesPage,
            currentCategoriesPage: event.categoriesPage,
            hasReachedMax: _checkIfReachedMax(habibMustafaModel),
          ),
        );
      },
    );
  }

  Future<void> _onLoadMoreArticles(
    LoadMoreArticlesEvent event,
    Emitter<HabibMustafaState> emit,
  ) async {
    if (state.hasReachedMax || state.status.isLoadingMore()) {
      return;
    }

    AppLogger.business('Loading more sub-categories', {
      'currentCategoriesPage': state.currentCategoriesPage,
      'nextCategoriesPage': event.categoriesPage,
    });

    emit(state.copyWith(status: const BlocStatus.loadingMore()));

    final result = await _habibMustafaRepositoryImpl.getHabibMustafaData(
      catId: state.habibMustafaData?.data?.subCategories?.first.catId ?? 13,
      catMenus: 40,
      articlesPerPage: 3, // 3 articles per sub-category
      categoriesPerPage: 3, // 3 sub-categories per page
      articlesPage: 1, // Always page 1 for articles (each sub-category has 3 articles)
      categoriesPage: event.categoriesPage, // Next page of sub-categories
    );
    
    result.fold(
      (error) {
        AppLogger.error('Load more sub-categories error: $error');
        emit(
          state.copyWith(
            status: BlocStatus.fail(error: error),
            error: error,
          ),
        );
      },
      (habibMustafaModel) {
        AppLogger.apiResponse('HabibMustafaBloc - Load More Processed Model', habibMustafaModel);
        
        if (habibMustafaModel.data?.subCategories == null || 
            habibMustafaModel.data!.subCategories!.isEmpty) {
          AppLogger.warning('No more sub-categories found');
          emit(
            state.copyWith(
              status: const BlocStatus.success(),
              hasReachedMax: true,
            ),
          );
          return;
        }

        // Simply append new sub-categories to existing ones
        final newSubCategories = habibMustafaModel.data!.subCategories!;
        
        // Ensure each sub-category only has maximum 3 articles
        final limitedSubCategories = newSubCategories.map((subCategory) {
          final articles = subCategory.articles?.data ?? [];
          final limitedArticles = articles.take(3).toList();
          
          return subCategory.copyWith(
            articles: ArticlesWrapper(
              data: limitedArticles,
              pagination: subCategory.articles?.pagination,
            ),
          );
        }).toList();
        
        final updatedSubCategories = [...state.subCategories, ...limitedSubCategories];

        AppLogger.business('More sub-categories loaded successfully', {
          'newSubCategoriesCount': newSubCategories.length,
          'totalSubCategoriesCount': updatedSubCategories.length,
        });
        
        emit(
          state.copyWith(
            status: const BlocStatus.success(),
            subCategories: updatedSubCategories,
            currentCategoriesPage: event.categoriesPage,
            hasReachedMax: _checkIfReachedMax(habibMustafaModel),
          ),
        );
      },
    );
  }

  bool _checkIfReachedMax(HabibMustafaModel model) {
    // For HabibMustafa, we don't have pagination on subCategories level anymore
    // We check if there are any subCategories returned
    final subCategories = model.data?.subCategories;
    if (subCategories == null || subCategories.isEmpty) return true;
    
    // If we get less than expected, we've reached the end
    return subCategories.length < 3; // Assuming we expect 3 sub-categories per page
  }

  Future<void> _onFetchCategoryArticles(
    FetchCategoryArticlesEvent event,
    Emitter<HabibMustafaState> emit,
  ) async {
    AppLogger.business('Initiating category articles fetch', {
      'status': state.status.toString(),
      'categoryId': event.categoryId,
      'page': event.page,
    });
    
    emit(state.copyWith(status: const BlocStatus.loading()));

    final result = await _habibMustafaRepositoryImpl.getCategoryArticles(
      categoryId: event.categoryId,
      page: event.page,
      perPage: event.perPage,
    );
    
    result.fold(
      // Left side - Error case
      (error) {
        AppLogger.error('Category articles fetch error: $error');
        emit(
          state.copyWith(
            status: BlocStatus.fail(error: error),
            error: error,
          ),
        );
      },
      // Right side - Success case
      (categoryArticlesModel) {
        AppLogger.apiResponse('HabibMustafaBloc - Processed Category Articles Model', categoryArticlesModel);
        
        if (categoryArticlesModel.data == null) {
          AppLogger.error('No data in response');
          emit(
            state.copyWith(
              status: const BlocStatus.fail(
                error: 'Invalid response format',
              ),
              error: 'Invalid response format',
            ),
          );
          return;
        }
        
        if (categoryArticlesModel.data?.categories == null || 
            categoryArticlesModel.data!.categories!.isEmpty) {
          AppLogger.warning('No categories found');
          emit(
            state.copyWith(
              status: const BlocStatus.fail(
                error: 'No categories found',
              ),
              error: 'No categories found',
            ),
          );
          return;
        }

        final category = categoryArticlesModel.data!.categories!.first;
        final articles = category.articles ?? [];

        AppLogger.business('Category articles fetch successful', {
          'categoryTitle': category.catTitle,
          'articlesCount': articles.length,
        });
        
        emit(
          state.copyWith(
            status: const BlocStatus.success(),
            categoryArticlesData: categoryArticlesModel,
            categoryArticles: articles,
            currentCategoryArticlesPage: event.page,
            hasReachedMaxCategoryArticles: _checkIfReachedMaxCategoryArticles(categoryArticlesModel),
            categoryTitle: category.catTitle,
          ),
        );
      },
    );
  }

  Future<void> _onLoadMoreCategoryArticles(
    LoadMoreCategoryArticlesEvent event,
    Emitter<HabibMustafaState> emit,
  ) async {
    if (state.hasReachedMaxCategoryArticles || state.status.isLoadingMore()) {
      return;
    }

    AppLogger.business('Loading more category articles', {
      'currentPage': state.currentCategoryArticlesPage,
      'nextPage': event.page,
    });

    emit(state.copyWith(status: const BlocStatus.loadingMore()));

    final result = await _habibMustafaRepositoryImpl.getCategoryArticles(
      categoryId: event.categoryId,
      page: event.page,
      perPage: event.perPage,
    );
    
    result.fold(
      (error) {
        AppLogger.error('Load more category articles error: $error');
        emit(
          state.copyWith(
            status: BlocStatus.fail(error: error),
            error: error,
          ),
        );
      },
      (categoryArticlesModel) {
        AppLogger.apiResponse('HabibMustafaBloc - Load More Category Articles Processed Model', categoryArticlesModel);
        
        if (categoryArticlesModel.data?.categories == null || 
            categoryArticlesModel.data!.categories!.isEmpty) {
          AppLogger.warning('No more articles found');
          emit(
            state.copyWith(
              status: const BlocStatus.success(),
              hasReachedMaxCategoryArticles: true,
            ),
          );
          return;
        }

        final category = categoryArticlesModel.data!.categories!.first;
        final newArticles = category.articles ?? [];
        
        final updatedArticles = [...state.categoryArticles, ...newArticles];

        AppLogger.business('More category articles loaded successfully', {
          'newArticlesCount': newArticles.length,
          'totalArticlesCount': updatedArticles.length,
        });
        
        emit(
          state.copyWith(
            status: const BlocStatus.success(),
            categoryArticles: updatedArticles,
            currentCategoryArticlesPage: event.page,
            hasReachedMaxCategoryArticles: _checkIfReachedMaxCategoryArticles(categoryArticlesModel),
          ),
        );
      },
    );
  }

  bool _checkIfReachedMaxCategoryArticles(CategoryArticlesModel model) {
    final pagination = model.data?.categories?.first.pagination;
    if (pagination == null) return true;
    
    return pagination.currentPage != null && 
           pagination.lastPage != null && 
           pagination.currentPage! >= pagination.lastPage!;
  }

  Future<void> _onChangeCategoryPage(
    ChangeCategoryPageEvent event,
    Emitter<HabibMustafaState> emit,
  ) async {
    AppLogger.business('Changing category page', {
      'categoryId': event.categoryId,
      'page': event.page,
      'perPage': event.perPage,
    });
    
    emit(state.copyWith(status: const BlocStatus.loading()));

    final result = await _habibMustafaRepositoryImpl.getCategoryArticles(
      categoryId: event.categoryId,
      page: event.page,
      perPage: event.perPage,
    );
    
    result.fold(
      (error) {
        AppLogger.error('Change category page error: $error');
        emit(
          state.copyWith(
            status: BlocStatus.fail(error: error),
            error: error,
          ),
        );
      },
      (categoryArticlesModel) {
        AppLogger.apiResponse('HabibMustafaBloc - Change Page Processed Model', categoryArticlesModel);
        
        if (categoryArticlesModel.data == null) {
          AppLogger.error('No data in response');
          emit(
            state.copyWith(
              status: const BlocStatus.fail(
                error: 'Invalid response format',
              ),
              error: 'Invalid response format',
            ),
          );
          return;
        }
        
        if (categoryArticlesModel.data?.categories == null || 
            categoryArticlesModel.data!.categories!.isEmpty) {
          AppLogger.warning('No categories found');
          emit(
            state.copyWith(
              status: const BlocStatus.fail(
                error: 'No categories found',
              ),
              error: 'No categories found',
            ),
          );
          return;
        }

        final category = categoryArticlesModel.data!.categories!.first;
        final articles = category.articles ?? [];

        AppLogger.business('Category page changed successfully', {
          'categoryTitle': category.catTitle,
          'articlesCount': articles.length,
          'page': event.page,
        });
        
        emit(
          state.copyWith(
            status: const BlocStatus.success(),
            categoryArticlesData: categoryArticlesModel,
            categoryArticles: articles,
            currentCategoryArticlesPage: event.page,
            hasReachedMaxCategoryArticles: _checkIfReachedMaxCategoryArticles(categoryArticlesModel),
            categoryTitle: category.catTitle,
          ),
        );
      },
    );
  }

  // ===== FILTER BUTTON LOGIC FOR CATEGORY ARTICLES =====
  /// Returns filter button options for category articles pagination
  List<Map<String, dynamic>> getCategoryFilterButtonOptions() {
    final List<Map<String, dynamic>> options = [];
    
    // Add page options if there are multiple pages
    if (state.categoryArticlesData?.data?.categories?.first.pagination?.lastPage != null) {
      final totalPages = state.categoryArticlesData!.data!.categories!.first.pagination!.lastPage!;
      if (totalPages > 1) {
        for (int i = 1; i <= totalPages; i++) {
          options.add({
            'value': 'page_$i',
            'label': '$i',
          });
        }
      }
    }
    
    return options;
  }

  /// Returns whether category filter button should be shown
  bool shouldShowCategoryFilterButton() {
    final totalPages = state.categoryArticlesData?.data?.categories?.first.pagination?.lastPage;
    return totalPages != null && totalPages > 1;
  }

  /// Returns the current selected page value for category filter button
  String getCurrentCategoryPageValue() {
    return 'page_${state.currentCategoryArticlesPage}';
  }

  /// Returns the hint text for category filter button
  String getCategoryFilterButtonHintText() {
    return '${state.currentCategoryArticlesPage}';
  }

  /// Builds the complete category filter button widget
  Widget buildCategoryFilterButton({
    required BuildContext context,
    required int categoryId,
    required int perPage,
  }) {
    // Use BLoC methods to get filter button data
    if (!shouldShowCategoryFilterButton()) {
      return const SizedBox.shrink();
    }
    
    final options = getCategoryFilterButtonOptions().map((option) => 
      FilterOption<String>(
        value: option['value'] as String,
        label: option['label'] as String,
      )
    ).toList();
    
    return FilterButton<String>(
      options: options,
      selectedValue: getCurrentCategoryPageValue(),
      label: 'اختر الصفحة',
      onChanged: state.status.isLoading() ? null : (value) {
        if (value != null && value.startsWith('page_')) {
          final page = int.parse(value.split('_')[1]);
          add(
            ChangeCategoryPageEvent(
              categoryId: categoryId,
              page: page,
              perPage: perPage,
            ),
          );
        }
      },
      width: 60,
      hintText: getCategoryFilterButtonHintText(),
    );
  }

  // ===== ARTICLE DETAIL EVENT HANDLERS =====
  Future<void> _onFetchArticleDetail(
    FetchArticleDetailEvent event,
    Emitter<HabibMustafaState> emit,
  ) async {
    AppLogger.business('Fetching article detail', {
      'articleId': event.articleId,
    });
    
    emit(state.copyWith(articleDetailStatus: const BlocStatus.loading()));

    final result = await _habibMustafaRepositoryImpl.getArticleDetail(
      articleId: event.articleId,
    );
    
    result.fold(
      (error) {
        AppLogger.error('Article detail fetch error: $error');
        emit(
          state.copyWith(
            articleDetailStatus: BlocStatus.fail(error: error),
          ),
        );
      },
      (articleDetailModel) {
        AppLogger.apiResponse('HabibMustafaBloc - Article Detail Processed Model', articleDetailModel);
        
        if (articleDetailModel.data == null) {
          AppLogger.error('No data in article detail response');
          emit(
            state.copyWith(
              articleDetailStatus: const BlocStatus.fail(
                error: 'Invalid response format',
              ),
            ),
          );
          return;
        }

        final articleDetailData = articleDetailModel.data!;
        
        // Convert ArticleDetailData to HabibArticle for compatibility
        final habibArticle = HabibArticle(
          articleId: articleDetailData.articleId,
          articleCatId: articleDetailData.articleCatId,
          articleTitle: articleDetailData.articleTitle,
          articleDes: articleDetailData.articleDes,
          articleSummary: articleDetailData.articleSummary,
          articlePic: articleDetailData.articlePic,
          articleVisitor: articleDetailData.articleVisitor,
          articleDate: articleDetailData.articleDate,
          articleContent: articleDetailData.articleDes, // Use articleDes as content
          category: articleDetailData.category != null ? Category(
            catId: articleDetailData.category!.catId,
            catTitle: articleDetailData.category!.catTitle,
          ) : null,
        );

        AppLogger.business('Article detail fetch successful', {
          'articleTitle': habibArticle.articleTitle,
          'articleId': habibArticle.articleId,
        });
        
        emit(
          state.copyWith(
            articleDetailStatus: const BlocStatus.success(),
            articleDetailData: articleDetailModel,
            selectedArticle: habibArticle,
          ),
        );
      },
    );
  }

  void _onArticleCardClick(
    ArticleCardClickEvent event,
    Emitter<HabibMustafaState> emit,
  ) {
    AppLogger.business('Article card clicked', {
      'articleId': event.article.articleId,
      'articleTitle': event.article.articleTitle,
    });
    
    emit(
      state.copyWith(
        selectedArticle: event.article,
        hasNavigatedToArticle: false,
      ),
    );
    
    // Trigger article detail fetch
    add(FetchArticleDetailEvent(articleId: event.article.articleId ?? 0));
  }

  void _onMarkArticleNavigated(
    MarkArticleNavigatedEvent event,
    Emitter<HabibMustafaState> emit,
  ) {
    emit(state.copyWith(hasNavigatedToArticle: true));
  }

  // ===== HTML CONTENT MAPPER =====
  /// Converts HabibArticle to HtmlContent for the HTML viewer
  HabibArticle? get htmlContent {
    if (state.selectedArticle == null) return null;
    
    return state.selectedArticle;
  }
}
