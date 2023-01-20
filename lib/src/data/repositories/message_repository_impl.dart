import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:joblance_firebase/src/common/const.dart';
import 'package:joblance_firebase/src/common/exception.dart';
import 'package:joblance_firebase/src/common/failure.dart';
import 'package:joblance_firebase/src/data/datasources/message_remote_data_source.dart';
import 'package:joblance_firebase/src/domain/entities/chat.dart';
import 'package:joblance_firebase/src/domain/repositories/message_repository.dart';

class MessageRepositoryImpl extends MessageRepository {
  MessageRepositoryImpl({required this.dataSource});
  
  final MessageRemoteDataSource dataSource;

  @override
  Future<Either<Failure, List<Chat>>> getMessages() async {
    try {
      final result = await dataSource.getMessages();
      return Right(result.map((e) => e.toEntity()).toList());
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on SocketException {
      return const Left(
        ConnectionFailure(ExceptionMessage.internetNotConnected),
      );
    }
  }

  @override
  Future<Either<Failure, List<Chat>>> getMessagesRecruiter() async {
    try {
      final result = await dataSource.getMessagesRecruiter();
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
