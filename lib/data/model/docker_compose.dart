import 'package:dockerploy/core/util/reflector/reflector.dart';
import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

import 'package:dockerploy/core/serializator/json_serializable/docker_compose.serializator.dart';

part 'docker_compose.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
@Reflector()
@embedded
class DockerCompose {
  String version;
  @ignore
  Service? services;

  DockerCompose({this.services, this.version = "3"});

  factory DockerCompose.fromJson(Map<String, dynamic> json) =>
      _$DockerComposeFromJson(json);

  Map<String, dynamic> toJson() => _$DockerComposeToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
@Reflector()
class Service {
  ServiceProps frontend;
  ServiceProps backend;

  Service({required this.frontend, required this.backend});

  factory Service.fromJson(Map<String, dynamic> json) =>
      _$ServiceFromJson(json);

  Map<String, dynamic> toJson() => _$ServiceToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
@Reflector()
class ServiceProps {
  String? containerId;
  String? image;
  Build? build;

  List<Map<String, String>>? volumes;

  List<Map<String, String>>? ports;

  List<Map<String, String>>? environments;

  ServiceProps({
    this.image,
    this.build,
    this.volumes,
    this.ports,
    this.environments,
  });

  factory ServiceProps.fromJson(Map<String, dynamic> json) =>
      _$ServicePropsFromJson(json);

  Map<String, dynamic> toJson() => _$ServicePropsToJson(this);
}

@JsonSerializable(explicitToJson: true, includeIfNull: false)
@Reflector()
class Build {
  String context;

  @JsonKey(
    toJson: DockerComposeSerializator.equalColonKeyValuePair,
  )
  List<Map<String, String>> args;

  Build({required this.context, required this.args});

  factory Build.fromJson(Map<String, dynamic> json) => _$BuildFromJson(json);

  Map<String, dynamic> toJson() => _$BuildToJson(this);
}
