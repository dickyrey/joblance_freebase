import 'package:equatable/equatable.dart';

class CompanyAddressModel extends Equatable {
  const CompanyAddressModel({
    required this.street,
    required this.village,
    required this.district,
    required this.city,
    required this.province,
    required this.country,
    required this.latitude,
    required this.longitude,
  });

  factory CompanyAddressModel.fromJson(Map<String, dynamic> json) {
    return CompanyAddressModel(
      street: json['street'] as String,
      village: json['village'] as String,
      district: json['district'] as String,
      city: json['city'] as String,
      province: json['province'] as String,
      country: json['country'] as String,
      latitude: json['latitude'] as double,
      longitude: json['longitude'] as double,
    );
  }

  final String street;
  final String village;
  final String district;
  final String city;
  final String province;
  final String country;
  final double latitude;
  final double longitude;

  @override
  List<Object?> get props => [
        street,
        village,
        district,
        city,
        province,
        country,
        latitude,
        longitude,
      ];
}
