import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:joblance_firebase/src/domain/entities/applicant.dart';
import 'package:joblance_firebase/src/domain/usecases/get_applicants.dart';

part 'applicant_watcher_event.dart';
part 'applicant_watcher_state.dart';
part 'applicant_watcher_bloc.freezed.dart';

class ApplicantWatcherBloc extends Bloc<ApplicantWatcherEvent, ApplicantWatcherState> {
  ApplicantWatcherBloc(this._getApplicants) : super(const ApplicantWatcherState.initial()) {
    on<ApplicantWatcherEvent>((event, emit) async {
      await event.map(
        fetchApplicants: (_) async {
          emit(const ApplicantWatcherState.loading());
          final result = await _getApplicants.execute();
          result.fold(
            (f) => emit(ApplicantWatcherState.error(f.message)),
            (data) => emit(ApplicantWatcherState.loaded(data)),
          );
        },
      );
    });
  }
  final GetApplicants _getApplicants;
}
