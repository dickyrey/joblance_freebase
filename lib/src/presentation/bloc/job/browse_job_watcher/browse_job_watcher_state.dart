part of 'browse_job_watcher_bloc.dart';

@freezed
class BrowseJobWatcherState with _$BrowseJobWatcherState {
  const factory BrowseJobWatcherState.initial() = _Initial;
  const factory BrowseJobWatcherState.loading() = _Loading;
  const factory BrowseJobWatcherState.error(String message) = _Error;
  const factory BrowseJobWatcherState.loaded(List<Job> jobs) = _Loaded;
}
