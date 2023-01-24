import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:joblance_firebase/src/common/exception.dart';
import 'package:joblance_firebase/src/data/models/profile_model.dart';
import 'package:path/path.dart';

abstract class ProfileDataSource {
  Future<ProfileModel> getProfile();
  Future<void> changeProfile({
    required ProfileModel profileModel,
    required File? imageFile,
  });
}

class ProfileDataSourceImpl extends ProfileDataSource {
  ProfileDataSourceImpl({
    required this.firebaseAuth,
    required this.firestore,
    required this.storage,
  });

  final FirebaseAuth firebaseAuth;
  final FirebaseFirestore firestore;
  final FirebaseStorage storage;

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
  Future<void> changeProfile({
    required ProfileModel profileModel,
    required File? imageFile,
  }) async {
    final applicantCollection = firestore.collection('users');
    final user = firebaseAuth.currentUser;
    if (imageFile != null) {
      final fileName = basename(imageFile.path);
      final ref = storage.ref().child('images/$fileName');
      final uploadTask = ref.putFile(imageFile);
      final imageUrl = await (await uploadTask).ref.getDownloadURL();
      await applicantCollection
          .doc(user?.uid)
          .update(profileModel.toMap(uid: user?.uid, imageFile: imageUrl));
    } else {
      await applicantCollection
          .doc(user?.uid)
          .update(profileModel.toMap(uid: user?.uid));
    }
  }
}
