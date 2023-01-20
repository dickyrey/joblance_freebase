import 'package:equatable/equatable.dart';
import 'package:joblance_firebase/src/data/models/work_experience_model.dart';
import 'package:joblance_firebase/src/domain/entities/client.dart';

class ClientModel extends Equatable {
  const ClientModel({
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

  factory ClientModel.fromJson(Map<String, dynamic> json) => ClientModel(
        id: json['id'] as int,
        name: json['name'] as String,
        email: json['email'] as String,
        password: json['password'] as String,
        phone: json['phone'] as String,
        image: json['image'] as String,
        address: json['address'] as String,
        position: json['position'] as String,
        work: json['work'] as String,
        birthdate: DateTime.parse(json['birthdate'] as String),
        about: json['about'] as String,
        createdAt: DateTime.parse(json['created_at'] as String),
        workExperience: List<WorkExperienceModel>.from(
          (json['work_experience'] as Iterable<dynamic>).map(
            (x) => WorkExperienceModel.fromJson(x as Map<String, dynamic>),
          ),
        ),
      );

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
  final List<WorkExperienceModel> workExperience;

  Client toEntity() {
    return Client(
      id: id,
      name: name,
      email: email,
      password: password,
      phone: phone,
      image: image,
      address: address,
      position: position,
      work: work,
      birthdate: birthdate,
      about: about,
      createdAt: createdAt,
      workExperience: workExperience.map((x) => x.toEntity()).toList(),
    );
  }

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
