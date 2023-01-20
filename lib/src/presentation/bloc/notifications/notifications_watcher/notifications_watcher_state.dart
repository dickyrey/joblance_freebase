part of 'notifications_watcher_bloc.dart';

@freezed
class NotificationsWatcherState with _$NotificationsWatcherState {
  const factory NotificationsWatcherState.initial() = _Initial;
  const factory NotificationsWatcherState.loading() = _Loading;
  const factory NotificationsWatcherState.error(String message) = _Error;
  const factory NotificationsWatcherState.loaded(List<Notifications> notifications) = _Loaded;
}
