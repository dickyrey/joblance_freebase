import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:joblance_firebase/src/domain/entities/client.dart';
import 'package:joblance_firebase/src/domain/usecases/get_client_information.dart';

part 'client_watcher_event.dart';
part 'client_watcher_state.dart';
part 'client_watcher_bloc.freezed.dart';

class ClientWatcherBloc extends Bloc<ClientWatcherEvent, ClientWatcherState> {
  ClientWatcherBloc(this._getClientInformation) : super(const ClientWatcherState.initial()) {
    on<ClientWatcherEvent>((event, emit) async {
      await event.map(
        fetchClientInformation: (_) async {
          emit(const ClientWatcherState.loading());
          final result = await _getClientInformation.execute();
          emit(
            result.fold(
              (f) => ClientWatcherState.error(f.message),
              (data) => ClientWatcherState.loaded(data),
            ),
          );
        },
      );
    });
  }
  final GetClientInformation _getClientInformation;
}
