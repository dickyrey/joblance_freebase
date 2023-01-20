import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:joblance_firebase/src/domain/entities/job.dart';
import 'package:joblance_firebase/src/domain/usecases/get_popular_jobs.dart';

part 'popular_job_watcher_event.dart';
part 'popular_job_watcher_state.dart';
part 'popular_job_watcher_bloc.freezed.dart';

class PopularJobWatcherBloc extends Bloc<PopularJobWatcherEvent, PopularJobWatcherState> {
  PopularJobWatcherBloc(this._getPopularJobs) : super(const PopularJobWatcherState.initial()) {
    on<PopularJobWatcherEvent>((event, emit) async {
      await event.map(
        fetchPopularJobs: (_) async {
          emit(const PopularJobWatcherState.loading());
          final result = await _getPopularJobs.execute();
          result.fold(
            (e) => emit(PopularJobWatcherState.error(e.message)),
            (data) => emit(PopularJobWatcherState.loaded(data)),
          );
        },
      );
    });
  }
  final GetPopularJobs _getPopularJobs;
}
