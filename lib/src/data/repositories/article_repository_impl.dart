import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/exception.dart';
import 'package:kumparan_clone/src/common/failure.dart';
import 'package:kumparan_clone/src/data/datasources/article_data_source.dart';
import 'package:kumparan_clone/src/domain/entities/article.dart';
import 'package:kumparan_clone/src/domain/repositories/article_repository.dart';

class ArticleRepositoryImpl extends ArticleRepository {
  
  ArticleRepositoryImpl({required this.dataSource});

  final ArticleDataSource dataSource;

  @override
  Future<Either<Failure, List<Article>>> getArticleList() async {
    try {
      final result = await dataSource.getArticleList();
      return Right(result.map((e) => e.toEntity()).toList());
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on SocketException {
      return const Left(
        ConnectionFailure(ExceptionMessage.internetNotConnected),
      );
    }
  }
}
