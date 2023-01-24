import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:joblance_firebase/src/common/enums.dart';
import 'package:joblance_firebase/src/domain/entities/company.dart';
import 'package:joblance_firebase/src/domain/usecases/company/create_company_profile.dart';

part 'create_company_form_event.dart';
part 'create_company_form_state.dart';
part 'create_company_form_bloc.freezed.dart';

class CreateCompanyFormBloc
    extends Bloc<CreateCompanyFormEvent, CreateCompanyFormState> {
  CreateCompanyFormBloc(this._createCompany)
      : super(CreateCompanyFormState.init()) {
    on<CreateCompanyFormEvent>((event, emit) async {
      await event.map(
        createCompanyPressed: (e) async {
          emit(state.copyWith(state: RequestState.loading, isSubmitting: true));
          final result = await _createCompany.execute(
            Company(
              id: '',
              name: state.name,
              image: '',
              email: state.email,
              phone: '',
              address: '',
              totalEmployee: int.parse(state.totalEmployee),
              createdAt: Timestamp.now(),
            ),
          );
          result.fold(
            (failure) => emit(
              state.copyWith(
                state: RequestState.error,
                message: failure.message,
                isSubmitting: true,
              ),
            ),
            (data) => emit(
              state.copyWith(
                state: RequestState.loaded,
                isSubmitting: true,
              ),
            ),
          );
        },
        nameOnChanged: (e) {
          emit(state.copyWith(name: e.val));
        },
        emailOnChanged: (e) {
          emit(state.copyWith(email: e.val));
        },
        totalEmployeeOnChanged: (e) {
          emit(state.copyWith(totalEmployee: e.val));
        },
      );
    });
  }
  final CreateCompany _createCompany;
}
