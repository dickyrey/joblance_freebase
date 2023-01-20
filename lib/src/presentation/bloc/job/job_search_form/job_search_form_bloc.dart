import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:joblance_firebase/src/common/enums.dart';
import 'package:joblance_firebase/src/domain/entities/job.dart';
import 'package:joblance_firebase/src/domain/usecases/get_browse_jobs.dart';

part 'job_search_form_event.dart';
part 'job_search_form_state.dart';
part 'job_search_form_bloc.freezed.dart';

class JobSearchFormBloc extends Bloc<JobSearchFormEvent, JobSearchFormState> {
  JobSearchFormBloc(this._getBrowseJobs) : super(JobSearchFormState.initial()) {
    on<JobSearchFormEvent>((event, emit) async {
      await event.map(
        fetchJobs: (_) async {
          emit(state.copyWith(state: RequestState.loading));
          final result = await _getBrowseJobs.execute();
          result.fold(
            (f) => emit(
              state.copyWith(
                state: RequestState.error,
                message: f.message,
              ),
            ),
            (data) => emit(
              state.copyWith(
                state: RequestState.empty,
                jobs: data,
                searchResult: data,
              ),
            ),
          );
        },
        searchChanged: (event) {
          emit(
            state.copyWith(
              searchResult: state.jobs.where((job) {
                final titleLower = job.position.toLowerCase();
                final searchLower = event.query.toLowerCase();

                return titleLower.contains(searchLower);
              }).toList(),
            ),
          );
        },
      );
    });
  }
  final GetBrowseJobs _getBrowseJobs;
}
