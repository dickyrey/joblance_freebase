part of 'applicant_watcher_bloc.dart';

@freezed
class ApplicantWatcherState with _$ApplicantWatcherState {
  const factory ApplicantWatcherState.initial() = _Initial;
  const factory ApplicantWatcherState.loading() = _Loading;
  const factory ApplicantWatcherState.error(String message) = _Error;
  const factory ApplicantWatcherState.loaded(List<Applicant> applicants) = _Loaded;
}
