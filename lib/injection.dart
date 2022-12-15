import 'package:get_it/get_it.dart';
import 'package:kumparan_clone/src/data/datasources/boarding_remote_data_source.dart';
import 'package:kumparan_clone/src/data/datasources/category_remote_data_source.dart';
import 'package:kumparan_clone/src/data/repositories/boarding_repository_impl.dart';
import 'package:kumparan_clone/src/data/repositories/category_repository_impl.dart';
import 'package:kumparan_clone/src/domain/repositories/boarding_repository.dart';
import 'package:kumparan_clone/src/domain/repositories/category_repository.dart';
import 'package:kumparan_clone/src/domain/usecases/get_boarding_list.dart';
import 'package:kumparan_clone/src/domain/usecases/get_categories.dart';
import 'package:kumparan_clone/src/presentation/bloc/boarding/boarding_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/category/category_watcher_bloc.dart';
import 'package:kumparan_clone/src/presentation/bloc/interest/interest_form_bloc.dart';

final locator = GetIt.instance;

void init() {
  // Datasources
  final boardingRemoteDataSource = BoardingRemoteDataSourceImpl();
  locator.registerLazySingleton<BoardingRemoteDataSource>(
    () => boardingRemoteDataSource,
  );

  final categoryRemoteDataSource = CategoryRemoteDataSourceImpl();
  locator.registerLazySingleton<CategoryRemoteDataSource>(
    () => categoryRemoteDataSource,
  );

  // Repositories
  final boardingRepository = BoardingRepositoryImpl(dataSource: locator());
  locator.registerLazySingleton<BoardingRepository>(
    () => boardingRepository,
  );

  final categoryRepository = CategoryRepositoryImpl(dataSource: locator());
  locator.registerLazySingleton<CategoryRepository>(
    () => categoryRepository,
  );

  // Usecases
  final getBoardingUseCase = GetBoardingList(locator());
  locator.registerLazySingleton(
    () => getBoardingUseCase,
  );

  final getCategoriesUseCase = GetCategories(locator());
  locator.registerLazySingleton(
    () => getCategoriesUseCase,
  );

  // BLoCs
  final boardingWatcherBloc = BoardingWatcherBloc(locator());
  locator.registerLazySingleton(
    () => boardingWatcherBloc,
  );

  final categoryWatcherBloc = CategoryWatcherBloc(locator());
  locator.registerLazySingleton(
    () => categoryWatcherBloc,
  );

  final interestFormBloc = InterestFormBloc(locator());
  locator.registerLazySingleton(
    () => interestFormBloc,
  );
}
