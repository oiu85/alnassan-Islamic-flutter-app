import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/logger/app_logger.dart';
import '../../../../core/models/page_state/bloc_status.dart';
import '../../data/repository/words_on_occasions_repository_impl.dart';
import '../../data/model/words_on_occasions_model.dart';
import 'words_on_occasions_event.dart';
import 'words_on_occasions_state.dart';

class WordsOnOccasionsBloc extends Bloc<WordsOnOccasionsEvent, WordsOnOccasionsState> {
  final WordsOnOccasionsRepositoryImpl _wordsOnOccasionsRepositoryImpl;

  WordsOnOccasionsBloc(this._wordsOnOccasionsRepositoryImpl) : super(const WordsOnOccasionsState()) {
    on<FetchWordsOnOccasionsDataEvent>(_onFetchWordsOnOccasionsData);
    on<LoadMoreSubCategoriesEvent>(_onLoadMoreSubCategories);
    on<NavigateToCategoryArticlesEvent>(_onNavigateToCategoryArticles);
    on<FetchArticleDetailEvent>(_onFetchArticleDetail);
    on<ArticleCardClickEvent>(_onArticleCardClick);
    on<MarkArticleNavigatedEvent>(_onMarkArticleNavigated);
  }

  Future<void> _onFetchWordsOnOccasionsData(
    FetchWordsOnOccasionsDataEvent event,
    Emitter<WordsOnOccasionsState> emit,
  ) async {
    AppLogger.business('Initiating Words on Occasions data fetch', {
      'status': state.status.toString(),
      'catId': event.catId,
      'categoriesPage': event.categoriesPage,
    });
    
    emit(state.copyWith(status: const BlocStatus.loading()));

    final result = await _wordsOnOccasionsRepositoryImpl.getWordsOnOccasionsData(
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
        AppLogger.error('Words on Occasions data fetch error: $error');
        emit(
          state.copyWith(
            status: BlocStatus.fail(error: error),
            error: error,
          ),
        );
      },
      // Right side - Success case
      (wordsOnOccasionsModel) {
        AppLogger.apiResponse('WordsOnOccasionsBloc - Processed Model', wordsOnOccasionsModel);
        
        if (wordsOnOccasionsModel.data == null) {
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
        
        if (wordsOnOccasionsModel.data?.subCategories == null || 
            wordsOnOccasionsModel.data!.subCategories!.isEmpty) {
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
        final initialSubCategories = wordsOnOccasionsModel.data!.subCategories!;
        final limitedInitialSubCategories = initialSubCategories.map((subCategory) {
          final articles = subCategory.articles?.data ?? [];
          final limitedArticles = articles.take(3).toList();
          
          return subCategory.copyWith(
            articles: WordsOnOccasionsArticlesWrapper(
              data: limitedArticles,
              pagination: subCategory.articles?.pagination,
            ),
          );
        }).toList();

        AppLogger.business('Words on Occasions data fetch successful', {
          'subCategoriesCount': limitedInitialSubCategories.length,
        });
        
        emit(
          state.copyWith(
            status: const BlocStatus.success(),
            wordsOnOccasionsData: wordsOnOccasionsModel,
            subCategories: limitedInitialSubCategories,
            currentCategoriesPage: event.categoriesPage,
            hasReachedMax: _checkIfReachedMax(wordsOnOccasionsModel),
            error: null,
          ),
        );
      },
    );
  }

  Future<void> _onLoadMoreSubCategories(
    LoadMoreSubCategoriesEvent event,
    Emitter<WordsOnOccasionsState> emit,
  ) async {
    if (state.hasReachedMax || state.status.isLoadingMore()) {
      return;
    }

    AppLogger.business('Loading more sub-categories', {
      'currentPage': state.currentCategoriesPage,
      'nextCategoriesPage': event.categoriesPage,
    });

    emit(state.copyWith(status: const BlocStatus.loadingMore()));

    final result = await _wordsOnOccasionsRepositoryImpl.getWordsOnOccasionsData(
      catId: 9, // Fixed catId for Words on Occasions
      catMenus: 55, // Fixed catMenus for Words on Occasions
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
      (wordsOnOccasionsModel) {
        AppLogger.apiResponse('WordsOnOccasionsBloc - Load More Processed Model', wordsOnOccasionsModel);
        
        if (wordsOnOccasionsModel.data?.subCategories == null || 
            wordsOnOccasionsModel.data!.subCategories!.isEmpty) {
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
        final newSubCategories = wordsOnOccasionsModel.data!.subCategories!;
        
        // Ensure each sub-category only has maximum 3 articles
        final limitedSubCategories = newSubCategories.map((subCategory) {
          final articles = subCategory.articles?.data ?? [];
          final limitedArticles = articles.take(3).toList();
          
          return subCategory.copyWith(
            articles: WordsOnOccasionsArticlesWrapper(
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
            hasReachedMax: _checkIfReachedMax(wordsOnOccasionsModel),
            error: null,
          ),
        );
      },
    );
  }

  Future<void> _onNavigateToCategoryArticles(
    NavigateToCategoryArticlesEvent event,
    Emitter<WordsOnOccasionsState> emit,
  ) async {
    AppLogger.business('Navigating to category articles', {
      'categoryId': event.categoryId,
      'categoryTitle': event.categoryTitle,
    });
    
    // This event is handled by the UI layer for navigation
    // No state changes needed here
  }

  bool _checkIfReachedMax(WordsOnOccasionsModel model) {
    // For WordsOnOccasions, we don't have pagination on subCategories level anymore
    // We check if there are any subCategories returned
    final subCategories = model.data?.subCategories;
    if (subCategories == null || subCategories.isEmpty) return true;
    
    // If we get less than expected, we've reached the end
    return subCategories.length < 3; // Assuming we expect 3 sub-categories per page
  }

  // ===== ARTICLE DETAIL HANDLERS =====
  Future<void> _onFetchArticleDetail(
    FetchArticleDetailEvent event,
    Emitter<WordsOnOccasionsState> emit,
  ) async {
    AppLogger.business('Fetching article detail', {
      'articleId': event.articleId,
    });

    emit(state.copyWith(articleDetailStatus: const BlocStatus.loading()));

    final result = await _wordsOnOccasionsRepositoryImpl.getArticleDetail(
      articleId: event.articleId,
    );

    result.fold(
      (error) {
        AppLogger.error('Article detail fetch error', error);
        emit(state.copyWith(
          articleDetailStatus: BlocStatus.fail(error: error),
        ));
      },
      (articleDetail) {
        AppLogger.business('Article detail fetched successfully', {
          'articleId': articleDetail.articleId,
          'title': articleDetail.articleTitle,
        });

        emit(state.copyWith(
          articleDetailStatus: const BlocStatus.success(),
          selectedArticle: articleDetail,
          hasNavigatedToArticle: false,
        ));
      },
    );
  }

  void _onArticleCardClick(
    ArticleCardClickEvent event,
    Emitter<WordsOnOccasionsState> emit,
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
    Emitter<WordsOnOccasionsState> emit,
  ) {
    emit(state.copyWith(hasNavigatedToArticle: true));
  }
}
