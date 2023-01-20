import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:joblance_firebase/src/common/const.dart';
import 'package:joblance_firebase/src/common/exception.dart';
import 'package:joblance_firebase/src/common/failure.dart';
import 'package:joblance_firebase/src/data/datasources/client_remote_data_source.dart';
import 'package:joblance_firebase/src/domain/entities/client.dart';
import 'package:joblance_firebase/src/domain/repositories/client_repository.dart';

class ClientRepositoryImpl extends ClientRepository {
  ClientRepositoryImpl({required this.dataSource});

  final ClientRemoteDataSource dataSource;

  @override
  Future<Either<Failure, Client>> getClientInformation() async {
    try {
      final result = await dataSource.getClientInformation();
      return Right(result.toEntity());
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on SocketException {
      return const Left(
        ConnectionFailure(ExceptionMessage.internetNotConnected),
      );
    }
  }
}
