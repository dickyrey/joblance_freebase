import 'package:equatable/equatable.dart';

class Job extends Equatable {
  const Job({
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
        createdAt,
      ];
}
