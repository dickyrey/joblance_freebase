part of 'create_company_form_bloc.dart';

@freezed
class CreateCompanyFormState with _$CreateCompanyFormState {
  const factory CreateCompanyFormState({
    required RequestState state,
    required String message,
    required bool isSubmitting,
    required String name,
    required String email,
    required String totalEmployee,
  }) = _CreateCompanyFormState;

  factory CreateCompanyFormState.init() {
    return const CreateCompanyFormState(
      state: RequestState.empty,
      message: '',
      isSubmitting: false,
      name: '',
      email: '',
      totalEmployee: '',
    );
  }
}
