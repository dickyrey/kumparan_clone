import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:kumparan_clone/src/domain/entities/notice.dart';

class NoticeModel extends Equatable {
  const NoticeModel({
    required this.id,
    required this.title,
    required this.creatorName,
    required this.thumbnail,
    required this.createdAt,
  });

  final int id;
  final String title;
  final String creatorName;
  final String thumbnail;
  final DateTime createdAt;

  factory NoticeModel.fromJson(Map<String, dynamic> json) {
    return NoticeModel(
      id: json['id'] as int,
      title: json['title'] as String,
      creatorName: json['creator_name'] as String,
      thumbnail: json['thumbnail'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );
  }

  Notice toEntity() {
    return Notice(
      id: id,
      title: title,
      creatorName: creatorName,
      thumbnail: thumbnail,
      createdAt: createdAt,
    );
  }

  @override
  List<Object?> get props => [
        id,
        title,
        creatorName,
        thumbnail,
        createdAt,
      ];
}

List<NoticeModel> noticeModelFromJson(String str) {
  return List<NoticeModel>.from(
    (json.decode(str) as Iterable<dynamic>)
        .map((x) => NoticeModel.fromJson(x as Map<String, dynamic>)),
  );
}
