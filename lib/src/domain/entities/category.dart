// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

class Category extends Equatable {

  const Category({
    required this.id,
    required this.name,
  });
  
  final int id;
  final String name;

  @override
  List<Object?> get props => [id, name];
}
