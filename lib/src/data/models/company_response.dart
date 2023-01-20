import 'package:equatable/equatable.dart';
import 'package:joblance_firebase/src/data/models/company_model.dart';

class CompanyResponse extends Equatable {
  const CompanyResponse({required this.companyList});

  factory CompanyResponse.fromJson(Map<String, dynamic> json) {
    return CompanyResponse(
      companyList: List<CompanyModel>.from(
        (json['data'] as List)
            .map((e) => CompanyModel.fromJson(e as Map<String, dynamic>))
            .where((element) => element.name != ''),
      ),
    );
  }

  final List<CompanyModel> companyList;

  @override
  List<Object?> get props => [companyList];
}
