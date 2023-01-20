import 'package:equatable/equatable.dart';

class CompanyAddress extends Equatable {
  const CompanyAddress({
    required this.street,
    required this.village,
    required this.district,
    required this.city,
    required this.province,
    required this.country,
    required this.latitude,
    required this.longitude,
  });

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
