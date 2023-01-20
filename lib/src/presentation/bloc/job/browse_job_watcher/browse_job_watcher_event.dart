part of 'browse_job_watcher_bloc.dart';

@freezed
class BrowseJobWatcherEvent with _$BrowseJobWatcherEvent {
  const factory BrowseJobWatcherEvent.fetchJobs() = _FetchJobs;
}
