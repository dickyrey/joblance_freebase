part of 'sign_up_form_bloc.dart';

@freezed
class SignUpFormState with _$SignUpFormState {
  const factory SignUpFormState({
    required RequestState state,
    required String username,
    required String phone,
    required String email,
    required String password,
    required String message,
    required bool isSubmitting,
    required bool showErrorMessages,
  }) = _SignUpFormState;
  
  factory SignUpFormState.initial() => const SignUpFormState(
        state: RequestState.empty,
        username: '',
        phone: '',
        email: '',
        password: '',
        message: '',
        isSubmitting: false,
        showErrorMessages: false,
      );
}
