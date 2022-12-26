// ignore_for_file: unnecessary_lambdas

import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:kumparan_clone/src/domain/entities/article.dart';

class ArticleModel extends Equatable {
  const ArticleModel({
    required this.id,
    required this.title,
    required this.profilePicture,
    required this.creatorName,
    required this.thumbnail,
    required this.isVerified,
    required this.likes,
    required this.comments,
    required this.contentHtml,
    required this.createdAt,
  });

  final int id;
  final String title;
  final String profilePicture;
  final String creatorName;
  final String thumbnail;
  final bool isVerified;
  final int likes;
  final int comments;
  final String contentHtml;
  final DateTime createdAt;

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
      id: json['id'] as int,
      title: json['title'] as String,
      profilePicture: json['profile_picture'] as String,
      creatorName: json['creator_name'] as String,
      thumbnail: json['thumbnail'] as String,
      isVerified: json['is_verified'] as bool,
      likes: json['likes'] as int,
      comments: json['comments'] as int,
      contentHtml: json['content_html'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
    );
  }

  Article toEntity() {
    return Article(
      id: id,
      title: title,
      profilePicture: profilePicture,
      creatorName: creatorName,
      thumbnail: thumbnail,
      isVerified: isVerified,
      likes: likes,
      comments: comments,
      contentHtml: contentHtml,
      createdAt: createdAt,
    );
  }

  @override
  List<Object?> get props => [
        id,
        title,
        profilePicture,
        creatorName,
        thumbnail,
        isVerified,
        contentHtml,
        createdAt,
      ];
}

List<ArticleModel> articleModelFromJson(String str) {
  return List<ArticleModel>.from(
    (json.decode(str) as Iterable<dynamic>)
        .map((x) => ArticleModel.fromJson(x as Map<String, dynamic>)),
  );
}
