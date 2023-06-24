import 'dart:convert';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:http/http.dart' as http;

import 'package:dockerploy/core/storage/storage.dart.dart';
import 'package:dockerploy/data/model/github_repo.dart';
import 'package:dockerploy/data/model/github_user.dart';

class GithubDataSource {
  final baseUrl = 'api.github.com';
  final Storage env = Modular.get<Storage>();

  GithubDataSource(httpClient);

  Future<List<GithubRepo>> getRepositories<T>(GithubUser user) async {
    final url = Uri.https(baseUrl, "/orgs/${user.login}/repos");

    final response = await http
        .get(url, headers: {"Authorization": "Bearer ${env.getEnv().token}"});

    final jsonResponse = json.decode(response.body);

    return List<GithubRepo>.from(
        jsonResponse.map((model) => GithubRepo.fromJson(model)));
  }
}
