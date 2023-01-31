import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/exception.dart';
import 'package:kumparan_clone/src/data/models/token_model.dart';
import 'package:kumparan_clone/src/data/models/verification_status_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthDataSource {
  Future<bool> checkGoogleAuth();
  Future<void> signInWithGoogle(String base64Date);
  Future<bool> signInWithEmail({
    required String email,
    required String password,
  });
  Future<bool> signUpWithEmail(String email);
  Future<void> signOut();
  Future<List<String>> getTimeZone();
  Future<VerificationStatusModel> checkUserVerification();
}

class AuthDataSourceImpl extends AuthDataSource {
  AuthDataSourceImpl({
    required this.client,
    required this.googleSignIn,
  });

  final http.Client client;
  final GoogleSignIn googleSignIn;

  @override
  Future<bool> checkGoogleAuth() async {
    final isSignedIn = await googleSignIn.isSignedIn();
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString(Const.token);

    if (isSignedIn && token != null) {
      return true;
    } else if (token != null) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Future<void> signInWithGoogle(String base64Date) async {
    final prefs = await SharedPreferences.getInstance();

    try {
      final user = await googleSignIn.signIn();
      final url = Uri(
        scheme: Const.scheme,
        host: Const.host,
        path: Const.googleSignInPath,
        queryParameters: {
          'email': user?.email,
          'displayName': user?.displayName,
          'photo': (user!.photoUrl == null) ? Const.photo : user.photoUrl,
          'token': base64Date
        },
      );

      final response = await http.post(url);
      print(response.body);
      if (response.statusCode == 200) {
        final accessToken = TokenModel.fromJson(
          json.decode(response.body) as Map<String, dynamic>,
        );
        await prefs.setString(Const.token, accessToken.token);
        return;
      } else if (response.statusCode == 407) {
        await googleSignIn.signOut();
        throw ServerException(ExceptionMessage.internetNotConnected);
      } else {
        await googleSignIn.signOut();
        throw ServerException(ExceptionMessage.internetNotConnected);
      }
    } catch (error) {
      if (error is PlatformException) {
        if (error.code == 'SIGN_IN_CANCELLED') {
          await googleSignIn.signOut();
          throw ServerException(ExceptionMessage.internetNotConnected);
        } else {
          await googleSignIn.signOut();
          throw ServerException(ExceptionMessage.internetNotConnected);
        }
      } else {
        await googleSignIn.signOut();
        throw ServerException(ExceptionMessage.internetNotConnected);
      }
    }
  }

  @override
  Future<bool> signInWithEmail({
    required String email,
    required String password,
  }) async {
    final prefs = await SharedPreferences.getInstance();

    final headers = {
      'Accept': 'application/json',
    };
    final body = {
      'email': email,
      'password': password,
    };

    final url = Uri(
      scheme: Const.scheme,
      host: Const.host,
      path: Const.signInPath,
    );

    final response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      final accessToken = TokenModel.fromJson(
        json.decode(response.body) as Map<String, dynamic>,
      );
      await prefs.setString(Const.token, accessToken.token);
      return true;
    } else if (response.statusCode == 403) {
      throw ServerException(ExceptionMessage.wrongPassword);
    } else if (response.statusCode == 404) {
      throw ServerException(ExceptionMessage.userNotFound);
    } else {
      throw ServerException(ExceptionMessage.internetNotConnected);
    }
  }

  @override
  Future<bool> signUpWithEmail(String email) async {
    final prefs = await SharedPreferences.getInstance();

    final body = {
      'email': email,
    };

    final url = Uri(
      scheme: Const.scheme,
      host: Const.host,
      path: Const.signUpPath,
    );

    final response = await http.post(url, body: body);
    if (response.statusCode == 200) {
      final accessToken = TokenModel.fromJson(
        json.decode(response.body) as Map<String, dynamic>,
      );
      await prefs.setString(Const.token, accessToken.token);
      return true;
    } else if (response.statusCode == 400) {
      throw ServerException(ExceptionMessage.userAlreadyExist);
    } else {
      throw ServerException(ExceptionMessage.internetNotConnected);
    }
  }

  @override
  Future<void> signOut() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString(Const.token);
    final header = {
      'Authorization': 'Bearer $token',
    };

    final url = Uri(
      scheme: Const.scheme,
      host: Const.host,
      path: Const.signOutPath,
    );

    final response = await http.post(url, headers: header);

    if (response.statusCode == 200) {
      await googleSignIn.signOut();
      await prefs.remove(Const.token);
      return;
    } else {
      await googleSignIn.signOut();
      await prefs.remove(Const.token);
      throw ServerException(ExceptionMessage.internetNotConnected);
    }
  }

  @override
  Future<List<String>> getTimeZone() async {
    final url = Uri(
      scheme: Const.scheme,
      host: Const.host,
      path: Const.datetimePath,
    );
    final response = await client.get(url);
    if (response.statusCode == 200) {
      List<String> timeZoneModelFromJson(String str) {
        final list = json.decode(str) as List;
        return List<String>.from(list.map((x) => x.toString()));
      }

      return timeZoneModelFromJson(response.body);
    } else {
      throw ServerException(ExceptionMessage.internetNotConnected);
    }
  }

  @override
  Future<VerificationStatusModel> checkUserVerification() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString(Const.token);
    final header = {
      'Authorization': 'Bearer $token',
      'Accept': 'application/json',
    };
    final url = Uri(
      scheme: Const.scheme,
      host: Const.host,
      path: Const.userVerificationPath,
    );
    final response = await client.get(url, headers: header);
    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      return VerificationStatusModel.fromJson(
        json.decode(response.body) as Map<String, dynamic>,
      );
    } else {
      throw ServerException(ExceptionMessage.internetNotConnected);
    }
  }
}
