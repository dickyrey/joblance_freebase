part of 'message_watcher_bloc.dart';

@freezed
class MessageWatcherEvent with _$MessageWatcherEvent {
  const factory MessageWatcherEvent.fetchMessages() = _FetchMessages;
}
