import 'package:dartz/dartz.dart';
import 'package:joblance_firebase/src/common/failure.dart';
import 'package:joblance_firebase/src/domain/entities/company.dart';
import 'package:joblance_firebase/src/domain/repositories/company_repository.dart';

class UpdateCompanyProfile {
  UpdateCompanyProfile(this.repository);
  final CompanyRepository repository;

  Future<Either<Failure, void>> execute(Company company) {
    return repository.updateCompanyProfile(company);
  }
}
