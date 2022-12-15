import 'package:flutter/material.dart';
import 'package:kumparan_clone/src/common/routes.dart';
import 'package:kumparan_clone/src/presentation/pages/interest_page.dart';
import 'package:kumparan_clone/src/presentation/pages/on_boarding_page.dart';
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
      // case SIGN_IN:
      //   return MaterialPageRoute(
      //     builder: (_) => const SignInPage(),
      //   );
      // case SIGN_UP:
      //   return MaterialPageRoute(
      //     builder: (_) => const SignUpPage(),
      //   );
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
