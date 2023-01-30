import 'package:equatable/equatable.dart';
import 'package:kumparan_clone/src/data/models/category_model.dart';
import 'package:kumparan_clone/src/domain/entities/article_detail.dart';

class ArticleDetailModel extends Equatable {
  const ArticleDetailModel({
    required this.url,
    required this.title,
    required this.content,
    required this.originalContent,
    required this.thumbnail,
    required this.viewers,
    required this.comments,
    required this.likes,
    required this.categories,
    required this.createdAt,
  });

  factory ArticleDetailModel.fromJson(Map<String, dynamic> json) {
    return ArticleDetailModel(
      url: json['url'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      originalContent: json['original_content'] as String,
      thumbnail: json['image'] as String,
      viewers: json['viewers'] as int,
      comments: json['comments'] as int,
      likes: json['likes'] as int,
      categories: List<CategoryModel>.from(
          (json['categories'] as Iterable<dynamic>)
              .map((x) => CategoryModel.fromJson(x as Map<String, dynamic>))),
      createdAt: DateTime.parse(json['created_at'] as String),
    );
  }

  final String url;
  final String title;
  final String content;
  final String originalContent;
  final String thumbnail;
  final int viewers;
  final int comments;
  final int likes;
  final List<CategoryModel> categories;
  final DateTime createdAt;

  ArticleDetail toEntity() {
    return ArticleDetail(
      url: url,
      title: title,
      content: content,
      originalContent: originalContent,
      thumbnail: thumbnail,
      viewers: viewers,
      comments: comments,
      likes: likes,
      categories: categories.map((x) => x.toEntity()).toList(),
      createdAt: createdAt,
    );
  }

  Map<String, dynamic> toJson() => {
        'url': url,
        'title': title,
        'content': content,
        'originalContent': originalContent,
        'thumbnail': thumbnail,
        'viewers': viewers,
        'comments': comments,
        'likes': likes,
        'categories': categories,
        'created_at': createdAt.toIso8601String(),
      };

  @override
  List<Object?> get props => [
        url,
        title,
        content,
        originalContent,
        thumbnail,
        viewers,
        comments,
        likes,
        categories,
        createdAt,
      ];
}
