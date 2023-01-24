part of 'company_watcher_bloc.dart';

@freezed
class CompanyWatcherEvent with _$CompanyWatcherEvent {
  const factory CompanyWatcherEvent.fetchCompany() = _FetchCompany;
}
