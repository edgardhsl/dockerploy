import 'package:http/http.dart' as http;

class GithubDataSource {
  final baseUrl = 'api.github.com';

  GithubDataSource(httpClient);

  Future<dynamic> getRepositories() async {
    /* var url = Uri.https(baseUrl, '/repositories');
    var response = await http.get(url);

    var repositories = (json.decode(response.body))
        .map((item) => Repository.fromJson(item))
        .toList();

    // print(repositories);

    return repositories; */
  }
}
