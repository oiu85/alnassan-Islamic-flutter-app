import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';

import '../../../../core/utils/logger/log_helper.dart';

import '../../../../core/models/page_state/bloc_status.dart';
import '../../data/repositories/reprositers_imp.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepositoryImpl _homeRepositoryImp;

  HomeBloc(this._homeRepositoryImp) : super(const HomeState()) {
    on<FetchHomeDataEvent>(_onFetchHomeData);
  }

  Future<void> _onFetchHomeData(
    FetchHomeDataEvent event,
    Emitter<HomeState> emit,
  ) async {
    try {
      LogHelper.logInitiatingHomeDataFetch(state.status);
      emit(state.copyWith(status: const BlocStatus.loading()));

      final homeModel = await _homeRepositoryImp.getHomeData();
      
      // Log the response for debugging
      LogHelper.logApiResponse(
        'HomeBloc',
        'Processed Model: ${homeModel.toString()}',
      );

      // Check if we have valid data
      if (homeModel.data == null) {
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

      if (homeModel.data?.recentArticles == null || 
          homeModel.data!.recentArticles!.isEmpty) {
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

      LogHelper.logHomeDataFetchSuccess(1); // Single article
      emit(
        state.copyWith(
          status: const BlocStatus.success(),
          homeData: homeModel,
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
      LogHelper.logError('Unexpected error while fetching home data', stackTrace: (e as Error).stackTrace.toString(),);
      emit(
        state.copyWith(
          status: BlocStatus.fail(error: 'Unexpected error occurred'),
        ),
      );
    }
  }
}
