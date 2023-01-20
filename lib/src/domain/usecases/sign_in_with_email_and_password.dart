import 'package:dartz/dartz.dart';
import 'package:joblance_firebase/src/common/failure.dart';
import 'package:joblance_firebase/src/domain/repositories/auth_repository.dart';

class SignInWithEmailAndPassword {
  SignInWithEmailAndPassword(this.repository);
  final AuthRepository repository;

  Future<Either<Failure, void>> execute(String email, String password) {
    return repository.signInWithEmailAndPassword(email, password);
  }
}
