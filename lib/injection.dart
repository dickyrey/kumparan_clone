import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:kumparan_clone/src/data/datasources/article_data_source.dart';
import 'package:kumparan_clone/src/data/datasources/auth_data_source.dart';
import 'package:kumparan_clone/src/data/datasources/boarding_remote_data_source.dart';
import 'package:kumparan_clone/src/data/datasources/category_remote_data_source.dart';
import 'package:kumparan_clone/src/data/datasources/comment_article_data_source.dart';
import 'package:kumparan_clone/src/data/datasources/like_article_data_source.dart';
import 'package:kumparan_clone/src/data/datasources/notice_remote_data_source.dart';
import 'package:kumparan_clone/src/data/datasources/password_data_source.dart';
import 'package:kumparan_clone/src/data/datasources/user_article_data_source.dart';
import 'package:kumparan_clone/src/data/datasources/user_data_source.dart';
import 'package:kumparan_clone/src/data/repositories/article_repository_impl.dart';
import 'package:kumparan_clone/src/data/repositories/auth_repository_impl.dart';
import 'package:kumparan_clone/src/data/repositories/boarding_repository_impl.dart';
import 'package:kumparan_clone/src/data/repositories/category_repository_impl.dart';
import 'package:kumparan_clone/src/data/repositories/comment_article_repository_impl.dart';
import 'package:kumparan_clone/src/data/repositories/like_article_repository_impl.dart';
import 'package:kumparan_clone/src/data/repositories/notice_repository_impl.dart';
import 'package:kumparan_clone/src/data/repositories/password_repository_impl.dart';
import 'package:kumparan_clone/src/data/repositories/user_article_repository_impl.dart';
import 'package:kumparan_clone/src/data/repositories/user_repository_impl.dart';
import 'package:kumparan_clone/src/domain/repositories/article_repository.dart';
import 'package:kumparan_clone/src/domain/repositories/auth_repository.dart';
import 'package:kumparan_clone/src/domain/repositories/boarding_repository.dart';
import 'package:kumparan_clone/src/domain/repositories/category_repository.dart';
import 'package:kumparan_clone/src/domain/repositories/comment_article_repository.dart';
import 'package:kumparan_clone/src/domain/repositories/like_article_repository.dart';
import 'package:kumparan_clone/src/domain/repositories/notice_repository.dart';
import 'package:kumparan_clone/src/domain/repositories/password_repository.dart';
import 'package:kumparan_clone/src/domain/repositories/user_article_repository.dart';
import 'package:kumparan_clone/src/domain/repositories/user_repository.dart';
import 'package:kumparan_clone/src/domain/usecases/article/create_article.dart';
import 'package:kumparan_clone/src/domain/usecases/article/delete_article.dart';
import 'package:kumparan_clone/src/domain/usecases/article/get_article_detail.dart';
import 'package:kumparan_clone/src/domain/usecases/article/get_article_list.dart';
import 'package:kumparan_clone/src/domain/usecases/article/update_article.dart';
import 'package:kumparan_clone/src/domain/usecases/auth/check_google_auth.dart';
import 'package:kumparan_clone/src/domain/usecases/auth/check_user_verification.dart';
import 'package:kumparan_clone/src/domain/usecases/auth/get_time_zone.dart';
import 'package:kumparan_clone/src/domain/usecases/auth/resend_email_verification.dart';
import 'package:kumparan_clone/src/domain/usecases/auth/sign_in_with_email.dart';
import 'package:kumparan_clone/src/domain/usecases/auth/sign_in_with_google.dart';
import 'package:kumparan_clone/src/domain/usecases/auth/sign_out_with_google.dart';
import 'package:kumparan_clone/src/domain/usecases/auth/sign_up_with_email.dart';
import 'package:kumparan_clone/src/domain/usecases/comment_article/delete_comment.dart';
import 'package:kumparan_clone/src/domain/usecases/comment_article/get_comment_list.dart';
import 'package:kumparan_clone/src/domain/usecases/comment_article/send_comment.dart';
import 'package:kumparan_clone/src/domain/usecases/get_boarding_list.dart';
import 'package:kumparan_clone/src/domain/usecases/get_categories.dart';
import 'package:kumparan_clone/src/domain/usecases/get_notice_list.dart';
import 'package:kumparan_clone/src/domain/usecases/like_article/check_like_status.dart';
import 'package:kumparan_clone/src/domain/usecases/like_article/like_article.dart';
import 'package:kumparan_clone/src/domain/usecases/password/add_password.dart';
import 'package:kumparan_clone/src/domain/usecases/password/change_password.dart';
import 'package:kumparan_clone/src/domain/usecases/user/get_user_profile.dart';
import 'package:kumparan_clone/src/domain/usecases/user/update_user_profile.dart';
import 'package:kumparan_clone/src/domain/usecases/user_article/change_to_moderated.dart';
import 'package:kumparan_clone/src/domain/usecases/user_article/get_banned_article.dart';
import 'package:kumparan_clone/src/domain/usecases/user_article/get_drafted_article.dart';
import 'package:kumparan_clone/src/domain/usecases/user_article/get_moderated_article.dart';
import 'package:kumparan_clone/src/domain/usecases/user_article/get_published_article.dart';
import 'package:kumparan_clone/src/domain/usecases/user_article/get_rejected_article.dart';
import 'package:kumparan_clone/src/domain/usecases/user_article/history_article.dart';
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

