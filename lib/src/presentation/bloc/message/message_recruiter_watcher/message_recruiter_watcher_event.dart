part of 'message_recruiter_watcher_bloc.dart';

@freezed
class MessageRecruiterWatcherEvent with _$MessageRecruiterWatcherEvent {
  const factory MessageRecruiterWatcherEvent.fetchMessages() = _FetchMessages;
}
