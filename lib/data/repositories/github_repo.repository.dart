import 'package:dockerploy/data/model/github_repo.dart';

abstract class GithubRepoRepository {
  Future<List<GithubRepo>> getRepositories();
}
