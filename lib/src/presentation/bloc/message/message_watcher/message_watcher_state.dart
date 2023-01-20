part of 'message_watcher_bloc.dart';

@freezed
class MessageWatcherState with _$MessageWatcherState {
  const factory MessageWatcherState.initial() = _Initial;
  const factory MessageWatcherState.loading() = _Loading;
  const factory MessageWatcherState.error(String message) = _Error;
  const factory MessageWatcherState.loaded(List<Chat> chatList) = _Loaded;
}
