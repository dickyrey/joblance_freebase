part of 'sign_up_form_bloc.dart';

@freezed
class SignUpFormEvent with _$SignUpFormEvent {
  const factory SignUpFormEvent.signUpPressed() = _SignUpPressed;
  const factory SignUpFormEvent.usernameOnChanged(String username) = _UsernameOnChanged;
  const factory SignUpFormEvent.phoneOnChanged(String phone) = _PhoneOnChanged;
  const factory SignUpFormEvent.emailOnChanged(String email) = _EmailOnChanged;
  const factory SignUpFormEvent.passwordOnChanged(String password) = _PasswordOnChanged;
}
