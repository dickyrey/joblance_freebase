import 'package:equatable/equatable.dart';
import 'package:joblance_firebase/src/domain/entities/work_experience.dart';

class WorkExperienceModel extends Equatable {
  const WorkExperienceModel({
    required this.id,
    required this.company,
    required this.position,
    required this.startDate,
    required this.jobType,
  });

  factory WorkExperienceModel.fromJson(Map<String, dynamic> json) {
    return WorkExperienceModel(
      id: json['id'] as String,
      company: json['company'] as String,
      position: json['position'] as String,
      startDate: json['start_date'] as String,
      jobType: json['job_type'] as String,
    );
  }

  final String id;
  final String company;
  final String position;
  final String startDate;
  final String jobType;

  Map<String, dynamic> toJson() => {
        'id': id,
        'company': company,
        'position': position,
        'start_date': startDate,
        'job_type': jobType,
      };

  WorkExperience toEntity() {
    return WorkExperience(
      id: id,
      company: company,
      position: position,
      startDate: startDate,
      jobType: jobType,
    );
  }

  @override
  List<Object?> get props => [
        id,
        company,
        position,
        startDate,
        jobType,
      ];
}
