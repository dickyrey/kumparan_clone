import 'package:dartz/dartz.dart';
import 'package:kumparan_clone/src/common/failure.dart';
import 'package:kumparan_clone/src/domain/entities/category.dart';
import 'package:kumparan_clone/src/domain/repositories/category_repository.dart';

class GetCategories {

  GetCategories(this.repository);
  
  final CategoryRepository repository;

  Future<Either<Failure, List<Category>>> execute() {
    return repository.getCategories();
  }
}
