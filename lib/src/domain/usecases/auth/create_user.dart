import 'package:dartz/dartz.dart';
import 'package:joblance_firebase/src/common/failure.dart';
import 'package:joblance_firebase/src/domain/entities/profile.dart';
import 'package:joblance_firebase/src/domain/repositories/auth_repository.dart';

class CreateUserWithEmail {
  CreateUserWithEmail(this.repository);
  final AuthRepository repository;

  Future<Either<Failure, void>> execute({
    required Profile profile,
    required String password,
  }) {
    return repository.createUserWithEmail(
      profile: profile,
      password: password,
    );
  }
}
