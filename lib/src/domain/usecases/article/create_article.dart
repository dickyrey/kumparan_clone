import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:kumparan_clone/src/common/failure.dart';
import 'package:kumparan_clone/src/domain/repositories/article_repository.dart';

class CreateArticle {
  CreateArticle(this.repository);
  final ArticleRepository repository;

  Future<Either<Failure, void>> execute({
    required String title,
    required String content,
    required File image,
    required List<String> categories,
  }) {
    return repository.createArticle(
      title: title,
      content: content,
      image: image,
      categories: categories,
    );
  }
}
