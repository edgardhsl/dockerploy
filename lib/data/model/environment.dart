import 'dart:math';

import 'package:dockerploy/data/model/env_repos.dart';
import 'package:dockerploy/core/util/reflector/reflector.dart';
import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'environment.g.dart';

@JsonSerializable(explicitToJson: true)
@Reflector()
@collection
class Environment {
  final Id? id = Isar.autoIncrement;
  final String name;
  final String? protocol;
  final String? apiroot;
  final String? host;
  final String? encryptType;
  final String? saltMD5;
  final int frontendPort = Random().nextInt(1999) + 1000;
  final int backendPort = Random().nextInt(1999) + 1000;
  final String? context;

  final EnvRepos repositories;

  Environment(
      {required this.name,
      this.protocol,
      this.apiroot,
      this.host,
      this.encryptType,
      this.context,
      required this.repositories,
      this.saltMD5});

  Environment copyWith(
      {String? name,
      String? protocol,
      String? apiroot,
      String? host,
      String? encryptType,
      String? saltMD5,
      int? port,
      int? randomPort,
      String? context,
      EnvRepos? repositories}) {
    return Environment(
        name: name ?? this.name,
        protocol: protocol ?? this.protocol,
        apiroot: apiroot ?? this.apiroot,
        host: host ?? this.host,
        encryptType: encryptType ?? this.encryptType,
        saltMD5: saltMD5 ?? this.saltMD5,
        context: context ?? this.context,
        repositories: repositories ?? this.repositories);
  }

  String getFrontEndUrl() {
    return "$protocol://$host:$frontendPort";
  }

  String getBackEndUrl() {
    return "$protocol://$host:$backendPort/$context";
  }

  factory Environment.fromJson(Map<String, dynamic> json) =>
      _$EnvironmentFromJson(json);

  Map<String, dynamic> toJson() => _$EnvironmentToJson(this);
}
