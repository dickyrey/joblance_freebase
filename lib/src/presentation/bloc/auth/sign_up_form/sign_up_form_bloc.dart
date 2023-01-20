import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:joblance_firebase/src/common/enums.dart';
import 'package:joblance_firebase/src/domain/usecases/register_with_email_and_password.dart';

part 'sign_up_form_event.dart';
part 'sign_up_form_state.dart';
part 'sign_up_form_bloc.freezed.dart';

class SignUpFormBloc extends Bloc<SignUpFormEvent, SignUpFormState> {
  SignUpFormBloc(this._register) : super(SignUpFormState.initial()) {
    on<SignUpFormEvent>((event, emit) async {
      await event.map(
        signUpPressed: (event) async {
          emit(state.copyWith(state: RequestState.loading));
          final result = await _register.execute(
            state.username,
            state.email,
            state.phone,
            state.password,
          );
          result.fold(
            (failure) => emit(
              state.copyWith(
                state: RequestState.error,
                message: failure.message,
              ),
            ),
            (data) {
              emit(state.copyWith(state: RequestState.loaded));
            },
          );
        },
        usernameOnChanged: (event) {
          emit(
            state.copyWith(
              username: event.username,
              state: RequestState.empty,
            ),
          );
        },
        phoneOnChanged: (event) {
          emit(
            state.copyWith(
              phone: event.phone,
              state: RequestState.empty,
            ),
          );
        },
        emailOnChanged: (event) {
          emit(
            state.copyWith(
              email: event.email,
              state: RequestState.empty,
            ),
          );
        },
        passwordOnChanged: (event) {
          emit(
            state.copyWith(
              password: event.password,
              state: RequestState.empty,
            ),
          );
        },
      );
    });
  }
  final RegisterWithEmailAndPassword _register;
}
