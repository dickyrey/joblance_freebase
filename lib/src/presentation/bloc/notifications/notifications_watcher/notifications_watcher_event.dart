part of 'notifications_watcher_bloc.dart';

@freezed
class NotificationsWatcherEvent with _$NotificationsWatcherEvent {
  const factory NotificationsWatcherEvent.fetchNotifications() = _FetchNotifications;
}
