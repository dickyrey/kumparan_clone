import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/exception.dart';
import 'package:kumparan_clone/src/data/models/user_model.dart';
import 'package:kumparan_clone/src/data/models/user_response.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class UserDataSource {
  Future<UserModel> getProfile();
  Future<void> changeProfile();
}

class UserDataSourceImpl extends UserDataSource {
  UserDataSourceImpl(this.client);
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
      path: Const.profilePath,
    );

    final response = await http.get(url, headers: header);
    if (response.statusCode == 200) {
      return UserResponse.fromJson(
        json.decode(response.body) as Map<String, dynamic>,
      ).user;
    } else if (response.statusCode == 401) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.remove(Const.token);
      throw ServerException(ExceptionMessage.internetNotConnected);
    } else {
      throw ServerException(ExceptionMessage.internetNotConnected);
    }
  }
}
