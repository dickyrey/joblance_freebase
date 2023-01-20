part of 'sign_up_form_bloc.dart';

@freezed
class SignUpFormState with _$SignUpFormState {
  const factory SignUpFormState({
    required RequestState state,
    required String fullName,
    required String phoneNumber,
    required String email,
    required String password,
    required String message,
    required bool isSubmitting,
  }) = _SignUpFormState;
  
  factory SignUpFormState.initial() => const SignUpFormState(
        state: RequestState.empty,
        fullName: '',
        phoneNumber: '',
        email: '',
        password: '',
        message: '',
        isSubmitting: false,
      );
}
