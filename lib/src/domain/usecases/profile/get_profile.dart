import 'package:dartz/dartz.dart';
import 'package:joblance_firebase/src/common/failure.dart';
import 'package:joblance_firebase/src/domain/entities/profile.dart';
import 'package:joblance_firebase/src/domain/repositories/profile_repository.dart';

class GetProfile {
  GetProfile(this.repository);
  final ProfileRepository repository;

  Future<Either<Failure, Profile>> execute() {
    return repository.getProfile();
  }
}
