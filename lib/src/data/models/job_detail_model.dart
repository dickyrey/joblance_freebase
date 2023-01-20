import 'package:equatable/equatable.dart';
import 'package:joblance_firebase/src/domain/entities/job_detail.dart';

class JobDetailModel extends Equatable {
  const JobDetailModel({
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
  });

  factory JobDetailModel.fromJson(Map<String, dynamic> json) {
    return JobDetailModel(
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

  JobDetail toEntity() {
    return JobDetail(
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
