import 'package:equatable/equatable.dart';
import 'package:joblance_firebase/src/domain/entities/job.dart';

class JobModel extends Equatable {
  const JobModel({
    required this.id,
    required this.position,
    required this.location,
    required this.experienceLevel,
    required this.jobType,
    required this.salary,
    required this.currency,
    required this.companyName,
    required this.companyImage,
    required this.description,
    required this.createdAt,
  });

  factory JobModel.fromJson(Map<String, dynamic> json) {
    return JobModel(
      id: json['id'] as int,
      position: json['position'] as String,
      location: json['location'] as String,
      experienceLevel: json['experience_level'] as String,
      jobType: json['job_type'] as String,
      salary: json['salary'] as int,
      currency: json['currency'] as String,
      companyName: json['company_name'] as String,
      companyImage: json['company_image'] as String,
      description: json['description'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );
  }

  final int id;
  final String position;
  final String location;
  final String experienceLevel;
  final String jobType;
  final int salary;
  final String currency;
  final String companyName;
  final String companyImage;
  final String description;
  final DateTime createdAt;

  Job toEntity() {
    return Job(
      id: id,
      position: position,
      location: location,
      experienceLevel: experienceLevel,
      jobType: jobType,
      salary: salary,
      currency: currency,
      companyName: companyName,
      companyImage: companyImage,
      description: description,
      createdAt: createdAt,
    );
  }

  @override
  List<Object?> get props => [
        id,
        position,
        location,
        experienceLevel,
        jobType,
        salary,
        currency,
        companyName,
        companyImage,
        description,
      ];
}
