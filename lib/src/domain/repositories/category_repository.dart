import 'package:dartz/dartz.dart';
import 'package:kumparan_clone/src/common/failure.dart';
import 'package:kumparan_clone/src/domain/entities/category.dart';

// ignore: one_member_abstracts
abstract class CategoryRepository {
  Future<Either<Failure, List<Category>>> getCategories();
}
