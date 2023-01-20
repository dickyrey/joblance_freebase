import 'package:dartz/dartz.dart';
import 'package:joblance_firebase/src/common/failure.dart';
import 'package:joblance_firebase/src/domain/entities/chat.dart';
import 'package:joblance_firebase/src/domain/repositories/message_repository.dart';

class GetMessages {
  GetMessages(this.repository);
  final MessageRepository repository;

  Future<Either<Failure, List<Chat>>> execute() {
    return repository.getMessages();
  }
}
