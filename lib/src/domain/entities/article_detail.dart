import 'package:equatable/equatable.dart';

class ArticleDetail extends Equatable {
  const ArticleDetail({
    required this.url,
    required this.title,
    required this.content,
    required this.thumbnail,
    required this.viewers,
    required this.comments,
    required this.likes,
    required this.createdAt,
  });

  final String url;
  final String title;
  final String content;
  final String thumbnail;
  final int viewers;
  final int comments;
  final int likes;
  final DateTime createdAt;

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
