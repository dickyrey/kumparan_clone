import 'package:http/http.dart' as http;
import 'package:kumparan_clone/src/data/datasources/article_data_source.dart';
import 'package:kumparan_clone/src/data/datasources/auth_data_source.dart';
import 'package:kumparan_clone/src/data/datasources/profile_data_source.dart';
import 'package:kumparan_clone/src/domain/repositories/article_repository.dart';
import 'package:kumparan_clone/src/domain/repositories/auth_repository.dart';
import 'package:kumparan_clone/src/domain/repositories/profile_repository.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks(
  [
    //* Data Sources
    ArticleDataSource,
    AuthDataSource,
    ProfileDataSource,
    //* Repositories
    ArticleRepository,
    AuthRepository,
    ProfileRepository,
  ],
  customMocks: [MockSpec<http.Client>(as: #MockHttpClient)],
)
void main() {}
