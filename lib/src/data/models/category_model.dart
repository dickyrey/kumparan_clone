import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:kumparan_clone/src/domain/entities/category.dart';

class CategoryModel extends Equatable {
  const CategoryModel({
    required this.id,
    required this.name,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return CategoryModel(
      id: json['id'] as int,
      name: json['name'] as String,
    );
  }

  final int id;
  final String name;

  Category toEntity() {
    return Category(
      id: id,
      name: name,
    );
  }

  @override
  List<Object?> get props => [id, name];
}

List<CategoryModel> categoryModelFromJson(String str) {
  return List<CategoryModel>.from(
    (json.decode(str) as Iterable<dynamic>)
        .map((x) => CategoryModel.fromJson(x as Map<String, dynamic>)),
  );
}
