abstract class NotificationEvent {}

class FetchNotificationsEvent extends NotificationEvent {
  final int perPage;
  final int page;

  FetchNotificationsEvent({
    this.perPage = 10,
    this.page = 1,
  });
}

class LoadMoreNotificationsEvent extends NotificationEvent {}

class RefreshNotificationsEvent extends NotificationEvent {}
