import 'package:dartz/dartz.dart';
import 'package:kumparan_clone/src/common/failure.dart';

abstract class LikeArticleRepository {
  Future<Either<Failure, bool>> checkStatus(String id);
  Future<Either<Failure, bool>> likeOrUnlikedArticle(String id);
}
