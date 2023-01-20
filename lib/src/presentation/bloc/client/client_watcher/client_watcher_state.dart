part of 'client_watcher_bloc.dart';

@freezed
class ClientWatcherState with _$ClientWatcherState {
  const factory ClientWatcherState.initial() = _Initial;
  const factory ClientWatcherState.loading() = _Loading;
  const factory ClientWatcherState.error(String message) = _Error;
  const factory ClientWatcherState.loaded(Client client) = _Loaded;
}
