import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/logger/app_logger.dart';
import '../../../../core/models/page_state/bloc_status.dart';
import '../../data/repository/habib_mustafa_repository_impl.dart';
import '../../data/model/habib_mustafa_model.dart';
import 'habib_mustafa_event.dart';
import 'habib_mustafa_state.dart';

class HabibMustafaBloc extends Bloc<HabibMustafaEvent, HabibMustafaState> {
  final HabibMustafaRepositoryImpl _habibMustafaRepositoryImpl;

  HabibMustafaBloc(this._habibMustafaRepositoryImpl) : super(const HabibMustafaState()) {
    on<FetchHabibMustafaDataEvent>(_onFetchHabibMustafaData);
    on<LoadMoreArticlesEvent>(_onLoadMoreArticles);
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
        
        if (habibMustafaModel.data?.subCategories?.data == null || 
            habibMustafaModel.data!.subCategories!.data!.isEmpty) {
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
        final initialSubCategories = habibMustafaModel.data!.subCategories!.data!;
        final limitedInitialSubCategories = initialSubCategories.map((subCategory) {
          final articles = subCategory.articles ?? [];
          final limitedArticles = articles.take(3).toList();
          
          return subCategory.copyWith(articles: limitedArticles);
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
      catId: state.habibMustafaData?.data?.subCategories?.data?.first.catId ?? 13,
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
        
        if (habibMustafaModel.data?.subCategories?.data == null || 
            habibMustafaModel.data!.subCategories!.data!.isEmpty) {
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
        final newSubCategories = habibMustafaModel.data!.subCategories!.data!;
        
        // Ensure each sub-category only has maximum 3 articles
        final limitedSubCategories = newSubCategories.map((subCategory) {
          final articles = subCategory.articles ?? [];
          final limitedArticles = articles.take(3).toList();
          
          return subCategory.copyWith(articles: limitedArticles);
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
    final pagination = model.data?.subCategories?.pagination;
    if (pagination == null) return true;
    
    return pagination.currentPage != null && 
           pagination.lastPage != null && 
           pagination.currentPage! >= pagination.lastPage!;
  }
}
