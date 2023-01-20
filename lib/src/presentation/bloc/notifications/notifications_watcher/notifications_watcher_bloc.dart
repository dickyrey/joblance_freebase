import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:joblance_firebase/src/domain/entities/notification.dart';
import 'package:joblance_firebase/src/domain/usecases/get_notifications.dart';

part 'notifications_watcher_event.dart';
part 'notifications_watcher_state.dart';
part 'notifications_watcher_bloc.freezed.dart';

class NotificationsWatcherBloc extends Bloc<NotificationsWatcherEvent, NotificationsWatcherState> {
  NotificationsWatcherBloc(this._getNotifications) : super(const NotificationsWatcherState.initial()) {
    on<NotificationsWatcherEvent>((event, emit) async {
      await event.map(
        fetchNotifications: (_) async {
          emit(const NotificationsWatcherState.loading());
          final result = await _getNotifications.execute();
          result.fold(
            (f) => emit( NotificationsWatcherState.error(f.message)),
            (data) => emit(NotificationsWatcherState.loaded(data)),
          );
        },
      );
    });
  }
  final GetNotifications _getNotifications;
}
