import 'package:flutter_bloc/flutter_bloc.dart';

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
    AppLogger.business('Initiating home data fetch', {'status': state.status.toString()});
    emit(state.copyWith(status: const BlocStatus.loading()));

    final result = await _homeRepositoryImp.getHomeData();
    
    result.fold(
      // Left side - Error case
      (error) {
        AppLogger.error('Home data fetch error: $error');
        emit(
          state.copyWith(
            status: BlocStatus.fail(error: error),
          ),
        );
      },
      // Right side - Success case
      (homeModel) {
        AppLogger.apiResponse('HomeBloc - Processed Model', homeModel);
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
        if (homeModel.data?.article == null) {
          AppLogger.warning('No main article found');
          emit(
            state.copyWith(
              status: const BlocStatus.fail(
                error: 'No main article found',
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
      },
    );
  }
}
