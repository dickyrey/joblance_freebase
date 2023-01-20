part of 'auth_watcher_bloc.dart';

@freezed
abstract class AuthWatcherState with _$AuthWatcherState {
  const factory AuthWatcherState.initial() = _Initial;
  const factory AuthWatcherState.authenticating() = _Authenticating;
  const factory AuthWatcherState.authenticated() = _Authenticated;
  const factory AuthWatcherState.unauthenticated() = _Unauthenticated;
  const factory AuthWatcherState.firstInstall() = _FirstInstall;
}
