part of 'job_details_watcher_bloc.dart';

@freezed
class JobDetailsWatcherState with _$JobDetailsWatcherState {
  const factory JobDetailsWatcherState.initial() = _Initial;
  const factory JobDetailsWatcherState.loading() = _Loading;
  const factory JobDetailsWatcherState.error(String message) = _Error;
  const factory JobDetailsWatcherState.loaded(JobDetail job) = _Loaded;
}
