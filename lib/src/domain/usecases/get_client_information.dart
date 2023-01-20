import 'package:dartz/dartz.dart';
import 'package:joblance_firebase/src/common/failure.dart';
import 'package:joblance_firebase/src/domain/entities/client.dart';
import 'package:joblance_firebase/src/domain/repositories/client_repository.dart';

class GetClientInformation {
  GetClientInformation(this.repository);
  final ClientRepository repository;

  Future<Either<Failure, Client>> execute() {
    return repository.getClientInformation();
  }
}
