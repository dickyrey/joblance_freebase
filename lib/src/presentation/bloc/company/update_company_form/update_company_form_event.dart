part of 'update_company_form_bloc.dart';

@freezed
class UpdateCompanyFormEvent with _$UpdateCompanyFormEvent {
  const factory UpdateCompanyFormEvent.pickImage(ImageSource source) = _PickImage;
}
