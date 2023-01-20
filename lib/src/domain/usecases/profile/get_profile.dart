import 'package:dartz/dartz.dart';
import 'package:joblance_firebase/src/common/failure.dart';
import 'package:joblance_firebase/src/domain/entities/profile.dart';
import 'package:joblance_firebase/src/domain/repositories/authentication_repository.dart';

class GetProfile {
  GetProfile(this.repository);
  final AuthenticationRepository repository;

  Future<Either<Failure, Profile>> execute() {
    return repository.getProfile();
  }
}
