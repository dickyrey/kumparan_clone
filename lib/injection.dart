import 'package:get_it/get_it.dart';
import 'package:kumparan_clone/src/data/datasources/article_remote_data_source.dart';
import 'package:kumparan_clone/src/data/datasources/boarding_remote_data_source.dart';
import 'package:kumparan_clone/src/data/datasources/category_remote_data_source.dart';
import 'package:kumparan_clone/src/data/repositories/article_repository_impl.dart';
import 'package:kumparan_clone/src/data/repositories/boarding_repository_impl.dart';
import 'package:kumparan_clone/src/data/repositories/category_repository_impl.dart';
import 'package:kumparan_clone/src/domain/repositories/article_repository.dart';
import 'package:kumparan_clone/src/domain/repositories/boarding_repository.dart';
import 'package:kumparan_clone/src/domain/repositories/category_repository.dart';
import 'package:kumparan_clone/src/domain/usecases/get_article_list.dart';
import 'package:kumparan_clone/src/domain/usecases/get_boarding_list.dart';
import 'package:kumparan_clone/src/domain/usecases/get_categories.dart';
import 'package:kumparan_clone/src/presentation/bloc/article/new_article/new_article_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/boarding/boarding_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/category/category_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/email_verification/verification_email_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/forgot_password/forgot_password_form_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/interest/interest_form_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/login/login_form_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/register/register_form_bloc.dart';

final locator = GetIt.instance;

void init() {
  // Datasources
  final articleRemoteDataSource = ArticleRemoteDataSourceImpl();
  locator.registerLazySingleton<ArticleRemoteDataSource>(
    () => articleRemoteDataSource,
  );

  final boardingRemoteDataSource = BoardingRemoteDataSourceImpl();
  locator.registerLazySingleton<BoardingRemoteDataSource>(
    () => boardingRemoteDataSource,
  );

  final categoryRemoteDataSource = CategoryRemoteDataSourceImpl();
  locator.registerLazySingleton<CategoryRemoteDataSource>(
    () => categoryRemoteDataSource,
  );

  // Repositories
  final articleRepository = ArticleRepositoryImpl(dataSource: locator());
  locator.registerLazySingleton<ArticleRepository>(
    () => articleRepository,
  );

  final boardingRepository = BoardingRepositoryImpl(dataSource: locator());
  locator.registerLazySingleton<BoardingRepository>(
    () => boardingRepository,
  );

  final categoryRepository = CategoryRepositoryImpl(dataSource: locator());
  locator.registerLazySingleton<CategoryRepository>(
    () => categoryRepository,
  );

  // Usecases
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

  // BLoCs
  final newArticleWatcherBloc = NewArticleWatcherBloc(locator());
  locator.registerLazySingleton(
    () => newArticleWatcherBloc,
  );

  final boardingWatcherBloc = BoardingWatcherBloc(locator());
  locator.registerLazySingleton(
    () => boardingWatcherBloc,
  );

  final categoryWatcherBloc = CategoryWatcherBloc(locator());
  locator.registerLazySingleton(
    () => categoryWatcherBloc,
  );

  final emailVerificationBloc = EmailVerificationBloc();
  locator.registerLazySingleton(
    () => emailVerificationBloc,
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

  final registerFormBloc = RegisterFormBloc();
  locator.registerLazySingleton(
    () => registerFormBloc,
  );
}
