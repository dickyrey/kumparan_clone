import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/exception.dart';
import 'package:kumparan_clone/src/common/failure.dart';
import 'package:kumparan_clone/src/data/datasources/boarding_remote_data_source.dart';
import 'package:kumparan_clone/src/domain/entities/boarding.dart';
import 'package:kumparan_clone/src/domain/repositories/boarding_repository.dart';

class BoardingRepositoryImpl extends BoardingRepository {
  
  BoardingRepositoryImpl({required this.dataSource});

  final BoardingRemoteDataSource dataSource;

  @override
  Future<Either<Failure, List<Boarding>>> getBoardingList() async {
    try {
      final result = await dataSource.getBoardingList();
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
