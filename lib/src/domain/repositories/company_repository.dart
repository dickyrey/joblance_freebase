import 'package:dartz/dartz.dart';
import 'package:joblance_firebase/src/common/failure.dart';
import 'package:joblance_firebase/src/domain/entities/company.dart';

abstract class CompanyRepository {
  Future<Either<Failure, Company>> getCompanyProfile();
  Future<Either<Failure, void>> createCompany(Company company);
  Future<Either<Failure, void>> updateCompanyProfile(Company company);
}
