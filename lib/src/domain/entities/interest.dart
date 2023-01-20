import 'package:joblance_firebase/src/domain/entities/category.dart';

class Interest {
  Interest({
    required this.category,
    this.value = false,
  });
  
  final Category category;
  bool value;
}
