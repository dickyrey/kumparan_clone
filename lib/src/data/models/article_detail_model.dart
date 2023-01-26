import 'package:equatable/equatable.dart';
import 'package:kumparan_clone/src/domain/entities/article_detail.dart';

class ArticleDetailModel extends Equatable {
  const ArticleDetailModel({
    required this.url,
    required this.title,
    required this.content,
    required this.thumbnail,
    required this.viewers,
    required this.comments,
    required this.likes,
    required this.createdAt,
  });

  factory ArticleDetailModel.fromJson(Map<String, dynamic> json) {
    return ArticleDetailModel(
      url: json['url'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      thumbnail: json['image'] as String,
      viewers: json['viewers'] as int,
      comments: json['comments'] as int,
      likes: json['likes'] as int,
      createdAt: DateTime.parse(json['created_at'] as String),
    );
  }

  final String url;
  final String title;
  final String content;
  final String thumbnail;
  final int viewers;
  final int comments;
  final int likes;
  final DateTime createdAt;

  ArticleDetail toEntity() {
    return ArticleDetail(
      url: url,
      title: title,
      content: content,
      thumbnail: thumbnail,
      viewers: viewers,
      comments: comments,
      likes: likes,
      createdAt: createdAt,
    );
  }

  Map<String, dynamic> toJson() => {
        'url': url,
        'title': title,
        'content': content,
        'thumbnail': thumbnail,
        'viewers': viewers,
        'comments': comments,
        'likes': likes,
        'created_at': createdAt.toIso8601String(),
      };

  @override
  List<Object?> get props => [
        url,
        title,
        content,
        thumbnail,
        viewers,
        comments,
        likes,
        createdAt,
      ];
}
