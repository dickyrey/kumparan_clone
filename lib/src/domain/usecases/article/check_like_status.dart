import 'package:dartz/dartz.dart';
import 'package:kumparan_clone/src/common/failure.dart';
import 'package:kumparan_clone/src/domain/repositories/article_repository.dart';

class CheckLikeStatus {
  CheckLikeStatus(this.repository);
  
  final ArticleRepository repository;

  Future<Either<Failure, bool>> execute(String id) {
    return repository.checkLikeStatus(id);
  }
}
