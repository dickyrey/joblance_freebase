import 'package:dartz/dartz.dart';
import 'package:joblance_firebase/src/common/failure.dart';
import 'package:joblance_firebase/src/domain/entities/applicant.dart';

// ignore: one_member_abstracts
abstract class ApplicantRepository {
  Future<Either<Failure, List<Applicant>>> getApplicants();
}
