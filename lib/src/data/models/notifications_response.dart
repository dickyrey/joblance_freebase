import 'package:equatable/equatable.dart';
import 'package:joblance_firebase/src/data/models/notifications_model.dart';

class NotificationsResponse extends Equatable {
  const NotificationsResponse({required this.notificationsList});

  factory NotificationsResponse.fromJson(Map<String, dynamic> json) {
    return NotificationsResponse(
      notificationsList: List<NotificationsModel>.from(
        (json['data'] as List)
            .map((e) => NotificationsModel.fromJson(e as Map<String, dynamic>))
            .where((element) => element.company != ''),
      ),
    );
  }

  final List<NotificationsModel> notificationsList;

  @override
  List<Object?> get props => [notificationsList];
}
