import 'package:equatable/equatable.dart';
import 'package:joblance_firebase/src/domain/entities/notification.dart';

class NotificationsModel extends Equatable {
  const NotificationsModel({
    required this.id,
    required this.company,
    required this.companyImage,
    required this.message,
    required this.createdAt,
  });

  factory NotificationsModel.fromJson(Map<String, dynamic> json) {
    return NotificationsModel(
      id: json['id'] as int,
      company: json['company'] as String,
      companyImage: json['company_image'] as String,
      message: json['message'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );
  }

  final int id;
  final String company;
  final String companyImage;
  final String message;
  final DateTime createdAt;
  
  Notifications toEntity() {
    return Notifications(
      id: id,
      company: company,
      companyImage: companyImage,
      message: message,
      createdAt: createdAt,
    );
  }

  @override
  List<Object?> get props => [
        id,
        company,
        companyImage,
        message,
        createdAt,
      ];
}
