// ignore_for_file: one_member_abstracts

import 'dart:convert';

import 'package:flutter/services.dart' as root;
import 'package:joblance_firebase/src/data/models/category_model.dart';
import 'package:joblance_firebase/src/data/models/category_response.dart';

abstract class CategoryRemoteDataSource {
  Future<List<CategoryModel>> getCategories();
}

class CategoryRemoteDataSourceImpl extends CategoryRemoteDataSource {
  @override
  Future<List<CategoryModel>> getCategories() async {
    // Load the JSON data from the mock_json/boarding.json file
    final jsonData = await root.rootBundle.loadString(
      'json_file/categories.json',
    );

    // Decode the JSON data and convert it to a BoardingResponse object
    final response = CategoryResponse.fromJson(
      json.decode(jsonData) as Map<String, dynamic>,
    );

    // Return the list of categories from the response
    return response.categories;
  }
}
