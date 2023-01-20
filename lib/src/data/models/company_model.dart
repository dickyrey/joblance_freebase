import 'package:equatable/equatable.dart';
import 'package:joblance_firebase/src/data/models/company_address_model.dart';

class CompanyModel extends Equatable {
  const CompanyModel({
    required this.id,
    required this.name,
    required this.image,
    required this.email,
    required this.phone,
    required this.address,
    required this.status,
    required this.createdAt,
  });

  factory CompanyModel.fromJson(Map<String, dynamic> json) {
    return CompanyModel(
      id: json['id'] as int,
      name: json['name'] as String,
      image: json['image'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String,
      address: CompanyAddressModel.fromJson(
        json['address'] as Map<String, dynamic>,
      ),
      status: json['status'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );
  }

  final int id;
  final String name;
  final String image;
  final String email;
  final String phone;
  final CompanyAddressModel address;
  final String status;
  final DateTime createdAt;

  @override
  List<Object?> get props => [
        id,
        name,
        image,
        email,
        phone,
        address,
        status,
        createdAt,
      ];
}
