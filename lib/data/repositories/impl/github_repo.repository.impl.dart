import 'package:dockerploy/core/storage/storage.dart.dart';
import 'package:dockerploy/data/datasource/api/github.datasource.dart';
import 'package:dockerploy/data/model/github_repo.dart';
import 'package:dockerploy/data/model/github_user.dart';
import 'package:dockerploy/data/repositories/github_repo.repository.dart';

class GithubRepoRepositoryImpl implements GithubRepoRepository {
  final Storage storage;
  final GithubDataSource dataSource = GithubDataSource(null);

  GithubRepoRepositoryImpl({required this.storage});

  @override
  Future<List<GithubRepo>> getRepositories() async {
    final githubUser = GithubUser(login: storage.getEnv().user);

    final repositories =
        await dataSource.getRepositories<List<GithubRepo>>(githubUser);

    return repositories;
  }
}
