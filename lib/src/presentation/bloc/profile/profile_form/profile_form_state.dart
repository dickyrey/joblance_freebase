part of 'profile_form_bloc.dart';

@freezed
class ProfileFormState with _$ProfileFormState {
  const factory ProfileFormState({
    required RequestState state,
    required String message,
    required String fullName,
    required String email,
    required File? imageFile,
    required String phoneNumber,
    required String position,
    required String company,
    required String location,
    required String about,
    required String address,
    required Timestamp? birthday,
  }) = _ProfileFormState;

  factory ProfileFormState.initial() =>  const ProfileFormState(
        state: RequestState.empty,
        message: '',
        fullName: '',
        email: '',
        imageFile: null,
        phoneNumber: '',
        position: '',
        company: '',
        location: '',
        about: '',
        address: '',
        birthday: null,
      );
}
