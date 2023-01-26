import 'package:flutter_test/flutter_test.dart';
import 'package:kumparan_clone/src/data/models/category_model.dart';
import 'package:kumparan_clone/src/domain/entities/category.dart';

void main() {
  const categoryModel = CategoryModel(
    id: 1,
    name: 'News',
  );
  const category = Category(
    id: 1,
    name: 'News',
  );
  test('should be a subclass of Category Entity', () async {
    final result = categoryModel.toEntity();
    expect(result, category);
  });
}
