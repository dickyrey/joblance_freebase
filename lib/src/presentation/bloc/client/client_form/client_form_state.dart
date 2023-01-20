part of 'client_form_bloc.dart';

@freezed
class ClientFormState with _$ClientFormState {
  const factory ClientFormState({
    required RequestState state,
    required String message,
    required String name,
    required String position,
    required String address,
    required String birthdate,
    required String phone,
    required String email,
    required File? imageFile,
  }) = _ClientFormState;

  factory ClientFormState.initial() => const ClientFormState(
        state: RequestState.empty,
        message: '',
        name: '',
        position: '',
        address: '',
        birthdate: '',
        phone: '',
        email: '',
        imageFile: null,
      );
}
