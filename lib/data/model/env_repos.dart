import 'package:dockerploy/core/util/reflector/reflector.dart';
import 'package:isar/isar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'env_repos.g.dart';

@JsonSerializable()
@Reflector()
@embedded
class EnvRepos {
  String? idFrontRepository;
  String? idFrontBranch;

  String? idBackRepository;
  String? idBackBranch;

  EnvRepos(
      {this.idBackBranch,
      this.idBackRepository,
      this.idFrontBranch,
      this.idFrontRepository});

  factory EnvRepos.fromJson(Map<String, dynamic> json) =>
      _$EnvReposFromJson(json);

  Map<String, dynamic> toJson() => _$EnvReposToJson(this);
}
