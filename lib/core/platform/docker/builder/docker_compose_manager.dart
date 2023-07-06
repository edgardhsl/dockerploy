import 'dart:io';

import 'package:dockerploy/core/platform/docker/builder/features/docker_compose_creator.dart';
import 'package:dockerploy/data/model/docker_compose.dart';
import 'package:yaml/yaml.dart';

class DockerComposeManager {
  final String dir;
  final String file = "docker-compose.yml";

  DockerComposeManager({required this.dir});

  bool exists() => File("$dir/$file").existsSync();

  Map get() => loadYaml(File("$dir/$file").readAsStringSync());

  create(DockerCompose compose, {required int id}) {
    DockerComposeCreator.save(compose, "$dir/${id <= 0 ? "" : id}");
  }

  start() {}

  stop() {}

  logs() {}
}
