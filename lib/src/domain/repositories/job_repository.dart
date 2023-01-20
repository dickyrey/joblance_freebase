import 'package:dartz/dartz.dart';
import 'package:joblance_firebase/src/common/failure.dart';
import 'package:joblance_firebase/src/domain/entities/job.dart';
import 'package:joblance_firebase/src/domain/entities/job_detail.dart';

// ignore: one_member_abstracts
abstract class JobRepository {
  // Client Side
  Future<Either<Failure, List<Job>>> getPopularJobs();
  Future<Either<Failure, List<Job>>> getRecentlyAddedJobs();
  Future<Either<Failure, List<Job>>> getSavedJobs();
  Future<Either<Failure, List<Job>>> getBrowseJobs();
  Future<Either<Failure, JobDetail>> getJobDetails(int id);

  // Recruiter Side
  Future<Either<Failure, List<Job>>> getActiveJobs();
}
