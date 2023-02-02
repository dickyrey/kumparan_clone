import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:kumparan_clone/src/common/failure.dart';
import 'package:kumparan_clone/src/domain/repositories/article_repository.dart';

class UpdateArticle {
  UpdateArticle(this.repository);
  final ArticleRepository repository;

  Future<Either<Failure, void>> execute({
    required String id,
    required String title,
    required String content,
    required File? imageFile,
    required List<String> categories,
  }) {
    return repository.updateArticle(
      id: id,
      title: title,
      content: content,
      imageFile: imageFile,
      categories: categories,
    );
  }
}
