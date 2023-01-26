import 'package:kumparan_clone/src/domain/entities/category.dart';

class CheckBoxState {
  CheckBoxState({
    required this.category,
    this.value = false,
  });

  final Category category;
  late bool value;
}
