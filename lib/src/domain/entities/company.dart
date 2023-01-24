import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:joblance_firebase/src/data/models/company_model.dart';

class Company extends Equatable {
  const Company({
    required this.id,
    required this.name,
    required this.image,
    required this.email,
    required this.phone,
    required this.address,
    required this.totalEmployee,
    required this.createdAt,
  });

  final String id;
  final String name;
  final String image;
  final String email;
  final String phone;
  final String address;
  final int totalEmployee;
  final Timestamp createdAt;

  CompanyModel toModel() {
    return CompanyModel(
      id: id,
      name: name,
      image: image,
      email: email,
      phone: phone,
      address: address,
      totalEmployee: totalEmployee,
      createdAt: createdAt,
    );
  }

  @override
  List<Object?> get props => [
        id,
        name,
        image,
        email,
        phone,
        address,
        totalEmployee,
        createdAt,
      ];
}
