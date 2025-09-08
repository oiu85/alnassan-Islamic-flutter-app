import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';

import '../../../../core/utils/logger/app_logger.dart';

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
      AppLogger.business('Initiating home data fetch', {'status': state.status.toString()});
      emit(state.copyWith(status: const BlocStatus.loading()));

      final homeModel = await _homeRepositoryImp.getHomeData();
      
      // Log the response for debugging
      AppLogger.apiResponse('HomeBloc - Processed Model', homeModel);

      // Check if we have valid data
      if (homeModel.data == null) {
        AppLogger.error('No data in response');
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
        AppLogger.warning('No articles found');
        emit(
          state.copyWith(
            status: const BlocStatus.fail(
              error: 'No articles found',
            ),
          ),
        );
        return;
      }

      AppLogger.business('Home data fetch successful', {'articlesCount': 1});
      emit(
        state.copyWith(
          status: const BlocStatus.success(),
          homeData: homeModel,
        ),
      );
    } on DioException catch (e) {
      AppLogger.apiError('Home data fetch error', e);
      emit(
        state.copyWith(
          status: BlocStatus.fail(
            error: e.message ?? 'Connection attempt failed',
          ),
        ),
      );
    } catch (e) {
      AppLogger.error('Unexpected error while fetching home data', e, (e as Error).stackTrace);
      emit(
        state.copyWith(
          status: BlocStatus.fail(error: 'Unexpected error occurred'),
        ),
      );
    }
  }
}
