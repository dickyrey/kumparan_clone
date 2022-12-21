import 'package:equatable/equatable.dart';

class Notice extends Equatable {
  const Notice({
    required this.id,
    required this.title,
    required this.creatorName,
    required this.thumbnail,
    required this.createdAt,
  });

  final int id;
  final String title;
  final String creatorName;
  final String thumbnail;
  final DateTime createdAt;

  @override
  List<Object?> get props => [
        id,
        title,
        creatorName,
        thumbnail,
        createdAt,
      ];
}
