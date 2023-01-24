part of 'update_company_form_bloc.dart';

@freezed
class UpdateCompanyFormState with _$UpdateCompanyFormState {
  const factory UpdateCompanyFormState({
    required RequestState state,
    required String message,
    required bool isSubmitting,
    required File? imageFile,
  }) = _UpdateCompanyFormState;

  factory UpdateCompanyFormState.init() {
    return const UpdateCompanyFormState(
      state: RequestState.empty,
      message: '',
      isSubmitting: false,
      imageFile: null,
    );
  }
}
