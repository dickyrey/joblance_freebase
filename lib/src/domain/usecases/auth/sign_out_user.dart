import 'package:dartz/dartz.dart';
import 'package:joblance_firebase/src/common/failure.dart';
import 'package:joblance_firebase/src/domain/repositories/authentication_repository.dart';

class SignOutUser {
  SignOutUser(this.repository);
  final AuthenticationRepository repository;

  Future<Either<Failure, void>> execute() {
    return repository.signOutUser();
  }
}
