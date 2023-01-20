import 'package:equatable/equatable.dart';

class JobDetail extends Equatable {
  const JobDetail({
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
