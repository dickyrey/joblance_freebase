import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:joblance_firebase/src/domain/entities/job.dart';
import 'package:joblance_firebase/src/domain/usecases/get_saved_jobs.dart';

part 'saved_job_watcher_event.dart';
part 'saved_job_watcher_state.dart';
part 'saved_job_watcher_bloc.freezed.dart';

class SavedJobWatcherBloc extends Bloc<SavedJobWatcherEvent, SavedJobWatcherState> {
  SavedJobWatcherBloc(this._getSavedJobs) : super(const SavedJobWatcherState.initial()) {
    on<SavedJobWatcherEvent>((event, emit) async {
      await event.map(
        fetchSavedJobs: (_) async {
          emit(const SavedJobWatcherState.loading());
          final result = await _getSavedJobs.execute();
          emit(
            result.fold(
              (f) => SavedJobWatcherState.error(f.message),
              (data) => SavedJobWatcherState.loaded(data),
            ),
          );
        },
      );
    });
  }
  final GetSavedJobs _getSavedJobs;
}
