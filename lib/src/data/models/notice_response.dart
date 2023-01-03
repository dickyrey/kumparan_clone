import 'package:equatable/equatable.dart';
import 'package:kumparan_clone/src/data/models/notice_model.dart';

class NoticeResponse extends Equatable {
  const NoticeResponse({
    required this.noticeList,
  });

  factory NoticeResponse.fromJson(Map<String, dynamic> json) {
    return NoticeResponse(
      noticeList: List<NoticeModel>.from(
        (json['data'] as List)
            .map((e) => NoticeModel.fromJson(e as Map<String, dynamic>))
            .where((element) => element.title != ''),
      ),
    );
  }

  final List<NoticeModel> noticeList;

  @override
  List<Object?> get props => [noticeList];
}
