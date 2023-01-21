import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:kumparan_clone/src/domain/entities/article.dart';

class ArticleModel extends Equatable {
  const ArticleModel({
    required this.title,
    required this.url,
    required this.thumbnail,
    required this.viewers,
    required this.likes,
    required this.comments,
    required this.createdAt,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      title: json['title'] as String,
      url: json['url'] as String,
      thumbnail: json['thumbnail'] as String,
      viewers: json['viewers'] as int,
      likes: json['likes'] as int,
      comments: json['comments'] as int,
      createdAt: DateTime.parse(json['created_at'] as String),
    );
  }

  final String title;
  final String url;
  final String thumbnail;
  final int viewers;
  final int likes;
  final int comments;
  final DateTime createdAt;

  Article toEntity() {
    return Article(
      title: title,
      url: url,
      thumbnail: thumbnail,
      viewers: viewers,
      likes: likes,
      comments: comments,
      createdAt: createdAt,
    );
  }

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

List<ArticleModel> articleModelFromJson(String str) {
  return List<ArticleModel>.from(
    (json.decode(str) as Iterable<dynamic>)
        .map((x) => ArticleModel.fromJson(x as Map<String, dynamic>)),
  );
}
