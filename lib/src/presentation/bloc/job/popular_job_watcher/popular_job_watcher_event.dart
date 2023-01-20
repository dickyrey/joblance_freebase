part of 'popular_job_watcher_bloc.dart';

@freezed
class PopularJobWatcherEvent with _$PopularJobWatcherEvent {
  const factory PopularJobWatcherEvent.fetchPopularJobs() = _FetchPopularJobs;
}
