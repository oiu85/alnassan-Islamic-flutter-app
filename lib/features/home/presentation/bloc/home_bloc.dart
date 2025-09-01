import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dio/dio.dart';

import '../../../../core/utils/logger_util.dart';

import '../../../../core/models/page_state/bloc_status.dart';
import '../../data/model/home_model.dart';
import '../../domain/reprositers_imp.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final HomeRepositoryImpl _homeRepository;

  HomeBloc(this._homeRepository) : super(const HomeState()) {
    on<FetchHomeDataEvent>(_onFetchHomeData);
  }

  Future<void> _onFetchHomeData(
    FetchHomeDataEvent event,
    Emitter<HomeState> emit,
  ) async {
    try {
      LoggerUtil.logStep('Initiating home data fetch', details: 'Current state: ${state.status}');
      emit(state.copyWith(status: const BlocStatus.loading()));

      final homeModel = await _homeRepository.getHomeData();

      if (homeModel.data?.recentArticles == null || 
          homeModel.data!.recentArticles!.isEmpty) {
        LoggerUtil.logError('No articles found in response', stackTrace: 'HomeModel data exists but recentArticles is null or empty');
        emit(
          state.copyWith(
            status: const BlocStatus.fail(
              error: 'No articles found',
            ),
          ),
        );
        return;
      }

      LoggerUtil.logStep('Home data fetch successful', details: 'Articles count: ${homeModel.data?.recentArticles?.length}');
      emit(
        state.copyWith(
          status: const BlocStatus.success(),
          homeData: homeModel,
        ),
      );
    } on DioException catch (e) {
      LoggerUtil.logError('Failed to fetch home data', stackTrace: e.stackTrace?.toString());
      emit(
        state.copyWith(
          status: BlocStatus.fail(
            error: e.message ?? 'Connection attempt failed',
          ),
        ),
      );
    } catch (e) {
      LoggerUtil.logError(
        'Unexpected error while fetching home data',
        stackTrace: (e as Error).stackTrace.toString(),
      );
      emit(
        state.copyWith(
          status: BlocStatus.fail(error: 'Unexpected error occurred'),
        ),
      );
    }
  }
}
