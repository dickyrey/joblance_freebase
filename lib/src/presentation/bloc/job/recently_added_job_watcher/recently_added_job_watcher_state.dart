part of 'recently_added_job_watcher_bloc.dart';

@freezed
class RecentlyAddedJobWatcherState with _$RecentlyAddedJobWatcherState {
  const factory RecentlyAddedJobWatcherState.initial() = _Initial;
  const factory RecentlyAddedJobWatcherState.loading() = _Loading;
  const factory RecentlyAddedJobWatcherState.error(String message) = _Error;
  const factory RecentlyAddedJobWatcherState.loaded(List<Job> jobs) = _Loaded;
}
