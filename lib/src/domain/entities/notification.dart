import 'package:equatable/equatable.dart';

class Notifications extends Equatable {
  const Notifications({
    required this.id,
    required this.company,
    required this.companyImage,
    required this.message,
    required this.createdAt,
  });

  final int id;
  final String company;
  final String companyImage;
  final String message;
  final DateTime createdAt;

  @override
  List<Object?> get props => [
        id,
        company,
        companyImage,
        message,
        createdAt,
      ];
}
