import 'package:flutter/material.dart';
import 'package:kumparan_clone/src/common/routes.dart';
import 'package:kumparan_clone/src/domain/entities/article.dart';
import 'package:kumparan_clone/src/presentation/pages/add_phone_number_page.dart';
import 'package:kumparan_clone/src/presentation/pages/add_second_email_page.dart';
import 'package:kumparan_clone/src/presentation/pages/backup_email_verification_page.dart';
import 'package:kumparan_clone/src/presentation/pages/change_profile_page.dart';
import 'package:kumparan_clone/src/presentation/pages/delete_account_page.dart';
import 'package:kumparan_clone/src/presentation/pages/email_verification_page.dart';
import 'package:kumparan_clone/src/presentation/pages/forgot_password_page.dart';
import 'package:kumparan_clone/src/presentation/pages/interest_page.dart';
import 'package:kumparan_clone/src/presentation/pages/interest_setting_page.dart';
import 'package:kumparan_clone/src/presentation/pages/login_page.dart';
import 'package:kumparan_clone/src/presentation/pages/my_content_page.dart';
import 'package:kumparan_clone/src/presentation/pages/on_boarding_page.dart';
import 'package:kumparan_clone/src/presentation/pages/password_page.dart';
import 'package:kumparan_clone/src/presentation/pages/profile_page.dart';
import 'package:kumparan_clone/src/presentation/pages/read_article_page.dart';
import 'package:kumparan_clone/src/presentation/pages/register_page.dart';
import 'package:kumparan_clone/src/presentation/pages/settings_and_privacy_page.dart';
import 'package:kumparan_clone/src/presentation/pages/splash_page.dart';
import 'package:kumparan_clone/src/presentation/widgets/bottom_nav_bar_widget.dart';

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
      case INTEREST_SETTING:
        return MaterialPageRoute(
          builder: (_) => const InterestSettingPage(),
        );
      case REGISTER:
        return MaterialPageRoute(
          builder: (_) => const RegisterPage(),
        );
      case EMAIL_VERIFICATION:
        return MaterialPageRoute(
          builder: (_) => const EmailVerificationPage(),
        );
      case BACKUP_EMAIL_VERIFICATION:
        if (args is String) {
          return MaterialPageRoute(
            builder: (_) => BackupEmailVerificationPage(email: args),
          );
        }
        return _errorRoute();
      case FORGOT_PASSWORD:
        return MaterialPageRoute(
          builder: (_) => const ForgotPasswordPage(),
        );
      case LOGIN:
        return MaterialPageRoute(
          builder: (_) => const LoginPage(),
        );
      case HOME:
        return MaterialPageRoute(
          builder: (_) => const ButtonNavBarWidget(),
        );
      case MENU:
        return MaterialPageRoute(
          builder: (_) => const ButtonNavBarWidget(index: 3),
        );
      case PROFILE:
        return MaterialPageRoute(
          builder: (_) => const ProfilePage(),
        );
      case MY_CONTENT:
        return MaterialPageRoute(
          builder: (_) => const MyContentPage(),
        );
      case SETTINGS_AND_PRIVACY:
        return MaterialPageRoute(
          builder: (_) => const SettingsAndPrivacyPage(),
        );
      case CHANGE_PROFILE:
        return MaterialPageRoute(
          builder: (_) => const ChangeProfilePage(),
        );
      case ADD_SECOND_EMAIL:
        return MaterialPageRoute(
          builder: (_) => const AddSecondEmailPage(),
        );
      case ADD_PHONE_NUMBER:
        return MaterialPageRoute(
          builder: (_) => const AddPhoneNumberPage(),
        );
      case PASSWORD:
        return MaterialPageRoute(
          builder: (_) => const PasswordPage(),
        );
      case DELETE_ACCOUNT:
        return MaterialPageRoute(
          builder: (_) => const DeleteAccountPage(),
        );
      case READ_ARTICLE:
        if (args is Article) {
          return MaterialPageRoute(
            builder: (_) => ReadArticlePage(article: args),
          );
        }
        return _errorRoute();
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
