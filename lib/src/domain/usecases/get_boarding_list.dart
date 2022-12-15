import 'package:dartz/dartz.dart';
import 'package:kumparan_clone/src/common/failure.dart';
import 'package:kumparan_clone/src/domain/entities/boarding.dart';
import 'package:kumparan_clone/src/domain/repositories/boarding_repository.dart';

class GetBoardingList {
  final BoardingRepository repository;

  GetBoardingList(this.repository);

  Future<Either<Failure, List<Boarding>>> execute() {
    return repository.getBoardingList();
  }
}
