part of 'recently_added_job_watcher_bloc.dart';

@freezed
class RecentlyAddedJobWatcherEvent with _$RecentlyAddedJobWatcherEvent {
  const factory RecentlyAddedJobWatcherEvent.fetchRecentlyJobs() = _FetchRecentlyJobs;
}
