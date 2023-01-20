import 'package:dartz/dartz.dart';
import 'package:joblance_firebase/src/common/failure.dart';
import 'package:joblance_firebase/src/domain/entities/applicant.dart';
import 'package:joblance_firebase/src/domain/repositories/applicant_repository.dart';

class GetApplicants {
  GetApplicants(this.repository);
  final ApplicantRepository repository;

  Future<Either<Failure, List<Applicant>>> execute() {
    return repository.getApplicants();
  }
}
