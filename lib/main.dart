import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:kumparan_clone/injection.dart' as di;
import 'package:kumparan_clone/l10n/l10n.dart';
import 'package:kumparan_clone/src/common/routes.dart';
import 'package:kumparan_clone/src/common/themes.dart';
import 'package:kumparan_clone/src/presentation/bloc/article/article_detail_watcher/article_detail_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/article/article_form/article_form_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/article/delete_article_actor/delete_article_actor_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/article/new_article/article_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/auth/auth_watcher/auth_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/auth/sign_in_with_email_form/sign_in_with_email_form_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/auth/sign_in_with_google_actor/sign_in_with_google_actor_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/auth/sign_up_with_email_form/sign_up_with_email_form_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/auth/verification_status_watcher/verification_status_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/boarding/boarding_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/category/category_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/comment_article/article_comment_watcher/article_comment_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/comment_article/delete_comment_actor/delete_comment_actor_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/comment_article/send_comment_actor/send_comment_actor_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/email/backup_email_form/backup_email_form_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/email/verification_email_form/verification_email_form_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/forgot_password/forgot_password_form_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/interest/interest_form_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/like_article_watcher/like_article_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/notice/notice_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/password/password_form_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/phone_number/phone_number_form_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/search/search_province_form_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/time_zone_watcher/time_zone_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/user/user_form/user_form_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/user/user_watcher/user_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/user_article/change_to_moderated_actor/change_to_moderated_actor_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/user_article/read_history_watcher/read_history_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/user_article/user_article_banned_watcher/user_article_banned_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/user_article/user_article_drafted_watcher/user_article_drafted_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/user_article/user_article_moderated_watcher/user_article_moderated_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/user_article/user_article_published_watcher/user_article_published_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/user_article/user_article_rejected_watcher/user_article_rejected_watcher_bloc.dart';
import 'package:kumparan_clone/src/utilities/route_generator.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => di.locator<ArticleCommentWatcherBloc>()),
        BlocProvider(create: (context) => di.locator<ArticleDetailWatcherBloc>()),
        BlocProvider(create: (context) => di.locator<ArticleFormBloc>()),
        BlocProvider(create: (context) => di.locator<DeleteArticleActorBloc>()),
        BlocProvider(create: (context) => di.locator<DeleteCommentActorBloc>()),
        BlocProvider(create: (context) => di.locator<ArticleWatcherBloc>()),
        BlocProvider(create: (context) => di.locator<SendCommentActorBloc>()),
        BlocProvider(create: (context) => di.locator<AuthWatcherBloc>()),
        BlocProvider(create: (context) => di.locator<SignInWithEmailFormBloc>()),
        BlocProvider(create: (context) => di.locator<SignInWithGoogleActorBloc>()),
        BlocProvider(create: (context) => di.locator<SignUpWithEmailFormBloc>()),
        BlocProvider(create: (context) => di.locator<VerificationStatusWatcherBloc>()),
        BlocProvider(create: (context) => di.locator<BoardingWatcherBloc>()),
        BlocProvider(create: (context) => di.locator<CategoryWatcherBloc>()),
        BlocProvider(create: (context) => di.locator<BackupEmailFormBloc>()),
        BlocProvider(create: (context) => di.locator<VerificationEmailFormBloc>()),
        BlocProvider(create: (context) => di.locator<ForgotPasswordFormBloc>()),
        BlocProvider(create: (context) => di.locator<InterestFormBloc>()),
        BlocProvider(create: (context) => di.locator<LikeArticleWatcherBloc>()),
        BlocProvider(create: (context) => di.locator<NoticeWatcherBloc>()),
        BlocProvider(create: (context) => di.locator<PasswordFormBloc>()),
        BlocProvider(create: (context) => di.locator<PhoneNumberFormBloc>()),
        BlocProvider(create: (context) => di.locator<SearchProvinceFormBloc>()),
        BlocProvider(create: (context) => di.locator<TimeZoneWatcherBloc>()),
        BlocProvider(create: (context) => di.locator<UserFormBloc>()),
        BlocProvider(create: (context) => di.locator<UserWatcherBloc>()),
        BlocProvider(create: (context) => di.locator<ChangeToModeratedActorBloc>()),
        BlocProvider(create: (context) => di.locator<ReadHistoryWatcherBloc>()),
        BlocProvider(create: (context) => di.locator<UserArticleBannedWatcherBloc>()),
        BlocProvider(create: (context) => di.locator<UserArticleDraftedWatcherBloc>()),
        BlocProvider(create: (context) => di.locator<UserArticleModeratedWatcherBloc>()),
        BlocProvider(create: (context) => di.locator<UserArticlePublishedWatcherBloc>()),
        BlocProvider(create: (context) => di.locator<UserArticleRejectedWatcherBloc>()),

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
