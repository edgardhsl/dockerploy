import 'dart:io';

import 'package:dockerploy/core/serializator/yaml/json2yaml.dart';
import 'package:dockerploy/data/model/docker_compose.dart';

class DockerComposeCreator {
  static save(DockerCompose compose, String dir) {
    if (!Directory(dir).existsSync()) {
      Directory(dir).createSync(recursive: true);
    }

    if (!Directory("$dir\\app").existsSync()) {
      Directory("$dir\\app").createSync();
    }

    if (!File("$dir\\docker-compose.yml").existsSync()) {
      File("$dir\\docker-compose.yml").createSync();
    }

    File("$dir\\docker-compose.yml")
        .writeAsStringSync(json2yaml(compose.toJson()));
  }
}
