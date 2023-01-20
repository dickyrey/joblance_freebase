part of 'job_search_form_bloc.dart';

@freezed
class JobSearchFormEvent with _$JobSearchFormEvent {
  const factory JobSearchFormEvent.fetchJobs() = _FetchJobs;

  // TextFields Events
  const factory JobSearchFormEvent.searchChanged(String query) = _SearchChanged;
}
