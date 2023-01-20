import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:joblance_firebase/src/common/enums.dart';
import 'package:joblance_firebase/src/domain/entities/category.dart';
import 'package:joblance_firebase/src/domain/usecases/get_categories.dart';

part 'job_form_event.dart';
part 'job_form_state.dart';
part 'job_form_bloc.freezed.dart';

class JobFormBloc extends Bloc<JobFormEvent, JobFormState> {
  JobFormBloc(this._getCategories) : super(JobFormState.initial()) {
    on<JobFormEvent>((event, emit) async {
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
            (data) => emit(
              state.copyWith(
                state: RequestState.loaded,
                categories: data,
              ),
            ),
          );
        },
        categoryOnChange: (event) {
          emit(state.copyWith(selectedCategory: event.category));
        },
        positionOnChanged: (event) {
          emit(state.copyWith(position: event.position));
        },
        experienceLevelOnChanged: (event) {
          emit(state.copyWith(experienceLevel: event.experienceLevel));
        },
        jobTypeOnChanged: (event) {
          emit(state.copyWith(jobType: event.jobType));
        },
        salaryOnChanged: (event) {
          emit(state.copyWith(salary: event.salary));
        },
        descriptionOnChanged: (event) {
          emit(state.copyWith(description: event.description));
        },
      );
    });
  }
  final GetCategories _getCategories;
}
