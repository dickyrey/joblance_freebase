import 'package:dartz/dartz.dart';
import 'package:joblance_firebase/src/common/failure.dart';
import 'package:joblance_firebase/src/domain/repositories/auth_repository.dart';

class CheckAuthStatus {
  CheckAuthStatus(this.repository);
  final AuthRepository repository;

  Future<Either<Failure, bool>> execute() {
    return repository.checkAuthStatus();
  }
}
