part of 'saved_job_watcher_bloc.dart';

@freezed
class SavedJobWatcherState with _$SavedJobWatcherState {
  const factory SavedJobWatcherState.initial() = _Initial;
  const factory SavedJobWatcherState.loading() = _Loading;
  const factory SavedJobWatcherState.error(String message) = _Error;
  const factory SavedJobWatcherState.loaded(List<Job> jobs) = _Loaded;
}
