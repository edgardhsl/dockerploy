import 'dart:convert';

import 'package:dockerploy/core/storage/storage.dart.dart';
import 'package:dockerploy/data/model/github_user.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:http/http.dart' as http;

class GithubDataSource {
  final baseUrl = 'api.github.com';
  final Storage env = Modular.get<Storage>();

  GithubDataSource(httpClient);

  Future<T> getRepositories<T>(GithubUser user) async {
    var url = Uri.https(baseUrl, "${user.login}/repositories");
    var response =
        await http.get(url, headers: {"Authorization": env.getEnv().token});

    var repositories = (json.decode(response.body)).toList();

    return repositories;
  }
}
