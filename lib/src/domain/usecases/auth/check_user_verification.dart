import 'package:dartz/dartz.dart';
import 'package:kumparan_clone/src/common/failure.dart';
import 'package:kumparan_clone/src/domain/entities/verification_status.dart';
import 'package:kumparan_clone/src/domain/repositories/auth_repository.dart';

class CheckUserVerification {
  CheckUserVerification(this.repository);

  final AuthRepository repository;

  Future<Either<Failure, VerificationStatus>> execute() {
    return repository.checkUserVerification();
  }
}
