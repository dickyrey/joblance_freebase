// ignore_for_file: one_member_abstracts

import 'dart:convert';

import 'package:flutter/services.dart' as root;
import 'package:joblance_firebase/src/data/models/chat_model.dart';
import 'package:joblance_firebase/src/data/models/chat_response.dart';

abstract class MessageRemoteDataSource {
  Future<List<ChatModel>> getMessages();
  Future<List<ChatModel>> getMessagesRecruiter();
}

class MessageRemoteDataSourceImpl extends MessageRemoteDataSource {
  @override
  Future<List<ChatModel>> getMessages() async {
    final result = Future.delayed(
      const Duration(milliseconds: 500),
      () async {
        final jsonData = await root.rootBundle.loadString(
          'json_file/messages.json',
        );

        final response = ChatResponse.fromJson(
          json.decode(jsonData) as Map<String, dynamic>,
        );

        return response.chatList;
      },
    );
    return result;
  }

  @override
  Future<List<ChatModel>> getMessagesRecruiter() async {
    final response = Future.delayed(
      const Duration(seconds: 2),
      () async {
        final jsonData = await root.rootBundle.loadString(
          'json_file/messages.json',
        );

        final response = ChatResponse.fromJson(
          json.decode(jsonData) as Map<String, dynamic>,
        );

        return response.chatList;
      },
    );
    return response;
  }
}
