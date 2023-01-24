import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:joblance_firebase/src/common/failure.dart';
import 'package:joblance_firebase/src/domain/entities/profile.dart';
import 'package:joblance_firebase/src/domain/repositories/profile_repository.dart';

class ChangeProfile {
  ChangeProfile(this.repository);
  final ProfileRepository repository;

  Future<Either<Failure, void>> execute({
    required Profile profile,
    required File? imageFile,
  }) {
    return repository.changeProfile(
      profile: profile,
      imageFile: imageFile,
    );
  }
}
