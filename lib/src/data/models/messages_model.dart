import 'package:equatable/equatable.dart';
import 'package:joblance_firebase/src/domain/entities/messages.dart';

class MessagesModel extends Equatable {
  const MessagesModel({
    required this.isSender,
    required this.message,
    required this.createdAt,
    required this.isRead,
  });

  factory MessagesModel.fromJson(Map<String, dynamic> json) {
    return MessagesModel(
      isSender: json['is_sender'] as bool,
      message: json['message'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      isRead: json['is_read'] as bool,
    );
  }

  final bool isSender;
  final String message;
  final DateTime createdAt;
  final bool isRead;

  Messages toEntity() {
    return Messages(
      isSender: isSender,
      message: message,
      createdAt: createdAt,
      isRead: isRead,
    );
  }

  Map<String, dynamic> toJson() => {
        'is_sender': isSender,
        'message': message,
        'created_at': createdAt.toIso8601String(),
        'is_read': isRead,
      };

  @override
  List<Object?> get props => [
        isSender,
        message,
        createdAt,
        isRead,
      ];
}
