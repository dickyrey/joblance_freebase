import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:joblance_firebase/src/common/const.dart';
import 'package:joblance_firebase/src/common/enums.dart';
import 'package:joblance_firebase/src/domain/entities/profile.dart';
import 'package:joblance_firebase/src/domain/usecases/auth/create_user.dart';

part 'sign_up_form_bloc.freezed.dart';
part 'sign_up_form_event.dart';
part 'sign_up_form_state.dart';

class SignUpFormBloc extends Bloc<SignUpFormEvent, SignUpFormState> {
  SignUpFormBloc(this._createUser) : super(SignUpFormState.initial()) {
    on<SignUpFormEvent>((event, emit) async {
      await event.map(
        signUpPressed: (event) async {
          emit(state.copyWith(state: RequestState.loading));
          final result = await _createUser.execute(
            profile: Profile(
              id: '',
              email: state.email,
              fullName: state.fullName,
              image: Const.profileImage,
              phoneNumber: state.phoneNumber,
              position: '',
              company: '',
              location: '',
              about: '',
              birthday: Timestamp.now(),
              createdAt: Timestamp.now(),
            ),
            password: state.password,
          );
          result.fold(
            (failure) => emit(
              state.copyWith(
                state: RequestState.error,
                message: failure.message,
              ),
            ),
            (data) => emit(
              state.copyWith(
                state: RequestState.loaded,
              ),
            ),
          );
        },
        fullNameOnChanged: (event) {
          emit(
            state.copyWith(
              fullName: event.fullName,
              state: RequestState.empty,
            ),
          );
        },
        phoneNumberOnChanged: (event) {
          emit(
            state.copyWith(
              phoneNumber: event.phoneNumber,
              state: RequestState.empty,
            ),
          );
        },
        emailOnChanged: (event) {
          emit(
            state.copyWith(
              email: event.email,
              state: RequestState.empty,
            ),
          );
        },
        passwordOnChanged: (event) {
          emit(
            state.copyWith(
              password: event.password,
              state: RequestState.empty,
            ),
          );
        },
      );
    });
  }
  final CreateUserWithEmail _createUser;
}
