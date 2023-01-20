import 'package:equatable/equatable.dart';

class Token extends Equatable {
  const Token({required this.accessToken});

  final String accessToken;

  @override
  List<Object?> get props => [accessToken];
}
