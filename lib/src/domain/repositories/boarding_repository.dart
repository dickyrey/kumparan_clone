import 'package:dartz/dartz.dart';
import 'package:kumparan_clone/src/common/failure.dart';
import 'package:kumparan_clone/src/domain/entities/boarding.dart';

// ignore: one_member_abstracts
abstract class BoardingRepository {
  Future<Either<Failure, List<Boarding>>> getBoardingList();
}
