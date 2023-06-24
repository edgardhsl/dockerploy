import 'package:dockerploy/core/util/reflector/reflector.dart';
import 'package:json_annotation/json_annotation.dart';

part 'github_repo.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
@Reflector()
class GithubRepo {
  GithubRepo(
      {required this.id,
      required this.name,
      required this.fullName,
      required this.url,
      required this.private,
      required this.language,
      this.description,
      this.topics});
  int id;
  String name;
  String fullName;
  String url;
  bool private;
  String? description;
  String? language;
  List<String>? topics;

  factory GithubRepo.fromJson(Map<String, dynamic> json) =>
      _$GithubRepoFromJson(json);

  Map<String, dynamic> toJson() => _$GithubRepoToJson(this);
}
