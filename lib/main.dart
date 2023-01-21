import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:kumparan_clone/injection.dart' as di;
import 'package:kumparan_clone/l10n/l10n.dart';
import 'package:kumparan_clone/src/common/routes.dart';
import 'package:kumparan_clone/src/common/themes.dart';
import 'package:kumparan_clone/src/presentation/bloc/article/new_article/new_article_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/auth/auth_watcher/auth_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/auth/sign_in_with_google_actor/sign_in_with_google_actor_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/boarding/boarding_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/category/category_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/email/backup_email_form/backup_email_form_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/email/verification_email_form/verification_email_form_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/forgot_password/forgot_password_form_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/interest/interest_form_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/login/login_form_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/notice/notice_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/password/password_form_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/phone_number/phone_number_form_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/register/register_form_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/search/search_province_form_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/user/user_form/user_form_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/user/user_watcher/user_watcher_bloc.dart';
import 'package:kumparan_clone/src/utilities/route_generator.dart';

void main() {
  di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => di.locator<NewArticleWatcherBloc>()),
        BlocProvider(create: (context) => di.locator<AuthWatcherBloc>()),
        BlocProvider(create: (context) => di.locator<SignInWithGoogleActorBloc>()),
        BlocProvider(create: (context) => di.locator<BoardingWatcherBloc>()),
        BlocProvider(create: (context) => di.locator<CategoryWatcherBloc>()),
        BlocProvider(create: (context) => di.locator<BackupEmailFormBloc>()),
        BlocProvider(create: (context) => di.locator<VerificationEmailFormBloc>()),
        BlocProvider(create: (context) => di.locator<ForgotPasswordFormBloc>()),
        BlocProvider(create: (context) => di.locator<InterestFormBloc>()),
        BlocProvider(create: (context) => di.locator<LoginFormBloc>()),
        BlocProvider(create: (context) => di.locator<NoticeWatcherBloc>()),
        BlocProvider(create: (context) => di.locator<PasswordFormBloc>()),
        BlocProvider(create: (context) => di.locator<PhoneNumberFormBloc>()),
        BlocProvider(create: (context) => di.locator<RegisterFormBloc>()),
        BlocProvider(create: (context) => di.locator<SearchProvinceFormBloc>()),
        BlocProvider(create: (context) => di.locator<UserFormBloc>()),
        BlocProvider(create: (context) => di.locator<UserWatcherBloc>()),
      ],
      child: MaterialApp(
        title: 'Kumparan',
        debugShowCheckedModeBanner: false,
        theme: themeLight(context),
        darkTheme: themeDark(context),
        themeMode: ThemeMode.light,
        supportedLocales: L10n.all,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        initialRoute: SPLASH,
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
