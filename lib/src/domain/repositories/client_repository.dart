import 'package:dartz/dartz.dart';
import 'package:joblance_firebase/src/common/failure.dart';
import 'package:joblance_firebase/src/domain/entities/client.dart';

// ignore: one_member_abstracts
abstract class ClientRepository {
  Future<Either<Failure, Client>> getClientInformation();
}
