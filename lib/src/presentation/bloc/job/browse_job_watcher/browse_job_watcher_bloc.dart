import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:joblance_firebase/src/domain/entities/job.dart';
import 'package:joblance_firebase/src/domain/usecases/get_browse_jobs.dart';

part 'browse_job_watcher_event.dart';
part 'browse_job_watcher_state.dart';
part 'browse_job_watcher_bloc.freezed.dart';

class BrowseJobWatcherBloc extends Bloc<BrowseJobWatcherEvent, BrowseJobWatcherState> {
  BrowseJobWatcherBloc(this._getBroseJobs) : super(const BrowseJobWatcherState.initial()) {
    on<BrowseJobWatcherEvent>((event, emit) async {
       await event.map(
        fetchJobs: (event) async {
          emit(const BrowseJobWatcherState.loading());
          final result = await _getBroseJobs.execute();
          result.fold(
            (f) => emit(BrowseJobWatcherState.error(f.message)),
            (data) => emit(BrowseJobWatcherState.loaded(data)),
          );
        },
      );
    });
  }
  final GetBrowseJobs _getBroseJobs;
}
