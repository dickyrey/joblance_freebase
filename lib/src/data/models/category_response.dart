import 'package:equatable/equatable.dart';
import 'package:joblance_firebase/src/data/models/category_model.dart';

class CategoryResponse extends Equatable {
  const CategoryResponse({required this.categories});

  factory CategoryResponse.fromJson(Map<String, dynamic> json) => CategoryResponse(
        categories: List<CategoryModel>.from(
          (json['data'] as List)
              .map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
              .where((element) => element.name != ''),
        ),
      );

  final List<CategoryModel> categories;

  @override
  List<Object?> get props => [categories];
}
