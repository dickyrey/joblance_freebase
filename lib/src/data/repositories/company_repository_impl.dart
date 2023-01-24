import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:joblance_firebase/src/common/failure.dart';
import 'package:joblance_firebase/src/data/datasources/company_data_source.dart';
import 'package:joblance_firebase/src/domain/entities/company.dart';
import 'package:joblance_firebase/src/domain/repositories/company_repository.dart';

class CompanyRepositoryImpl extends CompanyRepository {
  CompanyRepositoryImpl(this.dataSource);

  final CompanyDataSource dataSource;
  @override
  Future<Either<Failure, void>> createCompany(Company company) async {
    try {
      final result = await dataSource.createCompany(company.toModel());
      return Right(result);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password') {
        return const Left(ServerFailure('wrong-password'));
      } else if (e.code == 'user-not-found') {
        return const Left(ServerFailure('user-not-found'));
      } else if (e.code == 'network-request-failed') {
        return const Left(ServerFailure('network-request-failed'));
      } else {
        return const Left(ConnectionFailure('network-request-failed'));
      }
    }
  }

  @override
  Future<Either<Failure, Company>> getCompanyProfile() async {
    try {
      final result = await dataSource.getCompanyProfile();
      return Right(result.toEntity());
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password') {
        return const Left(ServerFailure('wrong-password'));
      } else if (e.code == 'user-not-found') {
        return const Left(ServerFailure('user-not-found'));
      } else if (e.code == 'network-request-failed') {
        return const Left(ServerFailure('network-request-failed'));
      } else {
        return const Left(ConnectionFailure('network-request-failed'));
      }
    }
  }

  @override
  Future<Either<Failure, void>> updateCompanyProfile(Company company) async {
    try {
      final result = await dataSource.createCompany(company.toModel());
      return Right(result);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password') {
        return const Left(ServerFailure('wrong-password'));
      } else if (e.code == 'user-not-found') {
        return const Left(ServerFailure('user-not-found'));
      } else if (e.code == 'network-request-failed') {
        return const Left(ServerFailure('network-request-failed'));
      } else {
        return const Left(ConnectionFailure('network-request-failed'));
      }
    }
  }
}
