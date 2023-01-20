part of 'sign_up_form_bloc.dart';

@freezed
class SignUpFormEvent with _$SignUpFormEvent {
  const factory SignUpFormEvent.signUpPressed() = _SignUpPressed;
  const factory SignUpFormEvent.fullNameOnChanged(String fullName) = _FullNameOnChanged;
  const factory SignUpFormEvent.phoneNumberOnChanged(String phoneNumber) = _PhoneNumberOnChanged;
  const factory SignUpFormEvent.emailOnChanged(String email) = _EmailOnChanged;
  const factory SignUpFormEvent.passwordOnChanged(String password) = _PasswordOnChanged;

  const factory SignUpFormEvent.signUpWithGooglePressed() = _SignUpWithGooglePressed;
}
