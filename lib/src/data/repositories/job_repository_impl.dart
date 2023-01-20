import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:joblance_firebase/src/common/const.dart';
import 'package:joblance_firebase/src/common/exception.dart';
import 'package:joblance_firebase/src/common/failure.dart';
import 'package:joblance_firebase/src/data/datasources/job_remote_data_source.dart';
import 'package:joblance_firebase/src/domain/entities/job.dart';
import 'package:joblance_firebase/src/domain/entities/job_detail.dart';
import 'package:joblance_firebase/src/domain/repositories/job_repository.dart';

class JobRepositoryImpl extends JobRepository {
  JobRepositoryImpl({required this.dataSource});

  final JobRemoteDataSource dataSource;

  @override
  Future<Either<Failure, List<Job>>> getPopularJobs() async {
    try {
      final result = await dataSource.getPopularJobs();
      return Right(result.map((e) => e.toEntity()).toList());
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on SocketException {
      return const Left(
        ConnectionFailure(ExceptionMessage.internetNotConnected),
      );
    }
  }

  @override
  Future<Either<Failure, List<Job>>> getRecentlyAddedJobs() async {
    try {
      final result = await dataSource.getRecentlyAddedJobs();
      return Right(result.map((e) => e.toEntity()).toList());
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on SocketException {
      return const Left(
        ConnectionFailure(ExceptionMessage.internetNotConnected),
      );
    }
  }

  @override
  Future<Either<Failure, List<Job>>> getSavedJobs() async {
    try {
      final result = await dataSource.getSavedJobs();
      return Right(result.map((e) => e.toEntity()).toList());
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on SocketException {
      return const Left(
        ConnectionFailure(ExceptionMessage.internetNotConnected),
      );
    }
  }

  @override
  Future<Either<Failure, JobDetail>> getJobDetails(int id) async {
    try {
      final result = await dataSource.getJobDetails(id);
      return Right(result.toEntity());
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on SocketException {
      return const Left(
        ConnectionFailure(ExceptionMessage.internetNotConnected),
      );
    }
  }

  @override
  Future<Either<Failure, List<Job>>> getActiveJobs() async {
    try {
      final result = await dataSource.getActiveJobs();
      return Right(result.map((e) => e.toEntity()).toList());
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on SocketException {
      return const Left(
        ConnectionFailure(ExceptionMessage.internetNotConnected),
      );
    }
  }

  @override
  Future<Either<Failure, List<Job>>> getBrowseJobs() async {
    try {
      final result = await dataSource.getPopularJobs();
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
