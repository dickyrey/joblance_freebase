part of 'create_company_form_bloc.dart';

@freezed
class CreateCompanyFormEvent with _$CreateCompanyFormEvent {
  const factory CreateCompanyFormEvent.createCompanyPressed() = _Started;

  const factory CreateCompanyFormEvent.nameOnChanged(String val) = _NameOnChanged;
  const factory CreateCompanyFormEvent.emailOnChanged(String val) = _EmailOnChanged;
  const factory CreateCompanyFormEvent.totalEmployeeOnChanged(String val) = _TotalEmployeeOnChanged;
}
