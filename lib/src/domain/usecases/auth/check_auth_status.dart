import 'package:dartz/dartz.dart';
import 'package:joblance_firebase/src/common/failure.dart';
import 'package:joblance_firebase/src/domain/repositories/authentication_repository.dart';

class CheckAuthStatus {
  CheckAuthStatus(this.repository);
  final AuthenticationRepository repository;

  Future<Either<Failure, bool>> execute() {
    return repository.checkAuthStatus();
  }
}
