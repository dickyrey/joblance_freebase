import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:joblance_firebase/src/common/const.dart';
import 'package:joblance_firebase/src/common/exception.dart';
import 'package:joblance_firebase/src/common/failure.dart';
import 'package:joblance_firebase/src/data/datasources/notifications_remote_data_source.dart';
import 'package:joblance_firebase/src/domain/entities/notification.dart';
import 'package:joblance_firebase/src/domain/repositories/notifications_repository.dart';

class NotificationsRepositoryImpl extends NotificationsRepository {
  NotificationsRepositoryImpl({required this.dataSource});
  
  final NotificationsRemoteDataSource dataSource;

  @override
  Future<Either<Failure, List<Notifications>>> getNotifications() async {
    try {
      final result = await dataSource.getNotifications();
      return Right(result.map((e) => e.toEntity()).toList());
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on SocketException {
      return const Left(
        ConnectionFailure(ExceptionMessage.internetNotConnected),
      );
    }
  }
}
