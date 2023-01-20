part of 'popular_job_watcher_bloc.dart';

@freezed
class PopularJobWatcherState with _$PopularJobWatcherState {
  const factory PopularJobWatcherState.initial() = _Initial;
  const factory PopularJobWatcherState.loading() = _Loading;
  const factory PopularJobWatcherState.error(String message) = _Error;
  const factory PopularJobWatcherState.loaded(List<Job> jobs) = _Loaded;
}
