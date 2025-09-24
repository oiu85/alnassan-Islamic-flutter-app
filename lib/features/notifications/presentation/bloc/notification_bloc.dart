import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/models/page_state/bloc_status.dart';
import '../../../../core/utils/logger/app_logger.dart';
import '../../domain/repository/notification_repository.dart';
import 'notification_event.dart';
import 'notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final NotificationRepository _repository;
  int _perPage = 10;

  NotificationBloc(this._repository) : super(const NotificationState()) {
    on<FetchNotificationsEvent>(_onFetchNotifications);
    on<LoadMoreNotificationsEvent>(_onLoadMoreNotifications);
    on<RefreshNotificationsEvent>(_onRefreshNotifications);
  }

  Future<void> _onFetchNotifications(
    FetchNotificationsEvent event,
    Emitter<NotificationState> emit,
  ) async {
    _perPage = event.perPage;

    emit(state.copyWith(status: const BlocStatus.loading()));

    try {
      final result = await _repository.getNotifications(
        perPage: _perPage,
        page: event.page,
      );

      result.fold(
        (error) {
          AppLogger.error('Failed to fetch notifications', {'error': error});
          emit(state.copyWith(
            status: BlocStatus.fail(error: error),
            error: error,
          ));
        },
        (response) {
          if (response.data != null) {
            AppLogger.info('Notifications fetched successfully', {
              'notificationsCount': response.data!.length,
            });

            final hasReachedMax = response.meta?.pagination?.currentPage == response.meta?.pagination?.lastPage;

            emit(state.copyWith(
              status: const BlocStatus.success(),
              notifications: response.data!,
              pagination: response.meta?.pagination,
              hasReachedMax: hasReachedMax,
              currentPage: response.meta?.pagination?.currentPage ?? 1,
              error: null,
            ));
          } else {
            AppLogger.warning('Notifications response is empty');
            emit(state.copyWith(
              status: BlocStatus.fail(error: 'لم يتم العثور على إشعارات'),
              error: 'لم يتم العثور على إشعارات',
            ));
          }
        },
      );
    } catch (e) {
      AppLogger.error('Error fetching notifications', {'error': e.toString()});
      emit(state.copyWith(
        status: BlocStatus.fail(error: 'حدث خطأ أثناء تحميل الإشعارات'),
        error: 'حدث خطأ أثناء تحميل الإشعارات',
      ));
    }
  }

  Future<void> _onLoadMoreNotifications(
    LoadMoreNotificationsEvent event,
    Emitter<NotificationState> emit,
  ) async {
    if (state.hasReachedMax || state.status.isLoadingMore()) return;

    emit(state.copyWith(status: const BlocStatus.loadingMore()));

    final nextPage = state.currentPage + 1;

    try {
      final result = await _repository.getNotifications(
        perPage: _perPage,
        page: nextPage,
      );

      result.fold(
        (error) {
          AppLogger.error('Failed to load more notifications', {'error': error});
          emit(state.copyWith(
            status: BlocStatus.fail(error: error),
            error: error,
          ));
        },
        (response) {
          if (response.data != null) {
            AppLogger.info('More notifications loaded successfully', {
              'page': nextPage,
              'newNotificationsCount': response.data!.length,
            });

            final hasReachedMax = response.meta?.pagination?.currentPage == response.meta?.pagination?.lastPage;
            final newNotifications = response.data!;
            final updatedNotifications = [...state.notifications, ...newNotifications];

            emit(state.copyWith(
              status: const BlocStatus.success(),
              notifications: updatedNotifications,
              pagination: response.meta?.pagination,
              hasReachedMax: hasReachedMax,
              currentPage: response.meta?.pagination?.currentPage ?? nextPage,
            ));
          } else {
            emit(state.copyWith(
              status: const BlocStatus.success(),
              hasReachedMax: true,
            ));
          }
        },
      );
    } catch (e) {
      AppLogger.error('Error loading more notifications', {'error': e.toString()});
      emit(state.copyWith(
        status: BlocStatus.fail(error: 'حدث خطأ أثناء تحميل المزيد من الإشعارات'),
        error: 'حدث خطأ أثناء تحميل المزيد من الإشعارات',
      ));
    }
  }

  Future<void> _onRefreshNotifications(
    RefreshNotificationsEvent event,
    Emitter<NotificationState> emit,
  ) async {
    emit(state.copyWith(status: const BlocStatus.loading()));
    await _onFetchNotifications(
      FetchNotificationsEvent(
        perPage: _perPage,
        page: 1,
      ),
      emit,
    );
  }
}


