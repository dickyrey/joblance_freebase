import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:joblance_firebase/src/common/enums.dart';
import 'package:joblance_firebase/src/domain/usecases/sign_in_with_email_and_password.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  SignInFormBloc(this.signInWithEmailAndPassword) : super(SignInFormState.initial()) {
    on<SignInFormEvent>(
      (event, emit) async {
        await event.map(
          init: (_) {
            emit(SignInFormState.initial());
          },
          signInPressed: (_) async {
            emit(
              state.copyWith(
                isSubmitting: true,
                showErrorMessages: false,
              ),
            );
            final result = await signInWithEmailAndPassword.execute(
              state.email,
              state.password,
            );
            await result.fold(
              (failure) async => emit(
                state.copyWith(
                  message: failure.message,
                  result: RequestState.error,
                  isSubmitting: false,
                  showErrorMessages: true,
                ),
              ),
              (data) async {
                emit(
                  state.copyWith(
                    result: RequestState.loaded,
                    isSubmitting: false,
                    showErrorMessages: false,
                  ),
                );
              },
            );
          },
          emailOnChanged: (event) {
            emit(
              state.copyWith(
                email: event.email,
                showErrorMessages: false,
              ),
            );
          },
          passwordOnChanged: (event) {
            emit(
              state.copyWith(
                password: event.password,
                showErrorMessages: false,
              ),
            );
          },
        );
      },
    );
  }
  final SignInWithEmailAndPassword signInWithEmailAndPassword;
}
