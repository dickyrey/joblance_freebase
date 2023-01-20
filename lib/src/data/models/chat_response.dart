import 'package:equatable/equatable.dart';
import 'package:joblance_firebase/src/data/models/chat_model.dart';

class ChatResponse extends Equatable {
  const ChatResponse({required this.chatList});

  factory ChatResponse.fromJson(Map<String, dynamic> json) => ChatResponse(
        chatList: List<ChatModel>.from(
          (json['data'] as List)
              .map((e) => ChatModel.fromJson(e as Map<String, dynamic>))
              .where((element) => element.name != ''),
        ),
      );
      
  final List<ChatModel> chatList;

  @override
  List<Object?> get props => [chatList];
}
