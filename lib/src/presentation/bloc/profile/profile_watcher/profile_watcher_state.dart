part of 'profile_watcher_bloc.dart';

@freezed
class ProfileWatcherState with _$ProfileWatcherState {
  const factory ProfileWatcherState.initial() = _Initial;
  const factory ProfileWatcherState.loadInProgress() = _LoadInProgress;
  const factory ProfileWatcherState.loadSuccess(Profile profile) = _LoadSuccess;
  const factory ProfileWatcherState.loadFailure(String message) = _LoadFailure;
}
