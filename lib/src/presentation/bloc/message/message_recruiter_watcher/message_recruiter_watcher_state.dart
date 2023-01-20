part of 'message_recruiter_watcher_bloc.dart';

@freezed
class MessageRecruiterWatcherState with _$MessageRecruiterWatcherState {
  const factory MessageRecruiterWatcherState.initial() = _Initial;
  const factory MessageRecruiterWatcherState.loading() = _Loading;
  const factory MessageRecruiterWatcherState.error(String message) = _Error;
  const factory MessageRecruiterWatcherState.loaded(List<Chat> chatList) = _Loaded;
}
