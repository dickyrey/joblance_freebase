import 'package:dartz/dartz.dart';
import 'package:joblance_firebase/src/common/failure.dart';
import 'package:joblance_firebase/src/domain/entities/job_detail.dart';
import 'package:joblance_firebase/src/domain/repositories/job_repository.dart';

class GetJobDetails {
  GetJobDetails(this.repository);
  final JobRepository repository;

  Future<Either<Failure, JobDetail>> execute(int id) {
    return repository.getJobDetails(id);
  }
}
