part of 'active_job_watcher_bloc.dart';

@freezed
class ActiveJobWatcherState with _$ActiveJobWatcherState {
  const factory ActiveJobWatcherState.initial() = _Initial;
  const factory ActiveJobWatcherState.loading() = _Loading;
  const factory ActiveJobWatcherState.error(String message) = _Error;
  const factory ActiveJobWatcherState.loaded(List<Job> jobs) = _Loaded;
}
