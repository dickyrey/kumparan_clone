import 'package:equatable/equatable.dart';
import 'package:kumparan_clone/src/data/models/category_model.dart';

class CategoryResponse extends Equatable {
  const CategoryResponse({
    required this.categoryList,
  });

  factory CategoryResponse.fromJson(Map<String, dynamic> json) {
    return CategoryResponse(
      categoryList: List<CategoryModel>.from(
        (json['data'] as List)
            .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
            .where((element) => element.name != ''),
      ),
    );
  }

  final List<CategoryModel> categoryList;

  @override
  List<Object?> get props => [categoryList];
}
