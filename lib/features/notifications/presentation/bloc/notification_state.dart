import 'package:equatable/equatable.dart';
import '../../../../core/models/page_state/bloc_status.dart';
import '../../data/model/notification_model.dart';

class NotificationState extends Equatable {
  final BlocStatus status;
  final List<NotificationItem> notifications;
  final NotificationPagination? pagination;
  final String? error;
  final bool hasReachedMax;
  final int currentPage;

  const NotificationState({
    this.status = const BlocStatus.initial(),
    this.notifications = const [],
    this.pagination,
    this.error,
    this.hasReachedMax = false,
    this.currentPage = 1,
  });

  NotificationState copyWith({
    BlocStatus? status,
    List<NotificationItem>? notifications,
    NotificationPagination? pagination,
    String? error,
    bool? hasReachedMax,
    int? currentPage,
  }) {
    return NotificationState(
      status: status ?? this.status,
      notifications: notifications ?? this.notifications,
      pagination: pagination ?? this.pagination,
      error: error ?? this.error,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      currentPage: currentPage ?? this.currentPage,
    );
  }

  @override
  List<Object?> get props => [
        status,
        notifications,
        pagination,
        error,
        hasReachedMax,
        currentPage,
      ];
}


