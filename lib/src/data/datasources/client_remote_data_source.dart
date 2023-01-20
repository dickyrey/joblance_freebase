import 'dart:convert';

import 'package:flutter/services.dart' as root;
import 'package:joblance_firebase/src/data/models/client_model.dart';

// ignore: one_member_abstracts
abstract class ClientRemoteDataSource {
  Future<ClientModel> getClientInformation();
}

class ClientRemoteDataSourceImpl extends ClientRemoteDataSource {
  @override
  Future<ClientModel> getClientInformation() async {
    final jsonData = await root.rootBundle.loadString('json_file/client.json');
    return ClientModel.fromJson(json.decode(jsonData) as Map<String, dynamic>);
  }
}
