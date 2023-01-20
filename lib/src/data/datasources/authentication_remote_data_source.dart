import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:joblance_firebase/src/common/const.dart';
import 'package:joblance_firebase/src/common/exception.dart';
import 'package:joblance_firebase/src/data/models/profile_model.dart';

abstract class AuthenticationRemoteDataSource {
  Future<ProfileModel> getProfile();
  Future<void> signinWithEmail(
    String email,
    String password,
  );
  Future<void> createUserWithEmail({
    required ProfileModel profile,
    required String password,
  });
  Future<void> signInWithGoogle();
  Future<void> signOutUser();
}

class AuthenticationRemoteDataSourceImpl
    extends AuthenticationRemoteDataSource {
  AuthenticationRemoteDataSourceImpl({
    required this.firebaseAuth,
    required this.googleSignIn,
    required this.firestore,
  });

  final FirebaseAuth firebaseAuth;
  final GoogleSignIn googleSignIn;
  final FirebaseFirestore firestore;

  @override
  Future<ProfileModel> getProfile() async {
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
  Future<void> signinWithEmail(String email, String password) async {
    final result = await firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    if (result.user != null) {
      return;
    } else {
      throw ServerException('failed to sign in with email');
    }
  }

  @override
  Future<void> createUserWithEmail({
    required ProfileModel profile,
    required String password,
  }) async {
    final ref = firestore.collection('users');
    final result = await firebaseAuth.createUserWithEmailAndPassword(
      email: profile.email,
      password: password,
    );
    if (result.user != null) {
      final user = result.user!;
      await ref.doc(user.uid).set(profile.toMap(user.uid));
    } else {
      throw ServerException('Failed to create Account with Email');
    }
  }

  @override
  Future<void> signInWithGoogle() async {
    final result = await googleSignIn.signIn();
    final applicantCollection = firestore.collection('users');

    if (result != null) {
      final googleAuthentication = await result.authentication;

      final authCredential = GoogleAuthProvider.credential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );

      await firebaseAuth.signInWithCredential(authCredential);
      final user = firebaseAuth.currentUser;
      await applicantCollection.doc(user?.uid).get().then((data) async {
        if (data.exists == false) {
          final profileModel = ProfileModel(
            id: user?.uid ?? '',
            email: user?.email ?? '',
            fullName: user?.displayName ?? '',
            image: Const.profileImage,
            phoneNumber: '',
            position: '',
            company: '',
            location: '',
            about: '',
            birthday: Timestamp.now(),
            createdAt: Timestamp.now(),
          );
          await applicantCollection
              .doc(user?.uid)
              .set(profileModel.toMap(user?.uid ?? ''));
        }
      });
    } else {
      throw ServerException('Failed to Sign up with Google');
    }
  }

  @override
  Future<void> signOutUser() async {
    await firebaseAuth.signOut();
    await googleSignIn.signOut();
  }
}
