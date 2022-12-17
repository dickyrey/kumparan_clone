import 'package:flutter/material.dart';
import 'package:kumparan_clone/src/common/routes.dart';
import 'package:kumparan_clone/src/presentation/pages/email_verification_page.dart';
import 'package:kumparan_clone/src/presentation/pages/interest_page.dart';
import 'package:kumparan_clone/src/presentation/pages/login_page.dart';
import 'package:kumparan_clone/src/presentation/pages/on_boarding_page.dart';
import 'package:kumparan_clone/src/presentation/pages/register_page.dart';
import 'package:kumparan_clone/src/presentation/pages/splash_page.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case SPLASH:
        return MaterialPageRoute(
          builder: (_) => const SplashPage(),
        );
      case ON_BOARDING:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingPage(),
        );
      case INTEREST:
        return MaterialPageRoute(
          builder: (_) => const InterestPage(),
        );
      case REGISTER:
        return MaterialPageRoute(
          builder: (_) => const RegisterPage(),
        );
      case EMAIL_VERIFICATION:
        return MaterialPageRoute(
          builder: (_) => const EmailVerificationPage(),
        );
      case LOGIN:
        return MaterialPageRoute(
          builder: (_) => const LoginPage(),
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return const Scaffold(
          body: Center(
            child: Text('ERROR 404 NOT FOUND'),
          ),
        );
      },
    );
  }
}
