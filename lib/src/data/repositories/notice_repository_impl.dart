import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/exception.dart';
import 'package:kumparan_clone/src/common/failure.dart';
import 'package:kumparan_clone/src/data/datasources/notice_remote_data_source.dart';
import 'package:kumparan_clone/src/domain/entities/notice.dart';
import 'package:kumparan_clone/src/domain/repositories/notice_repository.dart';

class NoticeRepositoryImpl extends NoticeRepository {
  final NoticeRemoteDataSource dataSource;

  NoticeRepositoryImpl({required this.dataSource});
  @override
  Future<Either<Failure, List<Notice>>> getNoticeList() async {
    try {
      final result = await dataSource.getNoticeList();
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
