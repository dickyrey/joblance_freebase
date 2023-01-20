import 'package:dartz/dartz.dart';
import 'package:joblance_firebase/src/common/failure.dart';
import 'package:joblance_firebase/src/domain/entities/profile.dart';
import 'package:joblance_firebase/src/domain/repositories/authentication_repository.dart';

class CreateUserWithEmail {
  CreateUserWithEmail(this.repository);
  final AuthenticationRepository repository;

  Future<Either<Failure, void>> execute({
    required Profile profile,
    required String password,
  }) {
    return repository.createUserWithEmailAndPassword(
      profile: profile,
      password: password,
    );
  }
}
