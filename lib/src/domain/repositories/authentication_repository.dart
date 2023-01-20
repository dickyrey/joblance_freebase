import 'package:dartz/dartz.dart';
import 'package:joblance_firebase/src/common/failure.dart';
import 'package:joblance_firebase/src/domain/entities/profile.dart';

abstract class AuthenticationRepository {
  Future<Either<Failure, Profile>> getProfile();
  Future<Either<Failure, void>> signInWithEmailAndPassword(
    String email,
    String password,
  );
  Future<Either<Failure, void>> createUserWithEmailAndPassword({
    required Profile profile,
    required String password,
  });

  Future<Either<Failure, void>> signInWithGoogle();
  Future<Either<Failure, void>> signOutUser();
}
