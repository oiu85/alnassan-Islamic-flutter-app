import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';

import '../../../../core/utils/logger/log_helper.dart';
import '../../../../core/models/page_state/bloc_status.dart';
import '../../domain/biographies_repository.dart';
import 'biographies_event.dart';
import 'biographies_state.dart';

class BiographiesBloc extends Bloc<BiographiesEvent, BiographiesState> {
  final BiographiesRepository _biographiesRepository;

  BiographiesBloc(this._biographiesRepository) : super(const BiographiesState()) {
    on<FetchBiographiesArticlesEvent>(_onFetchBiographiesArticles);
    on<ChangePageEvent>(_onChangePage);
  }

  Future<void> _onFetchBiographiesArticles(
    FetchBiographiesArticlesEvent event,
    Emitter<BiographiesState> emit,
  ) async {
    try {
      LogHelper.logInitiatingHomeDataFetch(state.status);
      
      emit(state.copyWith(
        status: const BlocStatus.loading(),
        hasReachedMax: false,
      ));

      final biographiesModel = await _biographiesRepository.getBiographiesArticles(
        categoryId: event.categoryId,
        page: event.page,
        perPage: event.perPage,
      );

      // Log the response for debugging
      LogHelper.logApiResponse(
        'BiographiesBloc',
        'Processed Model: ${biographiesModel.toString()}',
      );

      // Check if we have valid data
      if (biographiesModel.data == null) {
        LogHelper.logError('No data in response');
        emit(
          state.copyWith(
            status: const BlocStatus.fail(
              error: 'Invalid response format',
            ),
          ),
        );
        return;
      }

      if (biographiesModel.data?.articles == null ||
          biographiesModel.data!.articles!.isEmpty) {
        LogHelper.logNoArticlesFound();
        emit(
          state.copyWith(
            status: const BlocStatus.fail(
              error: 'No articles found',
            ),
          ),
        );
        return;
      }

      final newArticles = biographiesModel.data!.articles!;
      final pagination = biographiesModel.meta?.pagination;
      final totalPages = pagination?.lastPage ?? 1;
      final totalItems = pagination?.total ?? 0;
      final hasReachedMax = newArticles.length < event.perPage;

      LogHelper.logHomeDataFetchSuccess(newArticles.length);
      emit(
        state.copyWith(
          status: const BlocStatus.success(),
          biographiesData: biographiesModel,
          articles: newArticles,
          currentPage: event.page,
          perPage: event.perPage,
          totalPages: totalPages,
          totalItems: totalItems,
          hasReachedMax: hasReachedMax,
        ),
      );
    } on DioException catch (e) {
      LogHelper.logFetchError(e);
      emit(
        state.copyWith(
          status: BlocStatus.fail(
            error: e.message ?? 'Connection attempt failed',
          ),
        ),
      );
    } catch (e) {
      LogHelper.logError(
        'Unexpected error while fetching biographies data',
        stackTrace: (e as Error).stackTrace.toString(),
      );
      emit(
        state.copyWith(
          status: BlocStatus.fail(error: 'Unexpected error occurred'),
        ),
      );
    }
  }


  Future<void> _onChangePage(
    ChangePageEvent event,
    Emitter<BiographiesState> emit,
  ) async {
    add(FetchBiographiesArticlesEvent(
      categoryId: event.categoryId,
      page: event.page,
      perPage: event.perPage,
    ));
  }

}
