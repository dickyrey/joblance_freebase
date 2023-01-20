part of 'saved_job_watcher_bloc.dart';

@freezed
class SavedJobWatcherEvent with _$SavedJobWatcherEvent {
  const factory SavedJobWatcherEvent.fetchSavedJobs() = _FetchSavedJobs;
}