final locator = GetIt.instance;

void init() {
  /// List of [External Packages]
  ///
  ///
  final httpPackage = http.Client();
  locator.registerLazySingleton(
    () => httpPackage,
  );

  final googleSignIn = GoogleSignIn();
  locator.registerLazySingleton(
    () => googleSignIn,
  );

  /// List of [Remote Data Source]
  ///
  ///
  final articleDataSource = ArticleDataSourceImpl(httpPackage);
  locator.registerLazySingleton<ArticleDataSource>(
    () => articleDataSource,
  );

  final authDataSource = AuthDataSourceImpl(
    client: locator(),
    googleSignIn: locator(),
  );
  locator.registerLazySingleton<AuthDataSource>(
    () => authDataSource,
  );

  final boardingRemoteDataSource = BoardingRemoteDataSourceImpl();
  locator.registerLazySingleton<BoardingRemoteDataSource>(
    () => boardingRemoteDataSource,
  );

  final categoryRemoteDataSource = CategoryRemoteDataSourceImpl();
  locator.registerLazySingleton<CategoryRemoteDataSource>(
    () => categoryRemoteDataSource,
  );

  final commentArticleDataSource = CommentArticleDataSourceImpl(locator());
  locator.registerLazySingleton<CommentArticleDataSource>(
    () => commentArticleDataSource,
  );

  final likeArticleDataSource = LikeArticleDataSourceImpl(locator());
  locator.registerLazySingleton<LikeArticleDataSource>(
    () => likeArticleDataSource,
  );

  final noticeRemoteDataSource = NoticeRemoteDataSourceImpl();
  locator.registerLazySingleton<NoticeRemoteDataSource>(
    () => noticeRemoteDataSource,
  );

  final passwordDataSource = PasswordDataSourceImpl(locator());
  locator.registerLazySingleton<PasswordDataSource>(
    () => passwordDataSource,
  );

  final userDataSource = UserDataSourceImpl(locator());
  locator.registerLazySingleton<UserDataSource>(
    () => userDataSource,
  );

  final userArticleDataSource = UserArticleDataSourceImpl(locator());
  locator.registerLazySingleton<UserArticleDataSource>(
    () => userArticleDataSource,
  );

  /// List of [Repositories]
  ///
  ///
  final articleRepository = ArticleRepositoryImpl(dataSource: locator());
  locator.registerLazySingleton<ArticleRepository>(
    () => articleRepository,
  );

  final authRepository = AuthRepositoryImpl(locator());
  locator.registerLazySingleton<AuthRepository>(
    () => authRepository,
  );

  final boardingRepository = BoardingRepositoryImpl(dataSource: locator());
  locator.registerLazySingleton<BoardingRepository>(
    () => boardingRepository,
  );

  final categoryRepository = CategoryRepositoryImpl(dataSource: locator());
  locator.registerLazySingleton<CategoryRepository>(
    () => categoryRepository,
  );

  final commentArticleRepository = CommentArticleRepositoryImpl(locator());
  locator.registerLazySingleton<CommentArticleRepository>(
    () => commentArticleRepository,
  );

  final likeArticleRepository = LikeArticleRepositoryImpl(locator());
  locator.registerLazySingleton<LikeArticleRepository>(
    () => likeArticleRepository,
  );

  final noticeRepository = NoticeRepositoryImpl(dataSource: locator());
  locator.registerLazySingleton<NoticeRepository>(
    () => noticeRepository,
  );

  final passwordRepository = PasswordRepositoryImpl(locator());
  locator.registerLazySingleton<PasswordRepository>(
    () => passwordRepository,
  );

  final userRepository = UserRepositoryImpl(locator());
  locator.registerLazySingleton<UserRepository>(
    () => userRepository,
  );

  final userArticleRepository = UserArticleRepositoryImpl(locator());
  locator.registerLazySingleton<UserArticleRepository>(
    () => userArticleRepository,
  );

  /// List of [Usecases]
  ///
  ///

  //* Filter by [Article] folder
  //*
  final createArtcleUseCase = CreateArticle(locator());
  locator.registerLazySingleton(
    () => createArtcleUseCase,
  );

  final deleteArticleUseCase = DeleteArticle(locator());
  locator.registerLazySingleton(
    () => deleteArticleUseCase,
  );

  final getArticleDetailUseCase = GetArticleDetail(locator());
  locator.registerLazySingleton(
    () => getArticleDetailUseCase,
  );

  final getArticleListUseCase = GetArticleList(locator());
  locator.registerLazySingleton(
    () => getArticleListUseCase,
  );

  final updateArtcleUseCase = UpdateArticle(locator());
  locator.registerLazySingleton(
    () => updateArtcleUseCase,
  );

  //* Filter by [Auth] folder
  //*
  final checkGoogleAuthUseCase = CheckGoogleAuth(locator());
  locator.registerLazySingleton(
    () => checkGoogleAuthUseCase,
  );

  final checkUserVerificationUseCase = CheckUserVerification(locator());
  locator.registerLazySingleton(
    () => checkUserVerificationUseCase,
  );

  final getTimeZoneUseCase = GetTimeZone(locator());
  locator.registerLazySingleton(
    () => getTimeZoneUseCase,
  );

  final resendEmailVerificationUseCase = ResendEmailVerification(locator());
  locator.registerLazySingleton(
    () => resendEmailVerificationUseCase,
  );

  final signInWithGoogleUseCase = SignInWithGoogle(locator());
  locator.registerLazySingleton(
    () => signInWithGoogleUseCase,
  );

  final signOutWithGoogle = SignOut(locator());
  locator.registerLazySingleton(
    () => signOutWithGoogle,
  );

  final signInWithEmail = SignInWithEmail(locator());
  locator.registerLazySingleton(
    () => signInWithEmail,
  );

  final signUpWithEmail = SignUpWithEmail(locator());
  locator.registerLazySingleton(
    () => signUpWithEmail,
  );

  //* Filter by [Comment Article] folder
  //*
  final deleteCommentUseCase = DeleteComment(locator());
  locator.registerLazySingleton(
    () => deleteCommentUseCase,
  );

  final getCommentListUseCase = GetCommentList(locator());
  locator.registerLazySingleton(
    () => getCommentListUseCase,
  );

  final sendCommentUseCase = SendComment(locator());
  locator.registerLazySingleton(
    () => sendCommentUseCase,
  );

  //* Filter by [Profile] folder
  //*
  final checkLikeStatusUseCase = CheckLikeStatus(locator());
  locator.registerLazySingleton(
    () => checkLikeStatusUseCase,
  );
  final likeOrUnlikedArticleUseCase = LikeOrUnlikedArticle(locator());
  locator.registerLazySingleton(
    () => likeOrUnlikedArticleUseCase,
  );

  //* Filter by [Password] folder
  //*
  final addPasswordUseCase = AddPassword(locator());
  locator.registerLazySingleton(
    () => addPasswordUseCase,
  );
  final changePasswordUseCase = ChangePassword(locator());
  locator.registerLazySingleton(
    () => changePasswordUseCase,
  );

  //* Filter by [User] folder
  //*
  final getUserProfileUseCase = GetUserProfile(locator());
  locator.registerLazySingleton(
    () => getUserProfileUseCase,
  );
  final updateUserProfileUseCase = UpdateUserProfile(locator());
  locator.registerLazySingleton(
    () => updateUserProfileUseCase,
  );

  //* Filter by [User Article] folder
  //*
  final changeToModeratedUseCase = ChangeToModerated(locator());
  locator.registerLazySingleton(
    () => changeToModeratedUseCase,
  );

  final getBannedArticleUseCase = GetBannedArticle(locator());
  locator.registerLazySingleton(
    () => getBannedArticleUseCase,
  );

  final getDraftedArticleUseCase = GetDraftedArticle(locator());
  locator.registerLazySingleton(
    () => getDraftedArticleUseCase,
  );

  final getModeratedArticleUseCase = GetModeratedArticle(locator());
  locator.registerLazySingleton(
    () => getModeratedArticleUseCase,
  );

  final getPublishedArticleUseCase = GetPublishedArticle(locator());
  locator.registerLazySingleton(
    () => getPublishedArticleUseCase,
  );

  final getRejectedArticleUseCase = GetRejectedArticle(locator());
  locator.registerLazySingleton(
    () => getRejectedArticleUseCase,
  );

  final readHistoryUseCase = ReadHistory(locator());
  locator.registerLazySingleton(
    () => readHistoryUseCase,
  );

  //! Part of [UI Kit] usecases

  final getBoardingUseCase = GetBoardingList(locator());
  locator.registerLazySingleton(
    () => getBoardingUseCase,
  );

  final getCategoriesUseCase = GetCategories(locator());
  locator.registerLazySingleton(
    () => getCategoriesUseCase,
  );

  final getNoticeList = GetNoticeList(locator());
  locator.registerLazySingleton(
    () => getNoticeList,
  );

  /// List of [BLoCs]
  ///
  ///

  //* Article BLoC folder
  //*
  final articleCommentWatcherBloc = ArticleCommentWatcherBloc(locator());
  locator.registerLazySingleton(
    () => articleCommentWatcherBloc,
  );

  final articleDetailWatcherBloc = ArticleDetailWatcherBloc(locator());
  locator.registerLazySingleton(
    () => articleDetailWatcherBloc,
  );

  final articleFormBloc = ArticleFormBloc(
    create: locator(),
    update: locator(),
  );
  locator.registerLazySingleton(
    () => articleFormBloc,
  );

  final deleteArticleActorBloc = DeleteArticleActorBloc(locator());
  locator.registerLazySingleton(
    () => deleteArticleActorBloc,
  );

  final deleteCommentActorBloc = DeleteCommentActorBloc(locator());
  locator.registerLazySingleton(
    () => deleteCommentActorBloc,
  );

  final articleWatcherBloc = ArticleWatcherBloc(locator());
  locator.registerLazySingleton(
    () => articleWatcherBloc,
  );

  final sendCommentFormBloc = SendCommentActorBloc(locator());
  locator.registerLazySingleton(
    () => sendCommentFormBloc,
  );

  //* Auth BLoC folder
  //*
  final authWatcherBloc = AuthWatcherBloc(
    checkGoogleAuth: locator(),
    checkUserVerif: locator(),
    signOut: locator(),
  );
  locator.registerLazySingleton(
    () => authWatcherBloc,
  );

  final signInWithEmailFormBloc = SignInWithEmailFormBloc(locator());
  locator.registerLazySingleton(
    () => signInWithEmailFormBloc,
  );

  final signInWithGoogleActorBloc = SignInWithGoogleActorBloc(locator());
  locator.registerLazySingleton(
    () => signInWithGoogleActorBloc,
  );

  final signUpWithEmailFormBloc = SignUpWithEmailFormBloc(locator());
  locator.registerLazySingleton(
    () => signUpWithEmailFormBloc,
  );

  final verificationStatusWatcherBloc = VerificationStatusWatcherBloc(
    locator(),
  );
  locator.registerLazySingleton(
    () => verificationStatusWatcherBloc,
  );

  //* OnBoarding BLoC folder
  //*
  final boardingWatcherBloc = BoardingWatcherBloc(locator());
  locator.registerLazySingleton(
    () => boardingWatcherBloc,
  );

  //* Category BLoC folder
  //*
  final categoryWatcherBloc = CategoryWatcherBloc(locator());
  locator.registerLazySingleton(
    () => categoryWatcherBloc,
  );

  //* Backup Email BLoC folder
  //*
  final backupEmailFormBloc = BackupEmailFormBloc();
  locator.registerLazySingleton(
    () => backupEmailFormBloc,
  );

  final verificationEmailFormBloc = VerificationEmailFormBloc(locator());
  locator.registerLazySingleton(
    () => verificationEmailFormBloc,
  );

  //* Forgot Password BLoC folder
  //*
  final forgotPasswordBloc = ForgotPasswordFormBloc();
  locator.registerLazySingleton(
    () => forgotPasswordBloc,
  );

  //* Interest BLoC folder
  //*
  final interestFormBloc = InterestFormBloc(locator());
  locator.registerLazySingleton(
    () => interestFormBloc,
  );

  //* Login/Sign in BLoC folder
  //*
  final articleLikeWatcherBloc = LikeArticleWatcherBloc(
    checkLikeStatus: locator(),
    likeArticle: locator(),
  );
  locator.registerLazySingleton(
    () => articleLikeWatcherBloc,
  );

  //* Notice / Notification BLoC folder
  //*
  final noticeWatcherBloc = NoticeWatcherBloc(locator());
  locator.registerLazySingleton(
    () => noticeWatcherBloc,
  );

  //* Password4 BLoC folder
  //*
  final passwordFormBloc = PasswordFormBloc(locator());
  locator.registerLazySingleton(
    () => passwordFormBloc,
  );

  //* Phone Number BLoC folder
  //*
  final phoneNumberFormBloc = PhoneNumberFormBloc();
  locator.registerLazySingleton(
    () => phoneNumberFormBloc,
  );

  //* Search Province BLoC folder
  //*
  final searchProvinceFormBloc = SearchProvinceFormBloc();
  locator.registerLazySingleton(
    () => searchProvinceFormBloc,
  );

  //* Search Province BLoC folder
  //*
  final timeZoneWatcherBloc = TimeZoneWatcherBloc(locator());
  locator.registerLazySingleton(
    () => timeZoneWatcherBloc,
  );

  //* User BLoC folder
  //*
  final userFormBloc = UserFormBloc(locator());
  locator.registerLazySingleton(
    () => userFormBloc,
  );

  final userWatcherBloc = UserWatcherBloc(locator());
  locator.registerLazySingleton(
    () => userWatcherBloc,
  );

  //* User Article BLoC folder
  //*
  final changeToModeratedActorBloc = ChangeToModeratedActorBloc(locator());
  locator.registerLazySingleton(
    () => changeToModeratedActorBloc,
  );
  final readHistoryWatcherBloc = ReadHistoryWatcherBloc(locator());
  locator.registerLazySingleton(
    () => readHistoryWatcherBloc,
  );
  final userArticleBannedWatcherBloc = UserArticleBannedWatcherBloc(
    locator(),
  );
  locator.registerLazySingleton(
    () => userArticleBannedWatcherBloc,
  );

  final userArticleDraftedWatcherBloc = UserArticleDraftedWatcherBloc(
    locator(),
  );
  locator.registerLazySingleton(
    () => userArticleDraftedWatcherBloc,
  );

  final userArticleModeratedWatcherBloc = UserArticleModeratedWatcherBloc(
    locator(),
  );
  locator.registerLazySingleton(
    () => userArticleModeratedWatcherBloc,
  );

  final userArticlePublishedWatcherBloc = UserArticlePublishedWatcherBloc(
    locator(),
  );
  locator.registerLazySingleton(
    () => userArticlePublishedWatcherBloc,
  );

  final userArticleRejectedWatcherBloc = UserArticleRejectedWatcherBloc(
    locator(),
  );
  locator.registerLazySingleton(
    () => userArticleRejectedWatcherBloc,
  );
}
