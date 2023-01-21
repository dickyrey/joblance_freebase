import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:joblance_firebase/src/common/failure.dart';
import 'package:joblance_firebase/src/data/datasources/auth_data_source.dart';
import 'package:joblance_firebase/src/domain/entities/profile.dart';
import 'package:joblance_firebase/src/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl({required this.dataSource});
  final AuthRemoteDataSource dataSource;

  @override
  Future<Either<Failure, void>> signInWithEmail(
    String email,
    String password,
  ) async {
    try {
      final result = await dataSource.signinWithEmail(
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
  Future<Either<Failure, void>> createUserWithEmail({
    required Profile profile,
    required String password,
  }) async {
    try {
      final result = await dataSource.createUserWithEmail(
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
  
  @override
  Future<Either<Failure, bool>> checkAuthStatus() async {
    try {
      final result = await dataSource.checkAuthStatus();
      return Right(result);
    } catch (e) {
      return const Left(ConnectionFailure('Failed to connect'));
    }
  }
}
