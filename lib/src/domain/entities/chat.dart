import 'package:equatable/equatable.dart';
import 'package:joblance_firebase/src/domain/entities/messages.dart';

class Chat extends Equatable {
  const Chat({
    required this.id,
    required this.name,
    required this.profileImage,
    required this.lastMessage,
    required this.isOnline,
    required this.lastMessageDate,
    required this.createdAt,
    required this.messages,
  });

  final int id;
  final String name;
  final String profileImage;
  final String lastMessage;
  final bool isOnline;
  final DateTime lastMessageDate;
  final DateTime createdAt;
  final List<Messages> messages;

  @override
  List<Object?> get props => [
        id,
        name,
        profileImage,
        lastMessage,
        isOnline,
        lastMessageDate,
        createdAt,
        messages,
      ];
}
