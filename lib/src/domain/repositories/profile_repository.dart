import 'package:dartz/dartz.dart';
import 'package:joblance_firebase/src/common/failure.dart';
import 'package:joblance_firebase/src/domain/entities/profile.dart';

abstract class ProfileRepository {
  Future<Either<Failure, void>> changeProfile();
  Future<Either<Failure, Profile>> getProfile();
}
