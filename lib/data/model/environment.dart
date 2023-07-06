import 'package:dockerploy/core/util/reflector/reflector.dart';
import 'package:dockerploy/data/model/docker_compose.dart';
import 'package:dockerploy/data/model/env_repos.dart';
import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'environment.g.dart';

@JsonSerializable(explicitToJson: true)
@Reflector()
@collection
class Environment {
  final String name;
  final EnvRepos repositories;

  Id? id;

  final Frontend frontend;
  final Backend backend;

  @ignore
  final DockerCompose? dockerCompose;

  String? dir;

  Environment(
      {required this.name,
      required this.repositories,
      required this.frontend,
      required this.backend,
      this.dir,
      this.dockerCompose});

  Environment copyWith({
    String? name,
    Frontend? frontend,
    Backend? backend,
    String? dir,
    EnvRepos? repositories,
    DockerCompose? dockerCompose,
  }) {
    return Environment(
      name: name ?? this.name,
      dir: dir ?? this.dir,
      repositories: repositories ?? this.repositories,
      frontend: frontend ?? this.frontend,
      backend: backend ?? this.backend,
      dockerCompose: dockerCompose ?? this.dockerCompose,
    );
  }

  String getFrontEndUrl() =>
      "${frontend.protocol}://${frontend.host}:${frontend.port}";

  String getBackEndUrl() =>
      "${backend.protocol}://${backend.host}:${backend.port}/${backend.context}";

  factory Environment.fromJson(Map<String, dynamic> json) =>
      _$EnvironmentFromJson(json);

  Map<String, dynamic> toJson() => _$EnvironmentToJson(this);
}

@JsonSerializable(explicitToJson: true)
@Reflector()
@embedded
class Frontend {
  final String? protocol;
  final String? apiroot;
  final String? host;
  final String? encryptType;
  final String? saltMD5;
  final int? port;
  String? context;

  Frontend(
      {this.protocol,
      this.apiroot,
      this.host,
      this.encryptType,
      this.saltMD5,
      this.port});

  factory Frontend.fromJson(Map<String, dynamic> json) =>
      _$FrontendFromJson(json);

  Map<String, dynamic> toJson() => _$FrontendToJson(this);
}

@JsonSerializable(explicitToJson: true)
@Reflector()
@embedded
class Backend {
  final String? protocol;
  final String? host;
  final String? database;
  final String? dbuser;
  final String? dbpass;
  final String? lgBaseAntiga;
  final int? port;
  String? context;

  Backend(
      {this.protocol,
      this.host,
      this.database,
      this.dbuser,
      this.dbpass,
      this.lgBaseAntiga,
      this.port});

  factory Backend.fromJson(Map<String, dynamic> json) =>
      _$BackendFromJson(json);

  Map<String, dynamic> toJson() => _$BackendToJson(this);
}
