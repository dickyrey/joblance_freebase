import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:joblance_firebase/src/domain/entities/job.dart';
import 'package:joblance_firebase/src/domain/usecases/get_recently_added_jobs.dart';

part 'recently_added_job_watcher_event.dart';
part 'recently_added_job_watcher_state.dart';
part 'recently_added_job_watcher_bloc.freezed.dart';

class RecentlyAddedJobWatcherBloc extends Bloc<RecentlyAddedJobWatcherEvent, RecentlyAddedJobWatcherState> {
  RecentlyAddedJobWatcherBloc(this._getRecentlyAddedJobs) : super(const RecentlyAddedJobWatcherState.initial()) {
    on<RecentlyAddedJobWatcherEvent>((event, emit) async {
      await event.map(
        fetchRecentlyJobs: (_) async {
          emit(const RecentlyAddedJobWatcherState.loading());
          final result = await _getRecentlyAddedJobs.execute();
          result.fold(
            (e) => emit(RecentlyAddedJobWatcherState.error(e.message)),
            (data) => emit(RecentlyAddedJobWatcherState.loaded(data)),
          );
        },
      );
    });
  }
  final GetRecentlyAddedJobs _getRecentlyAddedJobs;
}
