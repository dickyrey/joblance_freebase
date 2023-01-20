import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:joblance_firebase/src/common/enums.dart';
import 'package:joblance_firebase/src/domain/entities/category.dart';
import 'package:joblance_firebase/src/domain/entities/interest.dart';
import 'package:joblance_firebase/src/domain/usecases/get_categories.dart';

part 'interest_form_event.dart';
part 'interest_form_state.dart';
part 'interest_form_bloc.freezed.dart';

class InterestFormBloc extends Bloc<InterestFormEvent, InterestFormState> {
  InterestFormBloc(this._getCategories) : super(InterestFormState.initial()) {
    on<InterestFormEvent>((event, emit) async {
      await event.map(
        fetchCategories: (_) async {
          emit(state.copyWith(state: RequestState.loading));
          final result = await _getCategories.execute();
          result.fold(
            (f) => emit(
              state.copyWith(
                state: RequestState.error,
                message: f.message,
              ),
            ),
            (data) {
              final interest = data.map((e) => Interest(category: e)).toList();
              emit(
                state.copyWith(
                  state: RequestState.empty,
                  categories: data,
                  selectedJobs: interest,
                ),
              );
            },
          );
        },
        sendInterest: (_) async {
          // final _selected =
          //     state.selectedJobs.where((e) => e.value == true).toList();
          //     print(_selected.map((e) => e.category.name).toList());
          emit(state.copyWith(state: RequestState.loading));
          await Future.delayed(const Duration(seconds: 2), () {
            emit(state.copyWith(state: RequestState.loaded));
          });
        },
      );
    });
  }
  final GetCategories _getCategories;
}
