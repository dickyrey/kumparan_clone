import 'package:dartz/dartz.dart';
import 'package:kumparan_clone/src/common/failure.dart';
import 'package:kumparan_clone/src/domain/entities/notice.dart';
import 'package:kumparan_clone/src/domain/repositories/notice_repository.dart';

class GetNoticeList {
  
  GetNoticeList(this.repository);

  final NoticeRepository repository;

  Future<Either<Failure, List<Notice>>> execute() {
    return repository.getNoticeList();
  }
}
