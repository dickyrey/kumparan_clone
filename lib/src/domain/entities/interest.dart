import 'package:kumparan_clone/src/domain/entities/category.dart';

class Interest {
  
  Interest({
    required this.category,
    this.value = false,
  });

  final Category category;
  bool value;
}
