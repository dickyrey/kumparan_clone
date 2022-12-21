import 'package:dartz/dartz.dart';
import 'package:kumparan_clone/src/common/failure.dart';
import 'package:kumparan_clone/src/domain/entities/notice.dart';

// ignore: one_member_abstracts
abstract class NoticeRepository {
  Future<Either<Failure, List<Notice>>> getNoticeList();
}
