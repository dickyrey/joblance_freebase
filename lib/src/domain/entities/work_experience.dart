import 'package:equatable/equatable.dart';

class WorkExperience extends Equatable {
  const WorkExperience({
    required this.id,
    required this.company,
    required this.position,
    required this.startDate,
    required this.jobType,
  });

  final String id;
  final String company;
  final String position;
  final String startDate;
  final String jobType;

  @override
  List<Object?> get props => [
        id,
        company,
        position,
        startDate,
        jobType,
      ];
}
