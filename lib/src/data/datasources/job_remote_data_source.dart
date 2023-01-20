// ignore_for_file: one_member_abstracts, unnecessary_lambdas

import 'dart:convert';

import 'package:flutter/services.dart' as root;
import 'package:joblance_firebase/src/data/models/job_detail_model.dart';
import 'package:joblance_firebase/src/data/models/job_model.dart';
import 'package:joblance_firebase/src/data/models/job_response.dart';

abstract class JobRemoteDataSource {
  // Client Side
  Future<List<JobModel>> getPopularJobs();
  Future<List<JobModel>> getRecentlyAddedJobs();
  Future<List<JobModel>> getSavedJobs();
  Future<List<JobModel>> getBrowseJobs();
  Future<JobDetailModel> getJobDetails(int id);

  // Recruiter Side
  Future<List<JobModel>> getActiveJobs();
}

class JobRemoteDataSourceImpl extends JobRemoteDataSource {
  @override
  Future<List<JobModel>> getPopularJobs() async {
    final result = Future.delayed(
      const Duration(seconds: 2),
      () async {
        final jsonData = await root.rootBundle.loadString(
          'json_file/popular_jobs.json',
        );

        final response = JobResponse.fromJson(
          json.decode(jsonData) as Map<String, dynamic>,
        );

        return response.jobList;
      },
    );
    return result;
  }

  @override
  Future<List<JobModel>> getRecentlyAddedJobs() async {
    final response = Future.delayed(
      const Duration(seconds: 2),
      () async {
        final jsonData = await root.rootBundle.loadString(
          'json_file/recently_added_jobs.json',
        );

        final response = JobResponse.fromJson(
          json.decode(jsonData) as Map<String, dynamic>,
        );

        return response.jobList;
      },
    );
    return response;
  }

  @override
  Future<List<JobModel>> getActiveJobs() async {
    final response = Future.delayed(
      const Duration(seconds: 2),
      () async {
        final jsonData = await root.rootBundle.loadString(
          'json_file/active_jobs.json',
        );

        final response = JobResponse.fromJson(
          json.decode(jsonData) as Map<String, dynamic>,
        );

        return response.jobList;
      },
    );
    return response;
  }

  @override
  Future<List<JobModel>> getBrowseJobs() {
    final response = Future.delayed(
      const Duration(seconds: 2),
      () async {
        final jsonData = await root.rootBundle.loadString(
          'json_file/browse_jobs.json',
        );

        final response = JobResponse.fromJson(
          json.decode(jsonData) as Map<String, dynamic>,
        );

        return response.jobList;
      },
    );
    return response;
  }

  @override
  Future<List<JobModel>> getSavedJobs() async {
    final response = Future.delayed(
      const Duration(seconds: 2),
      () async {
        final jsonData = await root.rootBundle.loadString(
          'json_file/saved_jobs.json',
        );

        final response = JobResponse.fromJson(
          json.decode(jsonData) as Map<String, dynamic>,
        );

        return response.jobList;
      },
    );
    return response;
  }

  @override
  Future<JobDetailModel> getJobDetails(int id) async {
    final response = Future.delayed(
      const Duration(seconds: 2),
      () async {
        final jsonData = await root.rootBundle.loadString(
          'json_file/job_details.json',
        );
        
        return JobDetailModel.fromJson(
          json.decode(jsonData) as Map<String, dynamic>,
        );
      },
    );
    return response;
  }
}
