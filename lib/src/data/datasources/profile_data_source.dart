import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/exception.dart';
import 'package:kumparan_clone/src/data/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ProfileDataSource {
  Future<UserModel> getProfile();
  Future<void> changeProfile();
}

class ProfileDataSourceImpl extends ProfileDataSource {
  ProfileDataSourceImpl(this.client);
  final http.Client client;

  @override
  Future<void> changeProfile() {
    // TODO(dickyrey): implement changeProfile
    throw UnimplementedError();
  }

  @override
  Future<UserModel> getProfile() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString(Const.token);
    final header = {
      'Authorization': 'Bearer $token',
      'Accept': 'application/json',
    };

    final url = Uri(
      scheme: Const.scheme,
      host: Const.host,
      path: Const.userPath,
    );

    final response = await http.get(url, headers: header);
    if (response.statusCode == 200) {
      return UserModel.fromJson(
        json.decode(response.body) as Map<String, dynamic>,
      );
    } else if (response.statusCode == 401) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(Const.token);
      throw ServerException(ExceptionMessage.internetNotConnected);
    } else {
      throw ServerException(ExceptionMessage.internetNotConnected);
    }
  }
}
