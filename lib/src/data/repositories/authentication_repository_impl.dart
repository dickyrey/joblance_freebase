import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:joblance_firebase/src/common/exception.dart';
import 'package:joblance_firebase/src/common/failure.dart';
import 'package:joblance_firebase/src/data/datasources/authentication_remote_data_source.dart';
import 'package:joblance_firebase/src/domain/entities/profile.dart';
import 'package:joblance_firebase/src/domain/repositories/authentication_repository.dart';

class AuthenticationRepositoryImpl extends AuthenticationRepository {
  AuthenticationRepositoryImpl({required this.dataSource});
  final AuthenticationRemoteDataSource dataSource;

  @override
  Future<Either<Failure, Profile>> getProfile() async {
    try {
      final result = await dataSource.getProfile();
      return Right(result.toEntity());
    } on FirebaseException catch (e) {
      if (e.message!.contains('permission-denied')) {
        return const Left(ServerFailure('permission-denied'));
      } else {
        return const Left(ConnectionFailure('network-request-failed'));
      }
    } on ServerException {
      return const Left(ServerFailure('not-signed-in'));
    }
  }

  @override
  Future<Either<Failure, void>> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    try {
      final result = await dataSource.signinWithEmailAndPassword(
        email,
        password,
      );
      return Right(result);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password') {
        return const Left(ServerFailure('wrong-password'));
      } else if (e.code == 'user-not-found') {
        return const Left(ServerFailure('user-not-found'));
      } else if (e.code == 'network-request-failed') {
        return const Left(ServerFailure('network-request-failed'));
      } else {
        return const Left(ConnectionFailure('network-request-failed'));
      }
    }
  }

  @override
  Future<Either<Failure, void>> createUserWithEmailAndPassword({
    required Profile profile,
    required String password,
  }) async {
    try {
      final result = await dataSource.createUserWithEmailAndPassword(
        profile: profile.toModel(),
        password: password,
      );
      return Right(result);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return const Left(ServerFailure('email-already-in-use'));
      } else if (e.code == 'network-request-failed') {
        return const Left(ServerFailure('network-request-failed'));
      } else {
        return const Left(ConnectionFailure('network-request-failed'));
      }
    }
  }

  @override
  Future<Either<Failure, void>> signInWithGoogle() async {
    try {
      final result = await dataSource.signInWithGoogle();
      return Right(result);
    } catch (e) {
      return const Left(ConnectionFailure('network-request-failed'));
    }
  }

  @override
  Future<Either<Failure, void>> signOutUser() async {
    try {
      final result = await dataSource.signOutUser();
      return Right(result);
    } catch (e) {
      return const Left(ConnectionFailure('Failed to connect'));
    }
  }
}
