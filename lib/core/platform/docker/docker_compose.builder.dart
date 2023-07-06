import 'package:dockerploy/core/platform/docker/builder/docker_compose_manager.dart';
import 'package:dockerploy/core/platform/docker/builder/features/context_name_generator.dart';
import 'package:dockerploy/core/platform/docker/builder/features/docker_manager_initializer.dart';
import 'package:dockerploy/core/storage/storage.dart.dart';
import 'package:dockerploy/data/model/docker_compose.dart';
import 'package:dockerploy/data/model/environment.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DockerComposeBuilder {
  final String context;
  final DockerComposeManager dockerComposeManager;
  final Environment environment;
  final Storage storage = Modular.get<Storage>();
  final DockerCompose compose;

  DockerComposeBuilder({required this.environment})
      : context = contextNameGenerator(),
        dockerComposeManager = dockerComposeInitializer(environment),
        compose = DockerCompose() {
    init();
  }

  init() async {
    compose.services = await _mountService();
  }

  build() {
    dockerComposeManager.create(compose, id: environment.id ?? 0);
  }

  Future<Service> _mountService() async {
    ServiceProps frontend = await _mountServicePropsFront();
    ServiceProps backend = await _mountServicePropsBack();

    return Service(frontend: frontend, backend: backend);
  }

  Future<ServiceProps> _mountServicePropsFront() async {
    environment.frontend.context = environment.frontend.context ?? context;

    Map<String, dynamic> env = environment.frontend.toJson();

    dynamic dockerEnv = env.entries.map(_mapEnv).toList();

    return ServiceProps(
        build: Build(context: "./frontend/\${frontend_repo}", args: dockerEnv),
        ports: [],
        volumes: [
          {"/app": "/usr/src/app"}
        ]);
  }

  Future<ServiceProps> _mountServicePropsBack() async {
    environment.backend.context = environment.backend.context ?? context;

    Map<String, dynamic> env = environment.backend.toJson();

    dynamic dockerEnv = env.entries.map(_mapEnv).toList();

    return ServiceProps(
        build: Build(context: "./backend/\${backend_repo}", args: dockerEnv),
        ports: [],
        volumes: [
          {"/app": "/usr/src/app"}
        ]);
  }

  Map<String, String> _mapEnv(entry) => ({"${entry.key}": "${entry.value}"});
}
