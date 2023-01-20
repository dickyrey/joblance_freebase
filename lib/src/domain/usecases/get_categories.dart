import 'package:dartz/dartz.dart';
import 'package:joblance_firebase/src/common/failure.dart';
import 'package:joblance_firebase/src/domain/entities/category.dart';
import 'package:joblance_firebase/src/domain/repositories/category_repository.dart';

class GetCategories {
  GetCategories(this.repository);
  final CategoryRepository repository;

  Future<Either<Failure, List<Category>>> execute() {
    return repository.getCategories();
  }
}
