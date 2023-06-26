import 'package:dockerploy/core/util/reflector/reflector.dart';
import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'env_repos.g.dart';

@JsonSerializable()
@Reflector()
@embedded
class EnvRepos {
  String? idFrontend;
  String? idBackend;

  String? idBranchFrontend;
  String? idBranchBackend;

  EnvRepos(
      {this.idBranchFrontend,
      this.idBranchBackend,
      this.idFrontend,
      this.idBackend});

  factory EnvRepos.fromJson(Map<String, dynamic> json) =>
      _$EnvReposFromJson(json);

  Map<String, dynamic> toJson() => _$EnvReposToJson(this);
}
