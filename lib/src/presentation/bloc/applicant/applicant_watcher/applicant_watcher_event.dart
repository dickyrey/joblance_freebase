part of 'applicant_watcher_bloc.dart';

@freezed
class ApplicantWatcherEvent with _$ApplicantWatcherEvent {
  const factory ApplicantWatcherEvent.fetchApplicants() = _FetchApplicants;
}
