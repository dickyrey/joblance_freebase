part of 'company_watcher_bloc.dart';

@freezed
class CompanyWatcherState with _$CompanyWatcherState {
  const factory CompanyWatcherState.initial() = _Initial;
  const factory CompanyWatcherState.loadInProgress() = _LoadInProgress;
  const factory CompanyWatcherState.loadInFailure(String msg) = _LoadInFailure;
  const factory CompanyWatcherState.loadInSuccess(Company company) = _LoadInSuccess;
}
