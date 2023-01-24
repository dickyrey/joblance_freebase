import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:joblance_firebase/src/common/exception.dart';
import 'package:joblance_firebase/src/data/models/profile_model.dart';

abstract class ProfileDataSource {
  Future<ProfileModel> getProfile();
  Future<void> changeProfile(ProfileModel profileModel);
}

class ProfileDataSourceImpl extends ProfileDataSource {
  ProfileDataSourceImpl({
    required this.firebaseAuth,
    required this.firestore,
  });

  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore firestore;

  @override
  Future<ProfileModel> getProfile() {
    final uid = firebaseAuth.currentUser?.uid;
    if (uid != null) {
      return firestore
          .collection('users')
          .doc(uid)
          .get()
          .then((value) => ProfileModel.fromDocument(value));
    } else {
      throw ServerException('Error to get User data');
    }
  }

  @override
  Future<void> changeProfile(ProfileModel profileModel) async {
    final applicantCollection = firestore.collection('users');
    final user = firebaseAuth.currentUser;
    await applicantCollection
        .doc(user?.uid)
        .update(profileModel.toMap(user?.uid));
  }
}
