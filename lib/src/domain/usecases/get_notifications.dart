import 'package:dartz/dartz.dart';
import 'package:joblance_firebase/src/common/failure.dart';
import 'package:joblance_firebase/src/domain/entities/notification.dart';
import 'package:joblance_firebase/src/domain/repositories/notifications_repository.dart';

class GetNotifications {
  GetNotifications(this.repository);
  final NotificationsRepository repository;

  Future<Either<Failure, List<Notifications>>> execute() {
    return repository.getNotifications();
  }
}
