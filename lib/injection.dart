import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:kumparan_clone/src/data/datasources/article_remote_data_source.dart';
import 'package:kumparan_clone/src/data/datasources/auth_remote_data_source.dart';
import 'package:kumparan_clone/src/data/datasources/boarding_remote_data_source.dart';
import 'package:kumparan_clone/src/data/datasources/category_remote_data_source.dart';
import 'package:kumparan_clone/src/data/datasources/notice_remote_data_source.dart';
import 'package:kumparan_clone/src/data/repositories/article_repository_impl.dart';
import 'package:kumparan_clone/src/data/repositories/auth_repository_impl.dart';
import 'package:kumparan_clone/src/data/repositories/boarding_repository_impl.dart';
import 'package:kumparan_clone/src/data/repositories/category_repository_impl.dart';
import 'package:kumparan_clone/src/data/repositories/notice_repository_impl.dart';
import 'package:kumparan_clone/src/domain/repositories/article_repository.dart';
import 'package:kumparan_clone/src/domain/repositories/auth_repository.dart';
import 'package:kumparan_clone/src/domain/repositories/boarding_repository.dart';
import 'package:kumparan_clone/src/domain/repositories/category_repository.dart';
import 'package:kumparan_clone/src/domain/repositories/notice_repository.dart';
import 'package:kumparan_clone/src/domain/usecases/check_google_auth.dart';
import 'package:kumparan_clone/src/domain/usecases/get_article_list.dart';
import 'package:kumparan_clone/src/domain/usecases/get_boarding_list.dart';
import 'package:kumparan_clone/src/domain/usecases/get_categories.dart';
import 'package:kumparan_clone/src/domain/usecases/get_notice_list.dart';
import 'package:kumparan_clone/src/domain/usecases/sign_in_with_google.dart';
import 'package:kumparan_clone/src/domain/usecases/sign_out_with_google.dart';
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
import 'package:kumparan_clone/src/presentation/bloc/user/user_form_bloc.dart';

final locator = GetIt.instance;

void init() {
  //External
  final httpPackage = http.Client();
  locator.registerLazySingleton(
    () => httpPackage,
  );

  final googleSignIn = GoogleSignIn();
  locator.registerLazySingleton(
    () => googleSignIn,
  );

  // Datasources
  final articleRemoteDataSource = ArticleRemoteDataSourceImpl();
  locator.registerLazySingleton<ArticleRemoteDataSource>(
    () => articleRemoteDataSource,
  );

  final authRemoteDataSource = AuthRemoteDataSourceImpl(
    client: locator(),
    googleSignIn: locator(),
  );
  locator.registerLazySingleton<AuthRemoteDataSource>(
    () => authRemoteDataSource,
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

  // Repositories
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

  // Usecases
  final checkGoogleAuthUseCase = CheckGoogleAuth(locator());
  locator.registerLazySingleton(
    () => checkGoogleAuthUseCase,
  );

  final getArticleListUseCase = GetArticleList(locator());
  locator.registerLazySingleton(
    () => getArticleListUseCase,
  );

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

  final signInWithGoogle = SignInWithGoogle(locator());
  locator.registerLazySingleton(
    () => signInWithGoogle,
  );

  final signOutWithGoogle = SignOutWithGoogle(locator());
  locator.registerLazySingleton(
    () => signOutWithGoogle,
  );

  // BLoCs
  final newArticleWatcherBloc = NewArticleWatcherBloc(locator());
  locator.registerLazySingleton(
    () => newArticleWatcherBloc,
  );

  final authWatcherBloc = AuthWatcherBloc(locator(), locator());
  locator.registerLazySingleton(
    () => authWatcherBloc,
  );

  final signInWithGoogleActorBloc = SignInWithGoogleActorBloc(locator());
  locator.registerLazySingleton(
    () => signInWithGoogleActorBloc,
  );

  final boardingWatcherBloc = BoardingWatcherBloc(locator());
  locator.registerLazySingleton(
    () => boardingWatcherBloc,
  );

  final categoryWatcherBloc = CategoryWatcherBloc(locator());
  locator.registerLazySingleton(
    () => categoryWatcherBloc,
  );

  final backupEmailFormBloc = BackupEmailFormBloc();
  locator.registerLazySingleton(
    () => backupEmailFormBloc,
  );

  final verificationEmailFormBloc = VerificationEmailFormBloc();
  locator.registerLazySingleton(
    () => verificationEmailFormBloc,
  );

  final forgotPasswordBloc = ForgotPasswordFormBloc();
  locator.registerLazySingleton(
    () => forgotPasswordBloc,
  );

  final interestFormBloc = InterestFormBloc(locator());
  locator.registerLazySingleton(
    () => interestFormBloc,
  );

  final loginFormBloc = LoginFormBloc();
  locator.registerLazySingleton(
    () => loginFormBloc,
  );

  final noticeWatcherBloc = NoticeWatcherBloc(locator());
  locator.registerLazySingleton(
    () => noticeWatcherBloc,
  );

  final passwordFormBloc = PasswordFormBloc();
  locator.registerLazySingleton(
    () => passwordFormBloc,
  );

  final phoneNumberFormBloc = PhoneNumberFormBloc();
  locator.registerLazySingleton(
    () => phoneNumberFormBloc,
  );

  final registerFormBloc = RegisterFormBloc();
  locator.registerLazySingleton(
    () => registerFormBloc,
  );

  final searchProvinceFormBloc = SearchProvinceFormBloc();
  locator.registerLazySingleton(
    () => searchProvinceFormBloc,
  );

  final userFormBloc = UserFormBloc();
  locator.registerLazySingleton(
    () => userFormBloc,
  );
}
