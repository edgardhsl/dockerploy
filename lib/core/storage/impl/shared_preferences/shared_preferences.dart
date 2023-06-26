import 'dart:convert';

import 'package:dockerploy/data/model/env_repos.dart';
import 'package:dockerploy/data/model/environment.dart';
import 'package:dockerploy/core/storage/exceptions/environment_not_found.exception.dart';
import 'package:dockerploy/core/storage/exceptions/storage_not_initialized.exception.dart';
import 'package:dockerploy/core/storage/storage.dart.dart';
import 'package:dockerploy/data/model/git_environment.dart';
import 'package:shared_preferences/shared_preferences.dart' as sp;

class SharedPreferences implements Storage {
  sp.SharedPreferences? prefs;

  SharedPreferences() {
    _initialize();
  }

  _initialize() async {
    prefs = await sp.SharedPreferences.getInstance();
  }

  @override
  GitEnvironment getEnv() {
    if (prefs == null) throw StorageNotInitializedException();
    if (prefs!.getString("env") == null) throw EnvironmentNotFoundException();

    return GitEnvironment.fromJson(prefs!.getString("env")!);
  }

  @override
  Environment getEnvContainer(String name) {
    if (prefs == null) throw StorageNotInitializedException();
    if (prefs!.getString("name") == null) throw EnvironmentNotFoundException();

    return Environment(name: "aaa", repositories: EnvRepos());
  }

  @override
  void setEnv(GitEnvironment env) async {
    prefs!.setString("env", env.toJson());
  }

  @override
  void setEnvContainer(String name, Environment env) async {
    prefs!.setString(name, json.encode(env.toJson()));
  }
}
