part of 'client_watcher_bloc.dart';

@freezed
class ClientWatcherEvent with _$ClientWatcherEvent {
  const factory ClientWatcherEvent.fetchClientInformation() = _FetchClientInformation;
}
