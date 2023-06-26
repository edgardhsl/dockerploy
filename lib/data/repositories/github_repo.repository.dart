import 'package:dockerploy/data/model/github_repo.dart';

abstract class GithubRepoRepository<T> {
  Future<List<GithubRepo>> getRepositories();
}
