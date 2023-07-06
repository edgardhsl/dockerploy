import 'package:dockerploy/core/platform/docker/builder/docker_compose_manager.dart';
import 'package:dockerploy/core/platform/docker/builder/features/temp_directory_creator.dart';
import 'package:dockerploy/data/model/environment.dart';

DockerComposeManager dockerComposeInitializer(Environment env) {
  env.dir = "${tempDirectoryCreator()}\\dockerploy\\";
  return DockerComposeManager(dir: env.dir!);
}
