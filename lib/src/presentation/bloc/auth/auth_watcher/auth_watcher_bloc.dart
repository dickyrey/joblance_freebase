import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:joblance_firebase/src/domain/usecases/auth/check_auth_status.dart';
import 'package:joblance_firebase/src/domain/usecases/auth/sign_out_user.dart';

part 'auth_watcher_bloc.freezed.dart';
part 'auth_watcher_event.dart';
part 'auth_watcher_state.dart';

class AuthWatcherBloc extends Bloc<AuthWatcherEvent, AuthWatcherState> {
AuthWatcherBloc(this._signOut, this._checkAuthStatus) : super(const AuthWatcherState.initial()) {
    on<AuthWatcherEvent>((event, emit) async {
      await event.map(
        authCheckRequested: (_) async {
          emit(const AuthWatcherState.authenticating());
          final result = await _checkAuthStatus.execute();
          result.fold(
            (_) => emit(const AuthWatcherState.unauthenticated()),
            (data) {
              if (data == true) {
                return emit(const AuthWatcherState.authenticated());
              } else {
                emit(const AuthWatcherState.unauthenticated());
              }
            },
          );
        },
        signedOut: (_) async {
          emit(const AuthWatcherState.authenticating());
          final result = await _signOut.execute();
          result.fold(
            (_) => emit(const AuthWatcherState.authenticated()),
            (_) => emit(const AuthWatcherState.unauthenticated()),
          );
        },
      );
    });
  }
  final CheckAuthStatus _checkAuthStatus;
  final SignOutUser _signOut;
}
