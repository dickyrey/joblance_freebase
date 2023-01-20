part of 'job_details_watcher_bloc.dart';

@freezed
class JobDetailsWatcherEvent with _$JobDetailsWatcherEvent {
  const factory JobDetailsWatcherEvent.fetchJobDetails(int id) = _FetchJobDetails;
}
