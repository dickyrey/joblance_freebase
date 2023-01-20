// import 'dart:io';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:joblance_firebase/src/common/enums.dart';
// import 'package:joblance_firebase/src/domain/entities/profile.dart';

// part 'profile_form_bloc.freezed.dart';
// part 'profile_form_event.dart';
// part 'profile_form_state.dart';

// class ProfileFormBloc extends Bloc<ProfileFormEvent, ProfileFormState> {
//   ProfileFormBloc() : super(ProfileFormState.initial()) {
//     on<ProfileFormEvent>((event, emit) async {
//       await event.map(
//         initialized: (event) {
//           emit(state.copyWith(
//             state: RequestState.empty,
//             message: '',
//             fullName: event.profile.fullName,
//             image: null,
//             phoneNumber: event.profile.phoneNumber,
//             position: event.profile.phoneNumber,
//             company: event.profile.company,
//             location: event.profile.location,
//             about: event.profile.about,
//             birthday: event.profile.birthday,
//           ));
//         },
//         saveChangesPressed: (event) async {
//           emit(state.copyWith(state: RequestState.loading));
//           final result = await _update.execute(Profile(
//             id: event.profile.id,
//             email: event.profile.email,
//             fullName: state.fullName,
//             image: event.profile.image,
//             phoneNumber: state.phoneNumber,
//             position: state.position,
//             company: state.company,
//             location: state.location,
//             about: event.profile.about,
//             birthday: state.birthday ?? event.profile.birthday,
//             createdAt: event.profile.createdAt,
//           ));
//           result.fold(
//             (failure) => emit(state.copyWith(
//               state: RequestState.empty,
//               message: failure.message,
//             )),
//             (_) => emit(state.copyWith(state: RequestState.loaded)),
//           );
//         },
//         fullNameOnChanged: (event) {
//           emit(state.copyWith(fullName: event.value));
//         },
//         phoneNumberOnChanged: (event) {
//           emit(state.copyWith(phoneNumber: event.value));
//         },
//         positionOnChanged: (event) {
//           emit(state.copyWith(position: event.value));
//         },
//         companyOnChanged: (event) {
//           emit(state.copyWith(company: event.value));
//         },
//         locationOnChanged: (event) {
//           emit(state.copyWith(location: event.value));
//         },
//         aboutOnChanged: (event) {
//           emit(state.copyWith(about: event.value));
//         },
//         birthdayOnChanged: (event) {
//           emit(state.copyWith(birthday: event.value));
//         },
//       );
//     });final ChangeApplicantInformation _update;
//   }
// }
