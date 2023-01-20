part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    required RequestState result,
    required String email,
    required String password,
    required String message,
    required bool isSubmitting,
    required bool showErrorMessages,
  }) = _SignInFormState;
  
  factory SignInFormState.initial() => const SignInFormState(
    result: RequestState.empty,
        email: '',
        password: '',
        message: '',
        isSubmitting: false,
        showErrorMessages: false,
      );
}
