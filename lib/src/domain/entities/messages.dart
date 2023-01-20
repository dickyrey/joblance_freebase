import 'package:equatable/equatable.dart';

class Messages extends Equatable {
  const Messages({
    required this.isSender,
    required this.message,
    required this.createdAt,
    required this.isRead,
  });

  final bool isSender;
  final String message;
  final DateTime createdAt;
  final bool isRead;

  @override
  List<Object?> get props => [
        isSender,
        message,
        createdAt,
        isRead,
      ];
}
