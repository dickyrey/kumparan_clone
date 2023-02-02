import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:kumparan_clone/src/common/failure.dart';
import 'package:kumparan_clone/src/domain/repositories/user_repository.dart';

class UpdateUserProfile {
  UpdateUserProfile(this.repository);

  final UserRepository repository;

  Future<Either<Failure, bool>> execute({
    required String name,
    required File? imageFile,
  }) {
    return repository.changeProfile(
      name: name,
      imageFile: imageFile,
    );
  }
}
