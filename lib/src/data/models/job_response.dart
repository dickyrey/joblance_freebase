// ignore_for_file: unnecessary_null_comparison, unnecessary_lambdas

import 'package:equatable/equatable.dart';
import 'package:joblance_firebase/src/data/models/job_model.dart';

class JobResponse extends Equatable {
  const JobResponse({required this.jobList});

  factory JobResponse.fromJson(Map<String, dynamic> json) {
    return JobResponse(
      jobList: List<JobModel>.from(
        (json['data'] as List)
            .map((e) => JobModel.fromJson(e as Map<String, dynamic>))
            .where((element) => element.id != null),
      ),
    );
  }

  final List<JobModel> jobList;

  @override
  List<Object?> get props => [jobList];
}
