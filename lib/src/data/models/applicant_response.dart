import 'package:equatable/equatable.dart';
import 'package:joblance_firebase/src/data/models/applicant_model.dart';

class ApplicantResponse extends Equatable {
  const ApplicantResponse({required this.applicantList});

  factory ApplicantResponse.fromJson(Map<String, dynamic> json) {
    return ApplicantResponse(
      applicantList: List<ApplicantModel>.from(
        (json['data'] as List)
            .map((e) => ApplicantModel.fromJson(e as Map<String, dynamic>))
            .where((element) => element.name != ''),
      ),
    );
  }

  final List<ApplicantModel> applicantList;

  @override
  List<Object?> get props => [applicantList];
}
