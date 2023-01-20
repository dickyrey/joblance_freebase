import 'package:equatable/equatable.dart';
import 'package:joblance_firebase/src/domain/entities/token.dart';

class TokenModel extends Equatable {
  const TokenModel({required this.accessToken});

  factory TokenModel.fromJson(Map<String, dynamic> json) {
    return TokenModel(
      accessToken: json['token'] as String,
    );
  }
  
  final String accessToken;

  Token toEntity() {
    return Token(
      accessToken: accessToken,
    );
  }

  @override
  List<Object?> get props => [accessToken];
}
