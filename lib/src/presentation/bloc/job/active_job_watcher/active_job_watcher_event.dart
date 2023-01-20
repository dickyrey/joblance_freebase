part of 'active_job_watcher_bloc.dart';

@freezed
class ActiveJobWatcherEvent with _$ActiveJobWatcherEvent {
  const factory ActiveJobWatcherEvent.fetchActiveJobs() = _FetchActiveJobs;
}
