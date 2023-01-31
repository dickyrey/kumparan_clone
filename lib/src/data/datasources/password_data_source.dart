import 'package:http/http.dart' as http;
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/exception.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class PasswordDataSource {
  Future<bool> addPassword(String password);
  Future<bool> changePassword({
    required String oldPassword,
    required String newPassword,
  });
}

class PasswordDataSourceImpl extends PasswordDataSource {
  PasswordDataSourceImpl(this.client);
  final http.Client client;
  @override
  Future<bool> addPassword(String password) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString(Const.token);
    final header = {
      'Authorization': 'Bearer $token',
      'Accept': 'application/json',
    };

    final body = {
      'password': password,
      'password_confirmation': password,
    };

    final url = Uri(
      scheme: Const.scheme,
      host: Const.host,
      path: Const.addPasswordPath,
    );

    final response = await client.post(
      url,
      headers: header,
      body: body,
    );

print(response.body);
    if (response.statusCode == 200) {
      return true;
    } else {
      throw ServerException(ExceptionMessage.internetNotConnected);
    }
  }

  @override
  Future<bool> changePassword({
    required String oldPassword,
    required String newPassword,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString(Const.token);
    final header = {
      'Authorization': 'Bearer $token',
      'Accept': 'application/json',
    };

    final body = {
      'old_password': oldPassword,
      'new_password': newPassword,
      'new_password_confirmation': newPassword,
    };

    final url = Uri(
      scheme: Const.scheme,
      host: Const.host,
      path: Const.changePasswordPath,
    );

    final response = await client.post(
      url,
      headers: header,
      body: body,
    );

    if (response.statusCode == 200) {
      return true;
    } else {
      throw ServerException(ExceptionMessage.internetNotConnected);
    }
  }
}
