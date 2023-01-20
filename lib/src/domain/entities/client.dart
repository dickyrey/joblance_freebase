import 'package:equatable/equatable.dart';
import 'package:joblance_firebase/src/domain/entities/work_experience.dart';

class Client extends Equatable {
  const Client({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.image,
    required this.address,
    required this.position,
    required this.work,
    required this.birthdate,
    required this.about,
    required this.createdAt,
    required this.workExperience,
  });

  final int id;
  final String name;
  final String email;
  final String password;
  final String phone;
  final String image;
  final String address;
  final String position;
  final String work;
  final DateTime birthdate;
  final String about;
  final DateTime createdAt;
  final List<WorkExperience> workExperience;

  @override
  List<Object?> get props => [
        id,
        name,
        email,
        password,
        phone,
        image,
        address,
        position,
        work,
        birthdate,
        about,
        createdAt,
        workExperience,
      ];
}
