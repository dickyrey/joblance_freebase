import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:joblance_firebase/src/common/const.dart';
import 'package:joblance_firebase/src/common/exception.dart';
import 'package:joblance_firebase/src/common/failure.dart';
import 'package:joblance_firebase/src/data/datasources/auth_remote_data_source.dart';
import 'package:joblance_firebase/src/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl({required this.dataSource});

  final AuthRemoteDataSource dataSource;

  @override
  Future<Either<Failure, void>> registerWithEmailAndPassword(
    String username,
    String email,
    String phone,
    String password,
  ) async {
    try {
      final result = await dataSource.registerWithEmailAndPassword(
        username,
        email,
        phone,
        password,
      );
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on SocketException {
      return const Left(ConnectionFailure(ExceptionMessage.failedToConnect));
    }
  }

  @override
  Future<Either<Failure, void>> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      final result =
          await dataSource.signInWithEmailAndPassword(email, password);
      return Right(result);
    } on SocketException {
      return const Left(ConnectionFailure(ExceptionMessage.failedToConnect));
    } on ServerException catch (e) {
      return Left(ConnectionFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, void>> signOut() async {
    try {
      final result = await dataSource.signOut();
      return Right(result);
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on SocketException {
      return const Left(ConnectionFailure(ExceptionMessage.failedToConnect));
    }
  }
}
