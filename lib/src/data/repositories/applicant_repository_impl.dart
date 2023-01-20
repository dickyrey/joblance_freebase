import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:joblance_firebase/src/common/const.dart';
import 'package:joblance_firebase/src/common/exception.dart';
import 'package:joblance_firebase/src/common/failure.dart';
import 'package:joblance_firebase/src/data/datasources/applicant_remote_data_source.dart';
import 'package:joblance_firebase/src/domain/entities/applicant.dart';
import 'package:joblance_firebase/src/domain/repositories/applicant_repository.dart';

class ApplicantRepositoryImpl extends ApplicantRepository {
  ApplicantRepositoryImpl({required this.dataSource});
  
  final ApplicantRemoteDataSource dataSource;

  @override
  Future<Either<Failure, List<Applicant>>> getApplicants() async {
    try {
      final result = await dataSource.getApplicants();
      return Right(result.map((e) => e.toEntity()).toList());
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on SocketException {
      return const Left(
        ConnectionFailure(ExceptionMessage.internetNotConnected),
      );
    }
  }
}
