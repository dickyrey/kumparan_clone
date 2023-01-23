import 'package:dartz/dartz.dart';
import 'package:kumparan_clone/src/common/failure.dart';
import 'package:kumparan_clone/src/domain/repositories/article_repository.dart';

class SendComment {
  SendComment(this.repository);
  
  final ArticleRepository repository;

  Future<Either<Failure, void>> execute({required String id, required String comment}) {
    return repository.sendComment(id: id,comment: comment);
  }
}
