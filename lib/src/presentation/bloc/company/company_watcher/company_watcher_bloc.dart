import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:joblance_firebase/src/domain/entities/company.dart';
import 'package:joblance_firebase/src/domain/usecases/company/get_company.dart';

part 'company_watcher_event.dart';
part 'company_watcher_state.dart';
part 'company_watcher_bloc.freezed.dart';

class CompanyWatcherBloc extends Bloc<CompanyWatcherEvent, CompanyWatcherState> {
  CompanyWatcherBloc(this._getCompanyProfile) : super(const _Initial()) {
    on<CompanyWatcherEvent>((event, emit) async {
      await event.map(
        fetchCompany: (e) async {
          emit(const CompanyWatcherState.loadInProgress());
          final result = await _getCompanyProfile.execute();
          result.fold(
            (f) => emit(CompanyWatcherState.loadInFailure(f.message)),
            (data) => emit(CompanyWatcherState.loadInSuccess(data)),
          );
        },
      );
    });
  }
  final GetCompanyProfile _getCompanyProfile;
}
