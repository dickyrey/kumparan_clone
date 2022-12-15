// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

class Boarding extends Equatable {
  const Boarding({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.image,
  });

  final int id;
  final String title;
  final String subtitle;
  final String image;

  @override
  List<Object?> get props => [id, title, subtitle, image];
}
