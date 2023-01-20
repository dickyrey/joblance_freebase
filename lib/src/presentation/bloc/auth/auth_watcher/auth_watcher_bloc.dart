import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:joblance_firebase/src/common/const.dart';
import 'package:joblance_firebase/src/domain/usecases/auth/sign_out_user.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'auth_watcher_bloc.freezed.dart';
part 'auth_watcher_event.dart';
part 'auth_watcher_state.dart';

class AuthWatcherBloc extends Bloc<AuthWatcherEvent, AuthWatcherState> {
  AuthWatcherBloc(this.signOut) : super(const AuthWatcherState.initial()) {
    on<AuthWatcherEvent>((event, emit) async {
      await event.map(
        authCheckRequested: (_) async {
          final prefs = await SharedPreferences.getInstance();
          final token = prefs.getString(Const.accessToken);

          if (token != null) {
            emit(const AuthWatcherState.authenticated());
          } else {
            emit(const AuthWatcherState.unauthenticated());
          }
        },
        signedOut: (_) async {
          emit(const AuthWatcherState.authenticating());
          final result = await signOut.execute();
          result.fold(
            (_) => emit(const AuthWatcherState.authenticated()),
            (_) => emit(const AuthWatcherState.unauthenticated()),
          );
        },
      );
    });
  }
  final SignOutUser signOut;
}
