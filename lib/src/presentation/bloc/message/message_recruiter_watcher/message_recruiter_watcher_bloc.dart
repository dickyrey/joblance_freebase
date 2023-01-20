import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:joblance_firebase/src/domain/entities/chat.dart';
import 'package:joblance_firebase/src/domain/usecases/get_messages_recruiter.dart';

part 'message_recruiter_watcher_event.dart';
part 'message_recruiter_watcher_state.dart';
part 'message_recruiter_watcher_bloc.freezed.dart';

class MessageRecruiterWatcherBloc extends Bloc<MessageRecruiterWatcherEvent, MessageRecruiterWatcherState> {
  MessageRecruiterWatcherBloc(this._getMessages) : super(const MessageRecruiterWatcherState.initial()) {
    on<MessageRecruiterWatcherEvent>((event, emit) async {
      await event.map(
        fetchMessages: (_) async {
          emit(const MessageRecruiterWatcherState.loading());
          final result = await _getMessages.execute();
          emit(
            result.fold(
              (f) => MessageRecruiterWatcherState.error(f.message),
              (data) => MessageRecruiterWatcherState.loaded(data),
            ),
          );
        },
      );
    });
  }
  final GetMessagesRecruiter _getMessages;
}
