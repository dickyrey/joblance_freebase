part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormEvent with _$SignInFormEvent {
  const factory SignInFormEvent.init() = _Init;
  const factory SignInFormEvent.signInPressed() = _SignInPressed;
  const factory SignInFormEvent.emailOnChanged(String email) = _EmailOnChanged;
  const factory SignInFormEvent.passwordOnChanged(String password) = _PasswordOnChanged;

  const factory SignInFormEvent.signInWithGooglePressed() = _SignInWithGooglePressed;
}
