import 'package:equatable/equatable.dart';
import 'package:kumparan_clone/src/data/models/article_model.dart';

class ArticleResponse extends Equatable {
  const ArticleResponse({
    required this.articleList,
  });

  factory ArticleResponse.fromJson(Map<String, dynamic> json) {
    return ArticleResponse(
      articleList: List<ArticleModel>.from(
        (json['data'] as List)
            .map((e) => ArticleModel.fromJson(e as Map<String, dynamic>))
            .where((element) => element.title != ''),
      ),
    );
  }

  final List<ArticleModel> articleList;

  @override
  List<Object?> get props => [articleList];
}
