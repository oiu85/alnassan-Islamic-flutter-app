import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/models/page_state/bloc_status.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../../domain/repository/advisory_categories_repository.dart';
import 'advisory_viewer_event.dart';
import 'advisory_viewer_state.dart';

class AdvisoryViewerBloc extends Bloc<AdvisoryViewerEvent, AdvisoryViewerState> {
  final AdvisoryCategoriesRepository _repository;

  AdvisoryViewerBloc(this._repository) : super(const AdvisoryViewerState()) {
    on<FetchAdvisoryDetailsEvent>(_onFetchAdvisoryDetails);
    on<ChangeTextSizeEvent>(_onChangeTextSize);
    on<ToggleNightModeEvent>(_onToggleNightMode);
  }

  Future<void> _onFetchAdvisoryDetails(
    FetchAdvisoryDetailsEvent event,
    Emitter<AdvisoryViewerState> emit,
  ) async {
    emit(state.copyWith(status: const BlocStatus.loading()));

    try {
      final result = await _repository.getAdvisoryDetails(event.advisoryId);

      result.fold(
        (error) {
          AppLogger.error('Failed to fetch advisory details', {'error': error});
          emit(state.copyWith(
            status: BlocStatus.fail(error: error),
            error: error,
          ));
        },
        (response) {
          if (response.data != null) {
            AppLogger.info('Advisory details fetched successfully', {
              'advisoryId': response.data?.advisoryId,
              'title': response.data?.advisoryTitle,
            });
            emit(state.copyWith(
              status: const BlocStatus.success(),
              advisory: response.data,
            ));
          } else {
            AppLogger.warning('Advisory details response is empty');
            emit(state.copyWith(
              status: BlocStatus.fail(error: 'لم يتم العثور على الفتوى'),
              error: 'لم يتم العثور على الفتوى',
            ));
          }
        },
      );
    } catch (e) {
      AppLogger.error('Error fetching advisory details', {'error': e.toString()});
      emit(state.copyWith(
        status: BlocStatus.fail(error: 'حدث خطأ أثناء تحميل تفاصيل الفتوى'),
        error: 'حدث خطأ أثناء تحميل تفاصيل الفتوى',
      ));
    }
  }

  void _onChangeTextSize(
    ChangeTextSizeEvent event,
    Emitter<AdvisoryViewerState> emit,
  ) {
    emit(state.copyWith(textSize: event.textSize));
  }

  void _onToggleNightMode(
    ToggleNightModeEvent event,
    Emitter<AdvisoryViewerState> emit,
  ) {
    emit(state.copyWith(isNightMode: event.isNightMode));
  }
}
