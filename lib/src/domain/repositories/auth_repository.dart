import 'package:dartz/dartz.dart';
import 'package:joblance_firebase/src/common/failure.dart';

abstract class AuthRepository {
  Future<Either<Failure, void>> registerWithEmailAndPassword(
    String username,
    String email,
    String phone,
    String password,
  );
  Future<Either<Failure, void>> signInWithEmailAndPassword(
    String email,
    String password,
  );
  Future<Either<Failure, void>> signOut();
}
