import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:joblance_firebase/src/common/const.dart';
import 'package:joblance_firebase/src/common/exception.dart';
import 'package:joblance_firebase/src/data/models/profile_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthRemoteDataSource {
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
  Future<bool> checkAuthStatus();
}

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  AuthRemoteDataSourceImpl({
    required this.firebaseAuth,
    required this.googleSignIn,
    required this.firestore,
  });

  final FirebaseAuth firebaseAuth;
  final GoogleSignIn googleSignIn;
  final FirebaseFirestore firestore;

  @override
  Future<void> signinWithEmail(String email, String password) async {
    final prefs = await SharedPreferences.getInstance();
    final result = await firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    if (result.user != null) {
      final token = firebaseAuth.currentUser?.uid;

      /// Set [Token] into [SharedPreference]
      ///
      await prefs.setString(Const.accessToken, token ?? '');
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
    final prefs = await SharedPreferences.getInstance();
    final ref = firestore.collection('users');
    final result = await firebaseAuth.createUserWithEmailAndPassword(
      email: profile.email,
      password: password,
    );
    if (result.user != null) {
      final user = result.user!;
      await ref.doc(user.uid).set(profile.toMap());

      /// Set [Token] into [SharedPreference]
      ///
      await prefs.setString(Const.accessToken, user.uid);
    } else {
      throw ServerException('Failed to create Account with Email');
    }
  }

  @override
  Future<void> signInWithGoogle() async {
    final prefs = await SharedPreferences.getInstance();
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
            address: '',
            birthday: Timestamp.fromDate(DateTime(1990)),
            createdAt: Timestamp.now(),
          );
          await applicantCollection.doc(user?.uid).set(profileModel.toMap());

          /// Set [Token] into [SharedPreference]
          ///
          await prefs.setString(Const.accessToken, user?.uid ?? '');
        }
      });
    } else {
      throw ServerException('Failed to Sign up with Google');
    }
  }

  @override
  Future<void> signOutUser() async {
    final prefs = await SharedPreferences.getInstance();

    await firebaseAuth.signOut();
    await googleSignIn.signOut();
    await prefs.remove(Const.accessToken);
  }

  @override
  Future<bool> checkAuthStatus() async {
    final isSignedIn = await googleSignIn.isSignedIn();
    final prefs = await SharedPreferences.getInstance();
    final uid = firebaseAuth.currentUser?.uid;
    final token = prefs.getString(Const.accessToken);

    if (isSignedIn) {
      return true;
    } else if (uid != null && token != null) {
      return true;
    } else {
      return false;
    }
  }
}
