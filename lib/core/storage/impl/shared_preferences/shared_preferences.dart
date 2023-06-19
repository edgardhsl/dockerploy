import 'package:dockerploy/core/storage/Environment.dart';
import 'package:dockerploy/core/storage/exceptions/environment_not_found.exception.dart';
import 'package:dockerploy/core/storage/exceptions/storage_not_initialized.exception.dart';
import 'package:dockerploy/core/storage/git_environment.dart';
import 'package:dockerploy/core/storage/storage.dart.dart';
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
  Future<GitEnvironment> getEnv() async {
    if (prefs == null) throw StorageNotInitializedException();
    if (prefs!.getString("env") == null) throw EnvironmentNotFoundException();

    return GitEnvironment.fromJson(prefs!.getString("env")!);
  }

  @override
  Future<Environment> getEnvContainer(String name) async {
    if (prefs == null) throw StorageNotInitializedException();
    if (prefs!.getString("name") == null) throw EnvironmentNotFoundException();

    return Environment.fromJson(prefs!.getString(name)!);
  }

  @override
  void setEnv(GitEnvironment env) async {
    prefs!.setString("env", env.toJson());
  }

  @override
  void setEnvContainer(String name, Environment env) async {
    prefs!.setString(name, env.toJson());
  }
}
