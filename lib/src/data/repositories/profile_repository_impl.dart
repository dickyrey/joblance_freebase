import 'package:dartz/dartz.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:joblance_firebase/src/common/exception.dart';
import 'package:joblance_firebase/src/common/failure.dart';
import 'package:joblance_firebase/src/common/network_info.dart';
import 'package:joblance_firebase/src/data/datasources/profile_data_source.dart';
import 'package:joblance_firebase/src/domain/entities/profile.dart';
import 'package:joblance_firebase/src/domain/repositories/profile_repository.dart';

class ProfileRepositoryImpl extends ProfileRepository {
  ProfileRepositoryImpl({
    required this.dataSource,
    required this.networkInfo,
  });

  final ProfileDataSource dataSource;
  final NetworkInfo networkInfo;
  @override
  Future<Either<Failure, void>> changeProfile(Profile profile) async {
    if (await networkInfo.isConnected) {
      try {
        final result = await dataSource.changeProfile(profile.toModel());
        return Right(result);
      } on FirebaseException catch (e) {
        if (e.message!.contains('permission-denied')) {
          return const Left(ServerFailure('permission-denied'));
        } else {
          return const Left(ConnectionFailure('network-request-failed'));
        }
      }
    } else {
      return const Left(ConnectionFailure('network-request-failed'));
    }
  }

  @override
  Future<Either<Failure, Profile>> getProfile() async {
    try {
      final result = await dataSource.getProfile();
      return Right(result.toEntity());
    } on FirebaseException catch (e) {
      if (e.message!.contains('permission-denied')) {
        return const Left(ServerFailure('permission-denied'));
      } else {
        return const Left(ConnectionFailure('network-request-failed'));
      }
    } on ServerException {
      return const Left(ServerFailure('not-signed-in'));
    }
  }
}
