import 'package:equatable/equatable.dart';

class Applicant extends Equatable {
  const Applicant({
    required this.id,
    required this.name,
    required this.image,
    required this.position,
    required this.createdAt,
  });

  final int id;
  final String name;
  final String image;
  final String position;
  final DateTime createdAt;

  @override
  List<Object?> get props => [
        id,
        name,
        image,
        position,
        createdAt,
      ];
}
