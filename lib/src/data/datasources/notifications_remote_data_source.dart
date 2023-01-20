// ignore_for_file: one_member_abstracts

import 'dart:convert';

import 'package:flutter/services.dart' as root;
import 'package:joblance_firebase/src/data/models/notifications_model.dart';
import 'package:joblance_firebase/src/data/models/notifications_response.dart';

abstract class NotificationsRemoteDataSource {
  Future<List<NotificationsModel>> getNotifications();
}

class NotificationsRemoteDataSourceImpl extends NotificationsRemoteDataSource {
  @override
  Future<List<NotificationsModel>> getNotifications() async {
    final result = Future.delayed(
      const Duration(milliseconds: 500),
      () async {
        final jsonData = await root.rootBundle.loadString(
          'json_file/notifications.json',
        );

        final response = NotificationsResponse.fromJson(
          json.decode(jsonData) as Map<String, dynamic>,
        );

        return response.notificationsList;
      },
    );
    return result;
  }
}
