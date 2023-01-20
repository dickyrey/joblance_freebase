import 'package:dartz/dartz.dart';
import 'package:joblance_firebase/src/common/failure.dart';
import 'package:joblance_firebase/src/domain/repositories/auth_repository.dart';

class RegisterWithEmailAndPassword {
  RegisterWithEmailAndPassword(this.repository);
  final AuthRepository repository;

  Future<Either<Failure, void>> execute(
    String username,
    String email,
    String phone,
    String password,
  ) {
    return repository.registerWithEmailAndPassword(
      username,
      email,
      phone,
      password,
    );
  }
}
