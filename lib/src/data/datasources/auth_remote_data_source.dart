import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/exception.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthRemoteDataSource {
  Future<bool> checkGoogleAuth();
  Future<void> signInWithGoogle(String token);
  Future<void> signOut();
}

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  AuthRemoteDataSourceImpl({
    required this.client,
    required this.googleSignIn,
  });
  
  final http.Client client;
  final GoogleSignIn googleSignIn;

  @override
  Future<bool> checkGoogleAuth() async {
    final isSignedIn = await googleSignIn.isSignedIn();
    if (isSignedIn) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Future<void> signInWithGoogle(String token) async {
    final _prefs = await SharedPreferences.getInstance();
    final user = await googleSignIn.signIn();
    // final _header = await _user?.authHeaders;
    // _header?['idToken'] = 'tt';
    // _header?['player_ids'] = playersId;
    // https://kayongku.com/kumparan/public/api/signin/google?email=herrymandala1@gmail.com&token={{token}}
    final header = {'Accept': 'application/json'};
    // final url = Uri.parse('https://interpretasi.id/api/signin/google?email=${user?.email}&token=$token=');
    final url = Uri(
      scheme: Const.scheme,
      host: Const.host,
      path: Const.googleSignInPath,
      queryParameters: {'email': user?.email, 'token': token},
    );

    final response = await http.post(url, headers: header);

    print('token: $token \n responseCode: ${response.statusCode}');
    print(response.body);
    if (response.statusCode == 200) {
      print('success');
      // await googleSignIn.signOut();
      // var _token = jsonDecode(response.body)['data'];
      // await _prefs.setString(ACCESS_TOKEN, _token);
      return;
      // final _storeResult = await http.get(Uri.parse('$BASE_URL/getStore'));
      // if (_storeResult.statusCode== 403) {
      //   await googleSignIn.signOut();
      //   throw ServerException(ExceptionMessage.storeNotRegistered);
      // }else {
      //   return;
      // }
    } else if (response.statusCode == 407) {
      await googleSignIn.signOut();
      throw ServerException(ExceptionMessage.internetNotConnected);
    } else {
      await googleSignIn.signOut();
      throw ServerException(ExceptionMessage.internetNotConnected);
    }
  }

  @override
  Future<void> signOut() async {
    // final prefs = await SharedPreferences.getInstance();
    await googleSignIn.signOut();
    print('LOGOOOOOOOOTTTT');
    // await prefs.remove(ACCESS_TOKEN);
  }
}
