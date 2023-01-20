import 'package:dartz/dartz.dart';
import 'package:joblance_firebase/src/common/failure.dart';
import 'package:joblance_firebase/src/domain/entities/chat.dart';

// ignore: one_member_abstracts
abstract class MessageRepository {
  Future<Either<Failure, List<Chat>>> getMessages();
  Future<Either<Failure, List<Chat>>> getMessagesRecruiter();
}
