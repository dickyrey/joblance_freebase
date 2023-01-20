import 'package:equatable/equatable.dart';
import 'package:joblance_firebase/src/data/models/messages_model.dart';
import 'package:joblance_firebase/src/domain/entities/chat.dart';

class ChatModel extends Equatable {
  const ChatModel({
    required this.id,
    required this.name,
    required this.profileImage,
    required this.lastMessage,
    required this.isOnline,
    required this.lastMessageDate,
    required this.createdAt,
    required this.messages,
  });

  factory ChatModel.fromJson(Map<String, dynamic> json) => ChatModel(
        id: json['id'] as int,
        name: json['name'] as String,
        profileImage: json['profile_image'] as String,
        lastMessage: json['last_message'] as String,
        isOnline: json['is_online'] as bool,
        lastMessageDate: DateTime.parse(json['last_message_date'] as String),
        createdAt: DateTime.parse(json['created_at'] as String),
        messages: List<MessagesModel>.from(
          (json['messages'] as Iterable<dynamic>)
              .map((x) => MessagesModel.fromJson(x as Map<String, dynamic>)),
        ),
      );

  final int id;
  final String name;
  final String profileImage;
  final String lastMessage;
  final bool isOnline;
  final DateTime lastMessageDate;
  final DateTime createdAt;
  final List<MessagesModel> messages;

  Chat toEntity() {
    return Chat(
      id: id,
      name: name,
      profileImage: profileImage,
      lastMessage: lastMessage,
      isOnline: isOnline,
      lastMessageDate: lastMessageDate,
      createdAt: createdAt,
      messages: messages.map((e) => e.toEntity()).toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'profile_image': profileImage,
        'last_message': lastMessage,
        'is_online': isOnline,
        'last_message_date': lastMessageDate.toIso8601String(),
        'created_at': createdAt.toIso8601String(),
        'messages': List<dynamic>.from(messages.map((x) => x.toJson())),
      };

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
