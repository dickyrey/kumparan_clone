import 'package:flutter_test/flutter_test.dart';
import 'package:kumparan_clone/src/data/models/article_model.dart';
import 'package:kumparan_clone/src/domain/entities/article.dart';

void main() {
  final articleModel = ArticleModel(
    title: 'Pajero kena truk',
    url:
        'https://interpretasi.id/api/article/pajero-tni-tertimpa-truk-pasir-nyalakan-sirine-di-luar-jam-dinas-63cede361ef2b',
    thumbnail:
        'https://lh3.googleusercontent.com/a/AEdFTp7rSQSGBXSkojDEr3RPtMeLn-bWycFhAjSzRoFVSQ=s48-c-rp-br100',
    viewers: 1,
    likes: 1,
    comments: 1,
    createdAt: DateTime.parse('2023-01-23T19:46:34.000000Z'),
  );
  final article = Article(
    title: 'Pajero kena truk',
    url:
        'https://interpretasi.id/api/article/pajero-tni-tertimpa-truk-pasir-nyalakan-sirine-di-luar-jam-dinas-63cede361ef2b',
    thumbnail:
        'https://lh3.googleusercontent.com/a/AEdFTp7rSQSGBXSkojDEr3RPtMeLn-bWycFhAjSzRoFVSQ=s48-c-rp-br100',
    viewers: 1,
    likes: 1,
    comments: 1,
    createdAt: DateTime.parse('2023-01-23T19:46:34.000000Z'),
  );
  test('should be a subclass of Article Entity', () async {
    final result = articleModel.toEntity();
    expect(result, article);
  });
}
