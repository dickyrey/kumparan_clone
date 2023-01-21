import 'package:equatable/equatable.dart';

class Article extends Equatable {
  const Article({
    required this.title,
    required this.url,
    required this.thumbnail,
    required this.viewers,
    required this.likes,
    required this.comments,
    required this.createdAt,
  });

  final String title;
  final String url;
  final String thumbnail;
  final int viewers;
  final int likes;
  final int comments;
  final DateTime createdAt;

  @override
  List<Object?> get props => [
        title,
        url,
        thumbnail,
        viewers,
        likes,
        comments,
        createdAt,
      ];
}
