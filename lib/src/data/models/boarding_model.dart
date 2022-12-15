// ignore_for_file: unnecessary_lambdas

import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:kumparan_clone/src/domain/entities/boarding.dart';

class BoardingModel extends Equatable {
  const BoardingModel({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.image,
  });

  factory BoardingModel.fromJson(Map<String, dynamic> json) {
    return BoardingModel(
      id: json['id'] as int,
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      image: json['image'] as String,
    );
  }

  final int id;
  final String title;
  final String subtitle;
  final String image;

  Boarding toEntity() {
    return Boarding(
      id: id,
      title: title,
      subtitle: subtitle,
      image: image,
    );
  }

  @override
  List<Object?> get props => [id, title, subtitle, image];
}

List<BoardingModel> boardingModelFromJson(String str) {
  return List<BoardingModel>.from(
    (json.decode(str) as Iterable<dynamic>)
        .map((x) => BoardingModel.fromJson(x as Map<String, dynamic>)),
  );
}
