import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:joblance_firebase/src/domain/entities/chat.dart';
import 'package:joblance_firebase/src/domain/usecases/get_messages.dart';

part 'message_watcher_event.dart';
part 'message_watcher_state.dart';
part 'message_watcher_bloc.freezed.dart';

class MessageWatcherBloc extends Bloc<MessageWatcherEvent, MessageWatcherState> {
  MessageWatcherBloc(this._getMessages) : super(const MessageWatcherState.initial()) {
    on<MessageWatcherEvent>((event, emit) async {
      await event.map(
        fetchMessages: (_) async {
          emit(const MessageWatcherState.loading());
          final result = await _getMessages.execute();
          emit(
            result.fold(
              (f) => MessageWatcherState.error(f.message),
              (data) => MessageWatcherState.loaded(data),
            ),
          );
        },
      );
    });
  }
  final GetMessages _getMessages;
}
