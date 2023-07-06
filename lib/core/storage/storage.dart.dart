import 'package:dockerploy/data/model/git_environment.dart';

abstract class Storage {
  void setEnv(GitEnvironment env);
  GitEnvironment getEnv();
}
