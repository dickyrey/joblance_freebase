import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:joblance_firebase/src/domain/entities/profile.dart';
import 'package:joblance_firebase/src/domain/usecases/profile/get_profile.dart';

part 'profile_watcher_event.dart';
part 'profile_watcher_state.dart';
part 'profile_watcher_bloc.freezed.dart';

class ProfileWatcherBloc extends Bloc<ProfileWatcherEvent, ProfileWatcherState> {
  ProfileWatcherBloc(this._getProfile) : super(const ProfileWatcherState.initial()) {
    on<ProfileWatcherEvent>((event, emit) async {
      await event.map(
        fetchProfile: (_) async {
          emit(const ProfileWatcherState.loadInProgress());
          final result = await _getProfile.execute();
          result.fold(
            (failure) => emit(ProfileWatcherState.loadFailure(failure.message)),
            (data) => emit(ProfileWatcherState.loadSuccess(data)),
          );
        },
      );
    });
  }
  final GetProfile _getProfile;
}
