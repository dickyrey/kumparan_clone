import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:kumparan_clone/src/data/datasources/article_data_source.dart';
import 'package:kumparan_clone/src/data/datasources/auth_data_source.dart';
import 'package:kumparan_clone/src/data/datasources/boarding_remote_data_source.dart';
import 'package:kumparan_clone/src/data/datasources/category_remote_data_source.dart';
import 'package:kumparan_clone/src/data/datasources/notice_remote_data_source.dart';
import 'package:kumparan_clone/src/data/datasources/profile_data_source.dart';
import 'package:kumparan_clone/src/data/repositories/article_repository_impl.dart';
import 'package:kumparan_clone/src/data/repositories/auth_repository_impl.dart';
import 'package:kumparan_clone/src/data/repositories/boarding_repository_impl.dart';
import 'package:kumparan_clone/src/data/repositories/category_repository_impl.dart';
import 'package:kumparan_clone/src/data/repositories/notice_repository_impl.dart';
import 'package:kumparan_clone/src/data/repositories/profile_repository_impl.dart';
import 'package:kumparan_clone/src/domain/repositories/article_repository.dart';
import 'package:kumparan_clone/src/domain/repositories/auth_repository.dart';
import 'package:kumparan_clone/src/domain/repositories/boarding_repository.dart';
import 'package:kumparan_clone/src/domain/repositories/category_repository.dart';
import 'package:kumparan_clone/src/domain/repositories/notice_repository.dart';
import 'package:kumparan_clone/src/domain/repositories/profile_repository.dart';
import 'package:kumparan_clone/src/domain/usecases/article/get_article_detail.dart';
import 'package:kumparan_clone/src/domain/usecases/article/get_article_list.dart';
import 'package:kumparan_clone/src/domain/usecases/auth/check_google_auth.dart';
import 'package:kumparan_clone/src/domain/usecases/auth/sign_in_with_google.dart';
import 'package:kumparan_clone/src/domain/usecases/auth/sign_out_with_google.dart';
import 'package:kumparan_clone/src/domain/usecases/get_boarding_list.dart';
import 'package:kumparan_clone/src/domain/usecases/get_categories.dart';
import 'package:kumparan_clone/src/domain/usecases/get_notice_list.dart';
import 'package:kumparan_clone/src/domain/usecases/profile/get_profile.dart';
import 'package:kumparan_clone/src/presentation/bloc/article/article_detail_watcher/article_detail_watcher_bloc.dart';
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
  final articleDataSource = ArticleDataSourceImpl();
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

  final noticeRemoteDataSource = NoticeRemoteDataSourceImpl();
  locator.registerLazySingleton<NoticeRemoteDataSource>(
    () => noticeRemoteDataSource,
  );

  final profileDataSource = ProfileDataSourceImpl(locator());
  locator.registerLazySingleton<ProfileDataSource>(
    () => profileDataSource,
  );

  /// List of [Repositories]
  ///
  ///
  final articleRepository = ArticleRepositoryImpl(dataSource: locator());
  locator.registerLazySingleton<ArticleRepository>(
    () => articleRepository,
  );

  final authRepository = AuthRepositoryImpl(dataSource: locator());
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

  final noticeRepository = NoticeRepositoryImpl(dataSource: locator());
  locator.registerLazySingleton<NoticeRepository>(
    () => noticeRepository,
  );

  final profileRepository = ProfileRepositoryImpl(locator());
  locator.registerLazySingleton<ProfileRepository>(
    () => profileRepository,
  );

  /// List of [Usecases]
  ///
  ///

  //* Filter by [Article] folder
  //*
  final getArticleDetailUseCase = GetArticleDetail(locator());
  locator.registerLazySingleton(
    () => getArticleDetailUseCase,
  );

  final getArticleListUseCase = GetArticleList(locator());
  locator.registerLazySingleton(
    () => getArticleListUseCase,
  );

  //* Filter by [Auth] folder
  //*
  final checkGoogleAuthUseCase = CheckGoogleAuth(locator());
  locator.registerLazySingleton(
    () => checkGoogleAuthUseCase,
  );

  final signInWithGoogle = SignInWithGoogle(locator());
  locator.registerLazySingleton(
    () => signInWithGoogle,
  );

  final signOutWithGoogle = SignOut(locator());
  locator.registerLazySingleton(
    () => signOutWithGoogle,
  );

  //* Filter by [Profile] folder
  //*
  final getProfileUseCase = GetProfile(locator());
  locator.registerLazySingleton(
    () => getProfileUseCase,
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
  final articleDetailWatcherBloc = ArticleDetailWatcherBloc(locator());
  locator.registerLazySingleton(
    () => articleDetailWatcherBloc,
  );

  final newArticleWatcherBloc = NewArticleWatcherBloc(locator());
  locator.registerLazySingleton(
    () => newArticleWatcherBloc,
  );

  //* Auth BLoC folder
  //*
  final authWatcherBloc = AuthWatcherBloc(locator(), locator());
  locator.registerLazySingleton(
    () => authWatcherBloc,
  );

  final signInWithGoogleActorBloc = SignInWithGoogleActorBloc(locator());
  locator.registerLazySingleton(
    () => signInWithGoogleActorBloc,
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

  final verificationEmailFormBloc = VerificationEmailFormBloc();
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
  final loginFormBloc = LoginFormBloc();
  locator.registerLazySingleton(
    () => loginFormBloc,
  );

  //* Notice / Notification BLoC folder
  //*
  final noticeWatcherBloc = NoticeWatcherBloc(locator());
  locator.registerLazySingleton(
    () => noticeWatcherBloc,
  );

  //* Password4 BLoC folder
  //*
  final passwordFormBloc = PasswordFormBloc();
  locator.registerLazySingleton(
    () => passwordFormBloc,
  );

  //* Phone Number BLoC folder
  //*
  final phoneNumberFormBloc = PhoneNumberFormBloc();
  locator.registerLazySingleton(
    () => phoneNumberFormBloc,
  );

  //* Register / Sign Up BLoC folder
  //*
  final registerFormBloc = RegisterFormBloc();
  locator.registerLazySingleton(
    () => registerFormBloc,
  );

  //* Search Province BLoC folder
  //*
  final searchProvinceFormBloc = SearchProvinceFormBloc();
  locator.registerLazySingleton(
    () => searchProvinceFormBloc,
  );

  //* User BLoC folder
  //*
  final userFormBloc = UserFormBloc();
  locator.registerLazySingleton(
    () => userFormBloc,
  );

  final userWatcherBloc = UserWatcherBloc(locator());
  locator.registerLazySingleton(
    () => userWatcherBloc,
  );
}
