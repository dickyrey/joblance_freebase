import 'package:equatable/equatable.dart';
import 'package:joblance_firebase/src/domain/entities/applicant.dart';

class ApplicantModel extends Equatable {
  const ApplicantModel({
    required this.id,
    required this.name,
    required this.image,
    required this.position,
    required this.createdAt,
  });

  factory ApplicantModel.fromJson(Map<String, dynamic> json) => ApplicantModel(
        id: json['id'] as int,
        name: json['name'] as String,
        image: json['image'] as String,
        position: json['position'] as String,
        createdAt: DateTime.parse(json['created_at'] as String),
      );

  final int id;
  final String name;
  final String image;
  final String position;
  final DateTime createdAt;

  Applicant toEntity() {
    return Applicant(
      id: id,
      name: name,
      image: image,
      position: position,
      createdAt: createdAt,
    );
  }

  @override
  List<Object?> get props => [
        id,
        name,
        image,
        position,
        createdAt,
      ];
}
