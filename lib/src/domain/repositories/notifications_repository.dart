import 'package:dartz/dartz.dart';
import 'package:joblance_firebase/src/common/failure.dart';
import 'package:joblance_firebase/src/domain/entities/notification.dart';

// ignore: one_member_abstracts
abstract class NotificationsRepository {
  Future<Either<Failure, List<Notifications>>> getNotifications();
}
