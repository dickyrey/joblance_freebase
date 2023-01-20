import 'package:dartz/dartz.dart';
import 'package:joblance_firebase/src/common/failure.dart';
import 'package:joblance_firebase/src/domain/repositories/authentication_repository.dart';

class SignInWithEmail {
  SignInWithEmail(this.repository);
  final AuthenticationRepository repository;

  Future<Either<Failure, void>> execute(String email, String password) {
    return repository.signInWithEmailAndPassword(email, password);
  }
}
