import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:joblance_firebase/src/common/exception.dart';
import 'package:joblance_firebase/src/data/models/company_model.dart';

abstract class CompanyDataSource {
  Future<void> createCompany(CompanyModel company);
  Future<CompanyModel> getCompanyProfile();
  Future<void> updateCompanyProfile();
}

class CompanyDataSourceImpl extends CompanyDataSource {
  CompanyDataSourceImpl({
    required this.firebaseAuth,
    required this.firestore,
    required this.storage,
  });

  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore firestore;
  final FirebaseStorage storage;

  @override
  Future<void> createCompany(CompanyModel company) async {
    final uid = firebaseAuth.currentUser?.uid;
    final ref = firestore.collection('company');
    await ref.doc(uid).set(company.toMap(uid!));
  }

  @override
  Future<CompanyModel> getCompanyProfile() {
    final uid = firebaseAuth.currentUser?.uid;
    if (uid != null) {
      return firestore.collection('company').doc(uid).get().then((value) {
        if (value.exists) {
          return CompanyModel.fromDocument(value);
        } else {
          return CompanyModel(
            id: '',
            name: '',
            image: '',
            email: '',
            phone: '',
            address: '',
            totalEmployee: 0,
            createdAt: Timestamp.now(),
          );
        }
      });
    } else {
      throw ServerException('Error to get User data');
    }
  }

  @override
  Future<void> updateCompanyProfile() {
    // TODO(dickyrey): implement updateCompanyProfile
    throw UnimplementedError();
  }
}
