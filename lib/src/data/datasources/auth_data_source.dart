import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/exception.dart';
import 'package:kumparan_clone/src/data/models/time_zone_model.dart';
import 'package:kumparan_clone/src/data/models/token_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthDataSource {
  Future<bool> checkGoogleAuth();
  Future<void> signInWithGoogle(String base64Date);
  Future<void> signOut();
  Future<TimeZoneModel> getTimeZone();
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
  Future<TimeZoneModel> getTimeZone() async {
    final url = Uri(
      scheme: Const.scheme,
      host: Const.worldTimeAPIHost,
      path: Const.timeZonePath,
    );
    final response = await client.get(url);
    if (response.statusCode == 200) {
      return TimeZoneModel.fromJson(
        json.decode(response.body) as Map<String, dynamic>,
      );
    } else {
      throw ServerException(ExceptionMessage.internetNotConnected);
    }
  }
}
