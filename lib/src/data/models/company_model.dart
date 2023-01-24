import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:joblance_firebase/src/domain/entities/company.dart';

class CompanyModel extends Equatable {
  const CompanyModel({
    required this.id,
    required this.name,
    required this.image,
    required this.email,
    required this.phone,
    required this.address,
    required this.totalEmployee,
    required this.createdAt,
  });

  factory CompanyModel.fromDocument(DocumentSnapshot document) {
    return CompanyModel(
      id: document['id'] as String,
      name: document['name'] as String,
      image: document['image'] as String,
      email: document['email'] as String,
      phone: document['phone'] as String,
      address: document['address'] as String,
      totalEmployee: document['total_employee'] as int,
      createdAt: document['created_at'] as Timestamp,
    );
  }

  final String id;
  final String name;
  final String image;
  final String email;
  final String phone;
  final String address;
  final int totalEmployee;
  final Timestamp createdAt;

  Company toEntity() {
    return Company(
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

  Map<String, dynamic> toMap(String userId) {
    return {
      'id': userId == '' ? '' : userId,
      'name': name == '' ? '' : name,
      'image': image == '' ? '' : image,
      'email': email == '' ? '' : email,
      'phone': phone == '' ? '' : phone,
      'address': address == '' ? '' : address,
      'total_employee': totalEmployee == 0 ? 0: totalEmployee,
      'created_at': createdAt,
    };
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
