import 'package:dartz/dartz.dart';
import 'package:joblance_firebase/src/common/failure.dart';
import 'package:joblance_firebase/src/domain/entities/profile.dart';
import 'package:joblance_firebase/src/domain/repositories/auth_repository.dart';

class GetProfile {
  GetProfile(this.repository);
  final AuthRepository repository;

  Future<Either<Failure, Profile>> execute() {
    return repository.getProfile();
  }
}
