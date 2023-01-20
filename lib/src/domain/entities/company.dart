import 'package:equatable/equatable.dart';
import 'package:joblance_firebase/src/domain/entities/company_address.dart';

class Company extends Equatable {
  
  const Company({
    required this.id,
    required this.name,
    required this.image,
    required this.email,
    required this.phone,
    required this.address,
    required this.status,
    required this.createdAt,
  });

  final int id;
  final String name;
  final String image;
  final String email;
  final String phone;
  final CompanyAddress address;
  final String status;
  final DateTime createdAt;

  @override
  List<Object?> get props => [id, name];
}
