part of 'job_search_form_bloc.dart';

@freezed
class JobSearchFormState with _$JobSearchFormState {
  const factory JobSearchFormState({
    required RequestState state,
    required String message,
    required List<Job> jobs,
    required List<Job> searchResult,
  }) = _JobSearchFormState;
  
  factory JobSearchFormState.initial() => const JobSearchFormState(
    state: RequestState.empty,
    message: '',
    jobs: [],
    searchResult: [],
  );
}
