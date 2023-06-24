// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'github_repo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GithubRepo _$GithubRepoFromJson(Map<String, dynamic> json) => GithubRepo(
      id: json['id'] as int,
      name: json['name'] as String,
      fullName: json['full_name'] as String,
      url: json['url'] as String,
      private: json['private'] as bool,
      language: json['language'] as String?,
      description: json['description'] as String?,
      topics:
          (json['topics'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$GithubRepoToJson(GithubRepo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'full_name': instance.fullName,
      'url': instance.url,
      'private': instance.private,
      'description': instance.description,
      'language': instance.language,
      'topics': instance.topics,
    };
