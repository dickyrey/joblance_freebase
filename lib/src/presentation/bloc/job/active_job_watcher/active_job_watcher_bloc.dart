import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:joblance_firebase/src/domain/entities/job.dart';
import 'package:joblance_firebase/src/domain/usecases/get_active_jobs.dart';

part 'active_job_watcher_event.dart';
part 'active_job_watcher_state.dart';
part 'active_job_watcher_bloc.freezed.dart';

class ActiveJobWatcherBloc extends Bloc<ActiveJobWatcherEvent, ActiveJobWatcherState> {
  ActiveJobWatcherBloc(this._getActiveJobs) : super(const ActiveJobWatcherState.initial()) {
    on<ActiveJobWatcherEvent>((event, emit) async {
      await event.map(
        fetchActiveJobs: (event) async {
          emit(const ActiveJobWatcherState.loading());
          final result = await _getActiveJobs.execute();
          result.fold(
            (f) => emit(ActiveJobWatcherState.error(f.message)),
            (data) => emit(ActiveJobWatcherState.loaded(data)),
          );
        },
      );
    });
  }
  final GetActiveJobs _getActiveJobs;
}
