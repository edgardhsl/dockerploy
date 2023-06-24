import 'package:dockerploy/data/model/environment.dart';
import 'package:dockerploy/data/model/git_environment.dart';

abstract class Storage {
  void setEnv(GitEnvironment env);
  GitEnvironment getEnv();
  void setEnvContainer(String name, Environment env);
  Environment getEnvContainer(String name);
}
