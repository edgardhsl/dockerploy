import 'package:dockerploy/core/storage/Environment.dart';
import 'package:dockerploy/core/storage/git_environment.dart';

abstract class Storage {
  void setEnv(GitEnvironment env);
  Future<GitEnvironment> getEnv();
  void setEnvContainer(String name, Environment env);
  Future<Environment> getEnvContainer(String name);
}
