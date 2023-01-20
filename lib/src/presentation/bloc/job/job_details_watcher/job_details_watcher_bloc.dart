import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:joblance_firebase/src/domain/entities/job_detail.dart';
import 'package:joblance_firebase/src/domain/usecases/get_job_details.dart';

part 'job_details_watcher_event.dart';
part 'job_details_watcher_state.dart';
part 'job_details_watcher_bloc.freezed.dart';

class JobDetailsWatcherBloc extends Bloc<JobDetailsWatcherEvent, JobDetailsWatcherState> {
  JobDetailsWatcherBloc(this._getJobDetails) : super(const JobDetailsWatcherState.initial()) {
    on<JobDetailsWatcherEvent>((event, emit) async {
      await event.map(
        fetchJobDetails: (_) async {
          emit(const JobDetailsWatcherState.loading());
          final result = await _getJobDetails.execute(event.id);
          emit(
            result.fold(
              (f) => JobDetailsWatcherState.error(f.message),
              (data) => JobDetailsWatcherState.loaded(data),
            ),
          );
        },
      );
    });
  }
  final GetJobDetails _getJobDetails;
}
