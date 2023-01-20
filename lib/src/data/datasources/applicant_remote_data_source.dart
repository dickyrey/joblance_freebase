import 'dart:convert';

import 'package:flutter/services.dart' as root;
import 'package:joblance_firebase/src/data/models/applicant_model.dart';
import 'package:joblance_firebase/src/data/models/applicant_response.dart';

// ignore: one_member_abstracts
abstract class ApplicantRemoteDataSource {
  Future<List<ApplicantModel>> getApplicants();
}

class ApplicantRemoteDataSourceImpl implements ApplicantRemoteDataSource {
  @override
  Future<List<ApplicantModel>> getApplicants() async {
    // Load the JSON data from the json file
    final jsonData = await root.rootBundle.loadString(
      'json_file/applicants.json',
    );

    // Decode the JSON data and convert it to a BoardingResponse object
    final response = ApplicantResponse.fromJson(
      json.decode(jsonData) as Map<String, dynamic>,
    );

    // Return the list of categories from the response
    return response.applicantList;
  }
}
