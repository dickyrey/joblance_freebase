part of 'client_form_bloc.dart';

@freezed
class ClientFormEvent with _$ClientFormEvent {
  const factory ClientFormEvent.init(Client client) = _Init;

  // TextFields Events
  const factory ClientFormEvent.nameOnChanged(String name) = _NameOnChanged;
  const factory ClientFormEvent.positionOnChanged(String position) = _PositionOnChanged;
  const factory ClientFormEvent.addressOnChanged(String address) = _AddressOnChanged;
  const factory ClientFormEvent.phoneOnChanged(String phone) = _PhoneOnChanged;

  // DateTime Events
  const factory ClientFormEvent.birthdayOnChanged(BuildContext context) = _BirthdayOnChanged;

  // ImagePicker Events
  const factory ClientFormEvent.pickImage(ImageSource source) = _PickImage;

  // Button Events
  const factory ClientFormEvent.saveChanges() = _SaveChanges;

}
