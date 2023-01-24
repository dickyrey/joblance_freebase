part of 'profile_form_bloc.dart';

@freezed
class ProfileFormEvent with _$ProfileFormEvent {
  const factory ProfileFormEvent.init() =_Init;
  const factory ProfileFormEvent.initialized(Profile profile) =_Initialized;
  const factory ProfileFormEvent.saveChangesPressed(Profile profile) =_SaveChangesPressed;

  //TextField
  const factory ProfileFormEvent.fullNameOnChanged(String value) =_FullNameOnChanged;
  const factory ProfileFormEvent.addressOnChanged(String value) =_AddressOnChanged;
  const factory ProfileFormEvent.positionOnChanged(String value) =_PositionOnChanged;
  const factory ProfileFormEvent.companyOnChanged(String value) =_CompanyOnChanged;
  const factory ProfileFormEvent.locationOnChanged(String value) =_LocationOnChanged;
  const factory ProfileFormEvent.phoneNumberOnChanged(String value) =_PhoneNumberOnChanged;
  const factory ProfileFormEvent.aboutOnChanged(String value) =_AboutOnChanged;
  const factory ProfileFormEvent.birthdayOnChanged(Timestamp value) =_BirthdayOnChanged;
}
