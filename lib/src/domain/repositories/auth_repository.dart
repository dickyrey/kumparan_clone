import 'package:dartz/dartz.dart';
import 'package:kumparan_clone/src/common/failure.dart';

abstract class AuthRepository {
  Future<Either<Failure, void>> signInWithGoogle(String token);
  Future<Either<Failure, void>> signOut();
  Future<Either<Failure, bool>> checkGoogleAuth();
}
