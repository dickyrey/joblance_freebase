import 'package:dartz/dartz.dart';
import 'package:joblance_firebase/src/common/failure.dart';
import 'package:joblance_firebase/src/domain/entities/job.dart';
import 'package:joblance_firebase/src/domain/repositories/job_repository.dart';

class GetSavedJobs {
  GetSavedJobs(this.repository);
  final JobRepository repository;

  Future<Either<Failure, List<Job>>> execute() {
    return repository.getRecentlyAddedJobs();
  }
}
