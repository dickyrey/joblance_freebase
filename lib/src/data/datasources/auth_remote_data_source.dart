import 'dart:convert';

import 'package:flutter/services.dart' as root;
import 'package:joblance_firebase/src/common/const.dart';
import 'package:joblance_firebase/src/data/models/token_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthRemoteDataSource {
  Future<void> signInWithEmailAndPassword(String email, String password);
  Future<void> registerWithEmailAndPassword(
    String username,
    String email,
    String phone,
    String password,
  );
  Future<void> signOut();
}

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  @override
  Future<void> signInWithEmailAndPassword(
    String email,
    String password,
  ) async {
    await Future.delayed(
      const Duration(seconds: 2),
      () async {
        final prefs = await SharedPreferences.getInstance();
        final jsonData =
            await root.rootBundle.loadString('json_file/token.json');
        final result = TokenModel.fromJson(
          json.decode(jsonData) as Map<String, dynamic>,
        );
        await prefs.setString(Const.accessToken, result.accessToken);
      },
    );
    return;
  }

  @override
  Future<void> registerWithEmailAndPassword(
    String username,
    String email,
    String phone,
    String password,
  ) async {
    await Future.delayed(
      const Duration(seconds: 2),
      () async {
        final prefs = await SharedPreferences.getInstance();
        final jsonData =
            await root.rootBundle.loadString('json_file/token.json');
        final result = TokenModel.fromJson(
          json.decode(jsonData) as Map<String, dynamic>,
        );
        await prefs.setString(Const.accessToken, result.accessToken);
      },
    );
    return;
  }

  @override
  Future<void> signOut() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(Const.accessToken);
  }
}
