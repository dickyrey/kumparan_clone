class Const {
  static const double space8 = 8;
  static const double space12 = 12;
  static const double space15 = 15;
  static const double space25 = 25;
  static const double space50 = 50;
  static const double radius = 8;
  static const double margin = 18;
  
  static const String token = 'access_token';
  static const String host = 'interpretasi.id';
  static const String scheme = 'https';
  static const String googleSignInPath = '/api/signin/google';
  static const String userVerificationPath = '/api/user/check';
  static const String articlePath = '/api/article/';
  static const String addPasswordPath = '/api/user/password/add';
  static const String changePasswordPath = '/api/user/password/change';
  static const String myArticlePath = '/api/user/articles';
  static const String commentPath = '/comment';
  static const String likePath = '/like';
  static const String signInPath = '/api/signin';
  static const String signUpPath = '/api/signup';
  static const String signOutPath = '/api/signout';
  static const String profilePath = '/api/user/profile';
  static const String userProfileUpdatePath = '/api/user/profile/update';
  static const String unusedPath = 'https://interpretasi.id/api/article/';
  static const String datetimePath = '/api/datetime';
  static const String photo = 'https://i.pinimg.com/564x/57/70/f0/5770f01a32c3c53e90ecda61483ccb08.jpg';
}

class CustomIcons {
  // SVG Assets
  static const String duolingo = 'assets/duolingo.svg';
  static const String facebook = 'assets/facebook.svg';
  static const String google = 'assets/google.svg';
  static const String indonesiaFlag = 'assets/indonesia_flag.svg';

  // PNG Assets
  static const String comments = 'assets/comments.png';
  static const String content = 'assets/content.png';
  static const String emailSend = 'assets/email_send.png';
  static const String mail = 'assets/mail.png';
  static const String likes = 'assets/likes.png';
  static const String localNews = 'assets/local_news.png';
}

class ExceptionMessage {
  static const String internetNotConnected = 'internet-not-connected';
  static const String userAlreadyExist = 'user-already-exist';
  static const String wrongPassword = 'wrong-password';
  static const String userNotFound = 'user-not-found';
}
